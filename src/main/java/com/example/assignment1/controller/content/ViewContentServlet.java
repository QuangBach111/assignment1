package com.example.assignment1.controller.content;

import com.example.assignment1.model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "/view-content")
public class ViewContentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //get list of content from database
        List<Content> contentList = null;
        // set attribute to req
        req.setAttribute("contentList", contentList);

        //dipatcher forward content-view.jsp
    }
}