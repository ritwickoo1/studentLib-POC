/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;



public final class Database {
    Connection conn = null;
    Statement stmt = null;
    ResultSet res = null;
    private final String db_url = "jdbc:mysql://localhost:3306/";
    private final String user = "root";
    private final String pass = "";
    public Database() throws SQLException{
        try {
            createDb();
            createTable();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            if(conn!=null) conn.close();
            if(stmt!=null) stmt.close();
        }
        
    }

    private void createDb() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(db_url, user, pass);
        stmt = conn.createStatement();
        String query = "CREATE DATABASE IF NOT EXISTS INFOR_LIB ";
        stmt.execute(query);
        System.out.println("Database Successfully Created");
    }

    private void createTable() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(db_url+"INFOR_LIB", user, pass);
        stmt = conn.createStatement();
        String query = "CREATE TABLE if not exists USER "
                    + " ( ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,FNAME VARCHAR(20) NOT NULL, "
                    + " LNAME VARCHAR(20) NOT NULL, EMAIL VARCHAR(30) NOT NULL,"
                    + " PASSWORD VARCHAR(20) NOT NULL )";
        stmt.executeUpdate(query);
        query = "CREATE TABLE IF NOT EXISTS ISSUEBOOK "
                + " ( ID INT NOT NULL AUTO_INCREMENT,BNO VARCHAR(20) NOT NULL,"
                + " BNAME VARCHAR(50) NOT NULL , BCAT VARCHAR(20), EMAIL VARCHAR(50) NOT NULL, "
                + " PRIMARY KEY(ID,BNO))";
        stmt.executeUpdate(query);
        query = "Create table if not exists CONTACT_US"
                + "(ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(20), EMAIL VARCHAR(50), FIND_US VARCHAR(20), DROP_US VARCHAR(50))";
        stmt = conn.createStatement();
        stmt.execute(query);
        System.out.println("Table Created");
           
    }

    void createUser(UserSignUp obj) throws ClassNotFoundException, SQLException {
        
        conn = DriverManager.getConnection(db_url+"INFOR_LIB", user, pass);
        String query = "INSERT INTO USER (FNAME,LNAME,EMAIL,PASSWORD)"
                        +" VALUES(?,?,?,?)";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, obj.getFname());
        st.setString(2, obj.getLname());
        st.setString(3, obj.getEmail());
        st.setString(4, obj.getPass());
        st.executeUpdate();

    }

   ResultSet check(String email) throws SQLException {
        conn = DriverManager.getConnection(db_url+"INFOR_LIB", user, pass);
        String query = "Select * from user where email = '"+email+"'";
        PreparedStatement st = conn.prepareStatement(query);
        res = st.executeQuery();
       
        return res;
        
    }

    void issueBook(BookDetail obj) throws SQLException {
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "INSERT INTO ISSUEBOOK (bno,bname,bcat,email) values (?,?,?,?)";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, obj.getBno());
        st.setString(2, obj.getBname());
        st.setString(3, obj.getBcat());
        st.setString(4, obj.getEmail());
        st.executeUpdate();
        
    }

    ResultSet getMaxId() throws SQLException {
         conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
         String query = "Select Max(id) from  issuebook";
         stmt = conn.createStatement();
         res = stmt.executeQuery(query);
         return res;
    }
    
    public ResultSet  getIssuedBook() throws SQLException{
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "SELECT * FROM issuebook ";
        PreparedStatement st = conn.prepareStatement(query);
        res = st.executeQuery();
        return res;
    }
    
    public ResultSet  getIssuedBook(String email) throws SQLException{
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "SELECT * FROM issuebook WHERE email = ?";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, email);
        res = st.executeQuery();
        return res;
    }
    void deleteBook(String bno) throws SQLException {
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "DELETE  FROM ISSUEBOOK WHERE BNO = ?";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, bno);
        st.executeUpdate();
    }
    void returnBook(String bno) throws SQLException {
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "DELETE  FROM ISSUEBOOK WHERE BNO = ?";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, bno);
        st.executeUpdate();
    }

    void sendData(String name, String email, String findus, String dropus) throws SQLException {
         conn = DriverManager.getConnection(db_url + "INFOR_LIB",user,pass);
         String query = " INSERT INTO CONTACT_US (name,email,find_us,drop_us) values (?,?,?,?) ";
         PreparedStatement pst = conn.prepareStatement(query);
         pst.setString(1, name);
         pst.setString(2, email);
         pst.setString(3, findus);
         pst.setString(4, dropus);
         pst.executeUpdate();
    }

    ResultSet getVerify(String email, String password) throws SQLException {
        conn = DriverManager.getConnection(db_url + "INFOR_LIB", user, pass);
        String query = " SELECT * FROM ADMIN ";
        stmt = conn.createStatement();
        res = stmt.executeQuery(query);
        return res;
    }
    public ResultSet  getUsers() throws SQLException{
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "SELECT * FROM user";
        PreparedStatement st = conn.prepareStatement(query);
        res = st.executeQuery();
        return res;
    }

    void deleteUser(String email) throws SQLException {
        conn = DriverManager.getConnection(db_url+"INFOR_LIB",user,pass);
        String query = "DELETE  FROM user WHERE email = ?";
        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, email);
        st.executeUpdate();
        
    }

   
}
