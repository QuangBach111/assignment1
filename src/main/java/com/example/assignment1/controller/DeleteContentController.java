package com.example.assignment1.controller;

import com.example.assignment1.dao.ContentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="DeleteContentController", urlPatterns = {"/delete"})
public class DeleteContentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //b1: get cid from jsp
        int id = Integer.parseInt(req.getParameter("cid"));
        //b2: pass cid to dao
        ContentDAO dao = new ContentDAO();
        dao.deleteContent(id);
        resp.sendRedirect("viewcontent");
    }
}
