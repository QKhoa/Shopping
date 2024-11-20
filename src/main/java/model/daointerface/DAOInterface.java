package model.daointerface;

import java.util.ArrayList;

public interface DAOInterface<T> {

    public ArrayList<T> getAll();

    public T getById(String id);


    public void create(T t);

    public T update(T t);

    public void deleteByID(String id);



}
