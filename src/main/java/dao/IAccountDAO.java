package dao;

import entity.Account;

public interface IAccountDAO extends GenericDAO<Account> {
    public Account findByUsernamePassword(String username, String password);
    public Account findByEmail(String email);
    public Integer countTotalStudent();
}
