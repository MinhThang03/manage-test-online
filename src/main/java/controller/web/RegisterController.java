package controller.web;

import dto.AccountDTO;
import entity.Account;
import service.IAccountService;
import util.FormUtil;
import util.MessageUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RegisterController", value = "/view-register")
public class RegisterController extends HttpServlet {
    @Inject
    private IAccountService accountService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("home")){
            RequestDispatcher rd = request.getRequestDispatcher("/home/home.jsp");
            rd.forward(request, response);
        }
        else {
            MessageUtil.showMessage(request);
            RequestDispatcher rd = request.getRequestDispatcher("/home/pages-register.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountDTO accountDTO = FormUtil.toModel(AccountDTO.class, request);
        if (accountService.registerAccount(accountDTO)){
            response.sendRedirect(request.getContextPath()+"/view-register?message=insert_success");
        }
        else{
            response.sendRedirect(request.getContextPath()+"/view-register?message=error_system");
        }
    }
}
