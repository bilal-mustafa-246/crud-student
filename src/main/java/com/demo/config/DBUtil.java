package com.demo.config;

import java.sql.*;

public class DBUtil {

    private static final String URL = "jdbc:mysql://localhost:3310/studentdb";
    private static final String USERNAgit ME = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(URL, USERNAME, PASSWORD);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}