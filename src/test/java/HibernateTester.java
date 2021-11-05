import entity.Account;
import entity.Course;
import entity.Exam;
import entity.Question;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.junit.Test;
import util.HibernateUtil;

import java.util.List;


public class HibernateTester {
//    @Test
    public static void main(String[] args) {
        /*Session session;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            Query<Question> query=session.createQuery("FROM Question ");
            List<Question> list=query.getResultList();
            list.forEach(c->System.out.println(c.getId()));
            session.close();
            //session.close();
        }
        catch (HibernateException e) {
            System.out.print("Loi"+e.toString());
        }finally {

        }*/
        Session session = HibernateUtil.getSessionFactory().openSession();

        try{
            Query<Question> query = session.createQuery("FROM Question ");
            List<Question> list = query.getResultList();
        }
        catch (Exception e){
            System.out.println("Loi");
        }
        finally {
            session.close();
        }

    }



//    }

    //    ------  HQL
//    public static void main(String[] args) {
//        try {
//            ///////Truy vấn bảng
//            Session session = HibernateUtil.getSessionFactory().openSession();
//
//            Query<Category> query = session.createQuery("FROM Category ");
//            List<Category> cats = query.list();
//
//            cats.forEach(c -> System.out.println(c.getName()));
//  -----------------------------------

    ///// Thêm một đối tượng mới
//            session.getTransaction().begin();
//            Category c = session.get(Category.class, 1);
//            Manufacturer m1 = session.get(Manufacturer.class, 1);
//            Manufacturer m2 = session.get(Manufacturer.class, 2);
//
//            Product p = new Product();
//            p.setName("New Generation Phone 2025");
//            p.setDescription("Next Generation");
//            p.setPrice(new BigDecimal(30));
//            p.setCategory(c);
//
//            Set<Manufacturer> m = new HashSet<>();
//            m.add(m1);
//            m.add(m2);
//
//            p.setManufacturers(m);
//
//            session.save(p);
//            session.getTransaction().commit();


//            ////TRUY VẤN NGƯỢC LẤY DANH SÁCH SẢN PHẨM THUỘC 1 CATEGORY
//            Category c = session.get(Category.class, 1);
//            c.getProducts().forEach(p -> System.out.println(p.getName()));

//            Manufacturer m2 = session.get(Manufacturer.class, 2);
//            m2.getProducts().forEach(p -> System.out.println(p.getName()));
//
//        } catch (HibernateException e) {
//            e.printStackTrace();
//        }
//    }

}
