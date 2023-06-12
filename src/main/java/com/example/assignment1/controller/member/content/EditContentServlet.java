package com.example.assignment1.controller.member.content;

import com.example.assignment1.dao.ContentDao;
import com.example.assignment1.model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class EditContentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get id from req
        //Truy xuất tham số ID từ yêu cầu
        int id = Integer.parseInt(req.getParameter("id"));

        //get content from database by id
        ContentDao contentDao = new ContentDao();
        Content content = contentDao.getContentById(id);

        //set content to req
        //Đặt nội dung thành thuộc tính yêu cầu
        req.setAttribute("content", content);

        // forward to content-edit.jsp
        req.getRequestDispatcher("/view/member/content-edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get param from req
        //Trong phương thức doPost, truy xuất các tham số từ yêu cầu và tạo một đối tượng nội dung
        String title = req.getParameter("title");
        String brief = req.getParameter("brief");
        String contentText = req.getParameter("content");

        // create content object
        Content content = new Content();
        content.setTitle(title);
        content.setBrief(brief);
        content.setContent(contentText);

        // stored to database
        //Lưu trữ đối tượng nội dung trong cơ sở dữ liệu
        boolean success = addContentToDatabase(content);

        //Dựa trên trạng thái thành công, đặt thuộc tính phù hợp trong yêu cầu
        if (success) {
            req.setAttribute("messageSuccess", "Edit success");
            // chuyển hướng đến trang thành công
            resp.sendRedirect("success.jsp");
        } else {
            req.setAttribute("messageError", "Edit fail!");
            // chuyển hướng đến trang lỗi
            resp.sendRedirect("error.jsp");
        }
    }

    private boolean addContentToDatabase(Content content) {
        return false;
    }

}
