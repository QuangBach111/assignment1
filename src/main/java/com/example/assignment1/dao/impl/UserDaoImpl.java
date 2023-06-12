package com.example.assignment1.dao.impl;

import com.example.assignment1.configuration.Database;
import com.example.assignment1.dao.UserDao;
import com.example.assignment1.model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
}
