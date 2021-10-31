import dao.IRoleUserDAO;
import dto.RoleUserDTO;

import org.junit.Test;
import service.IRoleUserService;

import javax.inject.Inject;


public class TestDAO {
    @Inject
    private IRoleUserDAO roleUserDAO;

    @Inject
    private  IRoleUserService roleUserService;

    public void test(){
        RoleUserDTO roleUserDTO = this.roleUserService.findById(2);
        System.out.println(roleUserDTO.getId());
    }

    public static void main(String[] args) {

    }
}
