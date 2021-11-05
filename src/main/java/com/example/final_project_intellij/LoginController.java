package com.example.final_project_intellij;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equals("login")) {
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            if (email.equals("user@gmail.com") &&
                    password.equals("123")) {
                resp.setStatus(resp.SC_MOVED_TEMPORARILY);
                resp.setHeader("Location", "/user/MyCourse.jsp");
            }
            else if (email.equals("admin@gmail.com") &&
                    password.equals("123")) {
                resp.setStatus(resp.SC_MOVED_TEMPORARILY);
                resp.setHeader("Location", "/admin/ManagerFile.jsp");
            }
        }
    }
}
