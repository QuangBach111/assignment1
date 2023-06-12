package com.example.assignment1.controller.member.content;

import com.example.assignment1.model.Content;
import com.example.assignment1.util.JDBCUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet (value="/content-add")
public class AddContentServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String messageSuccess = "Create success";
        String messageError = "Create fail!";

        //get parameters from request
        String title = req.getParameter("title");
        String brief = req.getParameter("brief");
        String content = req.getParameter("content");

        //create Content object
        Content newContent = new Content(title, brief, content);

        System.out.println(newContent);
        //add content object to the database
        boolean addSuccess = addContentToDatabase(newContent);

        if (addSuccess) {
            req.setAttribute("messageSuccess", messageSuccess);
        } else {
            req.setAttribute("messageError", messageError);
        }

        // Forward to content-add with message
        req.getRequestDispatcher("/view/member/content-add.jsp").forward(req, resp);
    }

    private boolean addContentToDatabase(Content content) {
        try {
            // Establish a database connection
            Connection connection = JDBCUtil.getConn(); /* Your code to establish a connection */;

            // Prepare the SQL statement
            String sql = "INSERT INTO contents (title, brief, content, user_id) VALUES (?, ?, ?, 1)";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, content.getTitle());
            statement.setString(2, content.getBrief());
            statement.setString(3, content.getContent());

            // Execute the SQL statement
            int rowsAffected = statement.executeUpdate();

            // Close the resources
            statement.close();
            connection.close();

            // Check the result and return true if the content was added successfully
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception, log the error, or display an error message
        }

        // Return false if an error occurred
        return false;
    }


}