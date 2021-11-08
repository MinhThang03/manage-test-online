package dao.impl;

import dao.IQuestionDAO;
import entity.Question;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;
import paging.Pageble;
import util.HibernateUtil;

import java.util.List;


public class QuestionDAO extends AbstractDAO<Question> implements IQuestionDAO {
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

    @Override
    public List<Question> findAll(Pageble pageble, Integer examID) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Question> result = null;
        StringBuilder sql = new StringBuilder("Select u FROM Question u WHERE u.exam.id = :id");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY u."+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+"");
        }

        try {

            Query<Question> query = session.createQuery(sql.toString());
            query.setParameter("id", examID);
            if (pageble.getOffset() != null && pageble.getLimit() != null) {
                query.setFirstResult(pageble.getOffset());
                query.setMaxResults(pageble.getLimit());
            }

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

    @Override
    public int getTotalItem(Integer id) {
        List<Question> lists = this.findAllQuestionsByExamID(id);
        return lists.size();
    }
}
