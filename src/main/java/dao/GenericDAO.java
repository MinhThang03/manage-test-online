package dao;

import java.util.List;

public interface GenericDAO<T> {
    boolean insert (T obj);
    T  update (T obj);
    boolean delete (T obj);
    List<T> findAll();
    T findById(Integer Id);
}
