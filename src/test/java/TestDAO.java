import dao.IRoleUserDAO;
import dto.RoleUserDTO;

import entity.Account;
import org.junit.Test;
import service.IAccountService;
import service.IRoleUserService;

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
    public void test(){
//        List<Account> cats = accountService.findAll();
//        cats.forEach(c -> System.out.println(c.getId()));
    }

    public static void main(String[] args) {

    }
}
