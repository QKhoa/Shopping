package controller.user;

import controller.daointerface.DAOInterface;

import java.util.ArrayList;

public class UserDAO implements DAOInterface<User> {
    public static UserDAO getInstance() {
        return new UserDAO();
    }

    @Override
    public ArrayList<User> getAll() {
        return null;
    }

    @Override
    public User getById(String id) {
        return null;
    }

    @Override
    public void create(User user) {

    }

    @Override
    public User update(User user) {
        return null;
    }

    @Override
    public void deleteByID(String id) {

    }
}
