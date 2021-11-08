package service;

import dto.ExamDTO;
import dto.QuestionDTO;
import entity.Exam;
import entity.Question;
import paging.Pageble;

import java.util.List;

public interface IQuestionService {
    boolean insertQuestion(QuestionDTO question);
    Question updateQuestion(QuestionDTO question);
    boolean deleteQuestion(QuestionDTO question);
    QuestionDTO findById(Integer id);
    List<Question> getListQuestion();
    public String importExcelXLSX(String addressFile, ExamDTO examDTO);
    List<Question> getListQuestionByExamId(int examId);
    List<QuestionDTO> findAll(Pageble pageble, Integer examID);
    int getTotalItem(Integer examid);
}
