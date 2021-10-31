package service;

import dto.AccountDTO;
import entity.Account;

import java.util.List;

public interface IAccountService {
    boolean insertAccount(AccountDTO user);
    Account updateAccount(AccountDTO user);
    boolean deleteAccount(AccountDTO user);
    AccountDTO findById(Integer id);
    AccountDTO findByUsernamePassword(String username, String password);
    AccountDTO findByEmail(String email);
    boolean registerAccount(AccountDTO account);
    Integer countTotalStudent();

}
