package controller.web;

import entity.Question;
import service.IQuestionService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QuestionController", value = "/QuestionController")
public class QuestionController extends HttpServlet {
    @Inject
    private IQuestionService questionService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Integer exam_id=Integer.parseInt(request.getParameter("exam_id"));
            List<Question> list=questionService.getListQuestionByExamID(exam_id);
            request.setAttribute("list",list);
        }catch (Exception exception){
            System.out.println(exception.toString());
        }
        RequestDispatcher rd = request.getRequestDispatcher("/user/practise.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
