package controller.web;

import dto.AccountDTO;
import dto.QuestionDTO;
import dto.ScoreDTO;
import entity.Question;
import paging.PageRequest;
import paging.Pageble;
import service.IExamService;
import service.IPreviewService;
import service.IQuestionService;
import service.IScoreService;
import sort.Sorter;
import util.FormUtil;
import util.MessageUtil;
import util.SessionUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ViewQuesionController", value = "/user-view-question")
public class ViewQuesionController extends HttpServlet {
    @Inject
    private IQuestionService questionService;

    @Inject
    private IScoreService iScoreService;

    @Inject
    private IPreviewService iPreviewService;

    @Inject
    private IExamService iExamService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionUtil.getInstance().getValue(request,"LISTQUESTION") != null) {
            SessionUtil.getInstance().removeValue(request, "LISTQUESTION");
            SessionUtil.getInstance().removeValue(request, "LISTCURRENTQUESTION");
        }
        QuestionDTO questionDTO = FormUtil.toModel(QuestionDTO.class, request);
        Pageble pageble = new PageRequest(questionDTO.getPage(), questionDTO.getMaxPageItem(),
                new Sorter(questionDTO.getSortName(), questionDTO.getSortBy()));

        List<QuestionDTO> questionDTOCurrentList = questionService.findAll(pageble, questionDTO.getExamID());
        questionDTO.setListResult(questionDTOCurrentList);
        questionDTO.setTotalItem(questionService.getTotalItem(questionDTO.getExamID()));
        questionDTO.setTotalPage((int) Math.ceil((double) questionDTO.getTotalItem() / questionDTO.getMaxPageItem()));

        List<QuestionDTO> questionDTOList = questionService.getListQuestionDTOByExamId(questionDTO.getExamID());
        SessionUtil.getInstance().putValue(request,"LISTQUESTION",questionDTOList);
        SessionUtil.getInstance().putValue(request,"LISTCURRENTQUESTION",questionDTOCurrentList);

        MessageUtil.showMessage(request);
        request.setAttribute("question", questionDTO);
        RequestDispatcher rd = request.getRequestDispatcher("/user/practise.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<QuestionDTO> questionDTOList = (List<QuestionDTO>)SessionUtil.getInstance().getValue(request,"LISTQUESTION");
        List<QuestionDTO> questionDTOOldList = (List<QuestionDTO>)SessionUtil.getInstance().getValue(request,"LISTCURRENTQUESTION");

//        List<String> parameterNames = new ArrayList<String>(request.getParameterMap().keySet());
        questionDTOList = questionService.setListAnswer(questionDTOList,questionDTOOldList,request);
        QuestionDTO questionDTO = FormUtil.toModel(QuestionDTO.class, request);


        if (questionDTO.getType().equals("submit"))
        {
            double score = iScoreService.calculateScore(questionDTOList);
            Integer userId = ((AccountDTO) SessionUtil.getInstance().getValue(request,"USERMODEL")).getId();
            Integer examId = questionDTO.getExamID();

            ScoreDTO scoreDTO = new ScoreDTO();
            scoreDTO.setUserId(userId);
            scoreDTO.setExamId(examId);
            scoreDTO.setExamScore(score);

            if (iScoreService.insertScore(scoreDTO) && iPreviewService.insertListPreviewWithQuestion(questionDTOList,userId))
            {
                Integer courseId = iExamService.getCourseIdByExamId(examId);
                SessionUtil.getInstance().removeValue(request,"LISTQUESTION");
                SessionUtil.getInstance().removeValue(request,"LISTCURRENTQUESTION");
                response.sendRedirect(request.getContextPath()+"/user-exam?courseId="+courseId.toString() );
            }
        }
        else  {
            Pageble pageble = new PageRequest(questionDTO.getPage(), questionDTO.getMaxPageItem(),
                    new Sorter(questionDTO.getSortName(), questionDTO.getSortBy()));

            List<QuestionDTO> questionDTOCurrentList = questionService.findAll(pageble, questionDTO.getExamID());
            questionDTO.setListResult(questionDTOCurrentList);
            questionDTO.setTotalItem(questionService.getTotalItem(questionDTO.getExamID()));
            questionDTO.setTotalPage((int) Math.ceil((double) questionDTO.getTotalItem() / questionDTO.getMaxPageItem()));

            SessionUtil.getInstance().putValue(request,"LISTCURRENTQUESTION",questionDTOCurrentList);
            SessionUtil.getInstance().putValue(request,"LISTQUESTION",questionDTOList);

            request.setAttribute("question", questionDTO);
            RequestDispatcher rd = request.getRequestDispatcher("/user/practise.jsp");
            rd.forward(request, response);
        }

    }
}
