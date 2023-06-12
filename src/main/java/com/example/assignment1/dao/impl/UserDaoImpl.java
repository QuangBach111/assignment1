package com.example.assignment1.dao.impl;

import com.example.assignment1.configuration.Database;
import com.example.assignment1.dao.UserDao;
import com.example.assignment1.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDaoImpl implements UserDao {
    public static Database database = new Database();
    @Override
    public Boolean checkLoginByUsername(String username, String password) {
        Boolean result = false;
        try{
            Integer id = -1;
            String query = "SELECT id FROM users WHERE user_name = '"+ username +"' AND password = '"+ password +"'";
            Statement statement = database.getConn().createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                id = resultSet.getInt("id") <= 0 ? 0 : resultSet.getInt(1);
            }
            return id > 0 ;
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return result;
    }

    @Override
    public Boolean checkLoginByEmail(String email, String password) {
        Boolean result = false;
        try{
            Integer id = -1;
            String query = "SELECT id FROM users WHERE email = '"+ email +"' AND password = '"+ password +"'";
           Statement statement = database.getConn().createStatement();
           ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                id = resultSet.getInt("id") <= 0 ? 0 : resultSet.getInt(1);
            }
            return id > 0 ;
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return result;
    }

    @Override
    public Boolean checkRegisterUsername(String username) {
        Boolean result = false;
        try{
            Integer id = -1;
            String query = "SELECT id FROM users WHERE user_name = '"+ username +"'";
           Statement statement = database.getConn().createStatement();
           ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                id = resultSet.getInt("id") <= 0 ? 0 : resultSet.getInt(1);
            }
            return id > 0 ;
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return result;
    }

    @Override
    public Boolean checkRegisterEmail(String email) {
        Boolean result = false;
        try{
            Integer id = -1;
            String query = "SELECT id FROM users WHERE email = '"+ email +"'";
            Statement statement = database.getConn().createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                id = resultSet.getInt("id") <= 0 ? 0 : resultSet.getInt(1);
            }
            return id > 0 ;
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return result;
    }

    @Override
    public User getUserByUsername(String username) {
        User user = null;
        try{
            String query = "SELECT id, user_name, email FROM users WHERE user_name = '"+ username +"'";
            Statement statement = database.getConn().createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
               String userName = resultSet.getString("user_name");
               String email = resultSet.getString("email");
               user = new User(id, userName, email);
            }
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = null;
        try {
            String query = "SELECT id, user_name, email FROM users WHERE email = '" + email + "'";
            Statement statement = database.getConn().createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("user_name");
                String userEmail = resultSet.getString("email");
                user = new User( id,username,userEmail);
            }
            statement.close();
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return user;
    }

    @Override
    public Boolean saveUser(User user) {
        try {
            String query = "INSERT INTO users (user_name, email, password) VALUES ('" + user.getUsername() + "', '" + user.getEmail() + "', '" + user.getPassword() + "')";
            Statement statement = database.getConn().createStatement();
            int numRowsAffected = statement.executeUpdate(query);
            statement.close();
            return numRowsAffected > 0;
        } catch (SQLException e) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }
}
