package controller.admin;

import service.IAccountService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeAdmin", value = "/admin-home")
public class HomeAdmin extends HttpServlet {
    @Inject
    private IAccountService accountService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer totalStudents = accountService.countTotalStudent();
        request.setAttribute("totalStudents", totalStudents);
        RequestDispatcher rd = request.getRequestDispatcher("/admin/stats_admin.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
