package service.impl;

import converter.AccountConverter;
import dao.IAccountDAO;
import dto.AccountDTO;
import entity.Account;
import service.IAccountService;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

public class AccountService implements IAccountService {

    @Inject
    private IAccountDAO accountDAO;
    private AccountConverter accountConverter = new AccountConverter();

    @Override
    public boolean insertAccount(AccountDTO user) {
        Account account = accountConverter.toEntity(user);
        Account em = account;
        if (accountDAO.insert(account)){
            return true;
        }
        return false;
    }

    @Override
    public Account updateAccount(AccountDTO user) {
        Account account = accountConverter.toEntity(user);
        return  accountDAO.update(account);
    }

    @Override
    public boolean deleteAccount(AccountDTO user) {
        Account account = accountConverter.toEntity(user);
        if(accountDAO.delete(account)){
            return true;
        }
        return false;
    }

    @Override
    public AccountDTO findById(Integer id) {
        return accountConverter.toDto(accountDAO.findById(id));
    }

    @Override
    public AccountDTO findByUsernamePassword(String username, String password) {
        return accountConverter.toDto(accountDAO.findByUsernamePassword(username, password));
    }

    @Override
    public AccountDTO findByEmail(String email) {
        return accountConverter.toDto(accountDAO.findByEmail(email));
    }

    @Override
    public boolean registerAccount(AccountDTO account) {
        if (account.getPass().equals(account.getComfirmPass())){
            account.setRoleid(2);
            account.setActive(true);
            if (insertAccount(account)){
                return true;
            }
            else return false;
        }
        return false;
    }

    @Override
    public Integer countTotalStudent() {
        return accountDAO.countTotalStudent();
    }



}
