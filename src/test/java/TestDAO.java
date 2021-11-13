import dao.IRoleUserDAO;
import dto.RoleUserDTO;

import entity.Account;
import entity.Question;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.junit.Test;
import paging.Pageble;
import service.IAccountService;
import service.IRoleUserService;
import util.HibernateUtil;

import javax.inject.Inject;
import java.util.List;


public class TestDAO {
    @Inject
    private IRoleUserDAO roleUserDAO;

    @Inject
    private  IRoleUserService roleUserService;

    @Inject
    private IAccountService accountService;

    @Test
    public List<Question> findAll(Pageble pageble) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Question> result = null;
        StringBuilder sql = new StringBuilder("FROM Question ");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+"");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
        }
        try {
            Query<Question> query = session.createQuery(sql.toString());
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

    public static void main(String[] args) {

    }
}
