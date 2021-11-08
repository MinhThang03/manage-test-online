package controller.web;

import dto.QuestionDTO;
import entity.Question;
import paging.PageRequest;
import paging.Pageble;
import service.IQuestionService;
import sort.Sorter;
import util.FormUtil;
import util.MessageUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewQuesionController", value = "/user-view-question")
public class ViewQuesionController extends HttpServlet {
    @Inject
    private IQuestionService questionService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionDTO questionDTO = FormUtil.toModel(QuestionDTO.class, request);
        String view = "";

        Pageble pageble = new PageRequest(questionDTO.getPage(), questionDTO.getMaxPageItem(),
                new Sorter(questionDTO.getSortName(), questionDTO.getSortBy()));
        questionDTO.setListResult(questionService.findAll(pageble, questionDTO.getExamID()));
        questionDTO.setTotalItem(questionService.getTotalItem(questionDTO.getExamID()));
        questionDTO.setTotalPage((int) Math.ceil((double) questionDTO.getTotalItem() / questionDTO.getMaxPageItem()));

        MessageUtil.showMessage(request);
        request.setAttribute("question", questionDTO);
        RequestDispatcher rd = request.getRequestDispatcher("/user/practise.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
