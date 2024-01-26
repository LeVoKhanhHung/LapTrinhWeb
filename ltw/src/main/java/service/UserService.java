package service;

import db.JDBiConnector;
import model.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class UserService {


    private static UserService instance;

    public static UserService getInstance() {
        if (instance == null) instance = new UserService();
        return instance;
    }

    public User checkLogin(String username, String password) {
        List<User> users = JDBiConnector.me().get().withHandle(handle -> {
           return handle.createQuery("select * from users where userName=?")
                   .bind(0,username)
                   .mapToBean(User.class).collect(Collectors.toList());
        });
        if (users.size()!=1)return null;
        User u = users.get(0);
        if (username.equals(u.getUsername())&&password.equals(u.getPassword())){
            return u;
        }
        return null;
    }

}
