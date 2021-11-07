package dao;

import dto.ExamDTO;
import dto.QuestionDTO;
import entity.Exam;
import entity.Question;

import java.util.List;

public interface IQuestionDAO extends GenericDAO<Question> {
    public List<Question> findAllQuestionsByExamID(Integer id);
}