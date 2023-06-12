package com.example.assignment1.controller;

import com.example.assignment1.dao.ContentDAO;
import com.example.assignment1.model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="UpdateContentController", urlPatterns = {"/update"})
public class UpdateContentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("cid"));
        ContentDAO dao = new ContentDAO();
        Content c = dao.getContentById(id);
        req.setAttribute("ct", c);
        req.getRequestDispatcher("view/member/content-edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cid = Integer.parseInt(req.getParameter("id"));
        String ctitle = req.getParameter("title");
        String cbrief = req.getParameter("brief");
        String ccreate_date = req.getParameter("create_date");
        String ccontent = req.getParameter("content");

        ContentDAO dao = new ContentDAO();
        dao.updateContent(cid, ctitle, cbrief, ccreate_date, ccontent);
        resp.sendRedirect("viewcontent");
    }
}

