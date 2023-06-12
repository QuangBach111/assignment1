package com.example.assignment1.util;

import java.sql.*;

public class JDBCUtil {
    private static Connection conn;
    private static final String DB_DRIVER = Constants.DB_DRIVER;
    private static final String DB_URL = Constants.DB_URL;
    private static final String DB_USER = Constants.DB_USER;
    private static final String DB_PASS = Constants.DB_PASS;

    public static Connection getConn() {

        try {
            Class.forName(DB_DRIVER);
            System.out.println("Connecting...");

            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            System.out.println("Connect successes!");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection connection, Statement statement, ResultSet resultSet) {
        try {
            if (connection != null) {
                connection.close();
            }

            if (statement != null) {
                statement.close();
            }

            if (resultSet != null) {
                resultSet.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void close(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
        try {
            if (connection != null) {
                connection.close();
            }

            if (preparedStatement != null) {
                preparedStatement.close();
            }

            if (resultSet != null) {
                resultSet.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Connection connection = JDBCUtil.getConn();
    }
}
