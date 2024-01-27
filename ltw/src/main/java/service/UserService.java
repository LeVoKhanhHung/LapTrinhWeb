package service;

import db.ConnectDB;
import db.JDBiConnector;
import mail.SendMail;
import model.User;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class UserService {


    private static UserService instance;

    public static UserService getInstance() {
        if (instance == null) instance = new UserService();
        return instance;
    }

//    public User checkLogin(String username, String password) {
//        List<User> users = JDBiConnector.me().get().withHandle(handle -> {
//            return handle.createQuery("select * from users where username=?")
//                    .bind(0, username)
//                    .mapToBean(User.class).collect(Collectors.toList());
//        });
//        if (users.size() != 1) return null;
//        User u = users.get(0);
//        if (username.equals(u.getUsername()) && password.equals(u.getPassword())) {
//            return u;
//        }
//        return null;
//    }

    public User checkLogin(String username, String password) {
        Connection connection = ConnectDB.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE username=?");
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                if (rs.getInt("status") == 1) {
                    return new User();
                }
                if (!hashPassword(password).equals(rs.getString("password"))) {
                    return null;
                }
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setRole(rs.getString("role"));
                user.setActive(rs.getInt("active"));
                return user;
            }
            return null;
        } catch (SQLException e) {
            return null;
        }
    }


    public boolean register(String username, String password, String confirmPassword, String email, String phone, String hashcode) {
        if (password.equals(confirmPassword)) {
            Connection connection = ConnectDB.getInstance().getConnection();
            PreparedStatement preparedStatement;
            try {
                preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE username=?");
                preparedStatement.setString(1, username);
                ResultSet rs = preparedStatement.executeQuery();
                if (rs.next()) {
                    String usernameCheck = rs.getString("username");
                    if (username.equals(usernameCheck)) {
                        return false;
                    }
                } else {
                    preparedStatement = connection.prepareStatement("INSERT INTO users(username, password, email, phone, hashcode, role, active) VALUES(?,?,?,?,?,?,?)");
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, hashPassword(password));
                    preparedStatement.setString(3, email);
                    preparedStatement.setString(4, phone);
                    preparedStatement.setString(5, hashcode);
                    preparedStatement.setString(6, "USER");
                    preparedStatement.setString(7, "0");
                    int i = preparedStatement.executeUpdate();

                    if (i > 0) {
                        String content = "Click here :: " + "http://localhost:8080/ltw/AccountActive?key1=" + email + "&key2=" + hashcode;

                        SendMail se = new SendMail();
                        se.sendMail(email, content);
                        return true;
                    }
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return false;
    }

    public boolean verifyEmail(String email, String hashcode) {
        Connection connection = ConnectDB.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE email=? AND hashcode=? and active='0'");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, hashcode);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE users set active = '1' WHERE email=? AND hashcode=?");
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, hashcode);
                int i = preparedStatement.executeUpdate();
                if (i == 1)
                    return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public String hashPassword(String password) {
        MessageDigest sha256;
        try {
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
