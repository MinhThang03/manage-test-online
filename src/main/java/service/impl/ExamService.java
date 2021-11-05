package service.impl;

import converter.ExamConverter;
import dao.IExamDAO;
import dto.AccountDTO;
import dto.ExamDTO;
import entity.Course;
import entity.Exam;
import service.IExamService;

import javax.inject.Inject;
import java.util.List;

public class ExamService implements IExamService {

    @Inject
    private IExamDAO examDAO;
    private ExamConverter examConverter = new ExamConverter();


    @Override
    public boolean insertExam(ExamDTO exam) {
        Exam exm = examConverter.toEntity(exam);
        if(examDAO.insert(exm)){
            return true;
        }
        return false;
    }

    @Override
    public Exam updateExam(ExamDTO exam) {
        Exam exm = examConverter.toEntity(exam);
        return examDAO.update(exm);
    }

    @Override
    public boolean deleteExam(ExamDTO exam) {
        Exam exm = examConverter.toEntity(exam);
        if(examDAO.delete(exm)){
            return true;
        }
        return false;
    }

    @Override
    public ExamDTO findById(Integer id) {
        return examConverter.toDto(examDAO.findById(id));
    }

    @Override
    public List<Exam> getListExam() {
        List<Exam> list = examDAO.findAll();
        return list;
    }
}
