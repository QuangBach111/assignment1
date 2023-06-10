package com.example.assignment1.controller.content;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AddContentServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        String messageSuccess = "Create success";
        String messageError = "Create fail!";
        // get parameter from request

        // create Content object

        // add content object to database

//        if success
        req.setAttribute("messageSuccess", messageSuccess);
//        else
        req.setAttribute("messageError", messageError);

        //forward to content-add with message

    }

}