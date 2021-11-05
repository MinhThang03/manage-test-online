package dao.impl;

import dao.IQuestionDAO;
import entity.Account;
import entity.Question;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateUtil;

import java.util.*;


public class QuestionDAO extends AbstractDAO<Question> implements IQuestionDAO {
    @Override
    public List<Question> findAll() {
        return super.findAll();
    }

    @Override
    public Question findById(Integer id) {
        return super.findById(id);
    }

    @Override
    public List<Question> findAllQuestionsByExamID(Integer id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Question> result = null;
        try {
            Query<Question> query = session.createQuery("Select u FROM Question u WHERE u.exam.id = :id");
            query.setParameter("id", id);
            if(query.list().size() != 0){
                result=query.getResultList();
            }
        }catch (Exception e) {
            System.out.println(e.toString());
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
        return result;
    }
}
