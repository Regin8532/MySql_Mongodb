package com.jdbc_task;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertingDatas {
    public static void main(String[] args) {
        String query="INSERT INTO employee (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";
        try(Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/employee?"+"user=root&password=123456789");){
            PreparedStatement preparedStatement = conn.prepareStatement(query);

            preparedStatement.setInt(1, 101);
            preparedStatement.setString(2, "Jenny");
            preparedStatement.setInt(3, 25);
            preparedStatement.setDouble(4, 10000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 102);
            preparedStatement.setString(2, "Jacky");
            preparedStatement.setInt(3, 30);
            preparedStatement.setDouble(4, 20000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 103);
            preparedStatement.setString(2, "Joe");
            preparedStatement.setInt(3, 20);
            preparedStatement.setDouble(4, 40000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 104);
            preparedStatement.setString(2, "John");
            preparedStatement.setInt(3, 40);
            preparedStatement.setDouble(4, 80000);
            preparedStatement.executeUpdate();

            preparedStatement.setInt(1, 105);
            preparedStatement.setString(2, "Shameer");
            preparedStatement.setInt(3, 25);
            preparedStatement.setDouble(4, 90000);
            preparedStatement.executeUpdate();

            System.out.println("All records inserted successfully!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
