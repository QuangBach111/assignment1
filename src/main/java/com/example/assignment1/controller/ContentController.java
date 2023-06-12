package com.example.assignment1.controller;

import com.example.assignment1.dao.ContentDAO;
import com.example.assignment1.model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name="ContentController", urlPatterns = {"/viewcontent"})
public class ContentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //b1: get data from dao
        ContentDAO dao = new ContentDAO();
        List<Content> list = dao.getAllContent();

        //b2: set data to jsp
        req.setAttribute("listS", list);
        req.getRequestDispatcher("view/member/content-view.jsp").forward(req, resp);
    }
}
