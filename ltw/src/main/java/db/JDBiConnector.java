package db;

import com.mysql.cj.jdbc.MysqlDataSource;
import model.Product;
import model.User;
import org.jdbi.v3.core.Jdbi;

import java.sql.*;
import java.util.List;
import java.util.stream.Collectors;

public class JDBiConnector {
    private static JDBiConnector instance = new JDBiConnector();

    private Jdbi jdbi;
    public static JDBiConnector me(){
        return instance;
    }
    private JDBiConnector(){}

    public static PreparedStatement preparedStatement(String query) {
        return null;
    }

//    public static DatabaseMetaData getInstance() {
//        return (DatabaseMetaData) instance;
//    }
//
//    public static void setInstance(DatabaseMetaData instance) {
//        JDBiConnector.instance =  (JDBiConnector) instance;
//    }


//    public static PreparedStatement preparedStatement(String query) {
//        return null;
//    }



    public Jdbi get(){
        if (jdbi==null ) connect();
        return jdbi;
    }

    private void connect() {
        MysqlDataSource dataSource =new MysqlDataSource();
        System.out.println("jdbc:mysql://"+DbProperties.host+":"+DbProperties.port+"/"+DbProperties.dbname);
        dataSource.setURL("jdbc:mysql://"+DbProperties.host+":"+DbProperties.port+"/"+DbProperties.dbname);
        dataSource.setUser(DbProperties.username);
        dataSource.setPassword(DbProperties.password);
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        jdbi =Jdbi.create(dataSource);
    }

    public static void main(String[] args) {
//        String query = null;
//        List<Product> products = me().get().withHandle(handle -> {
//            return handle.createQuery("select *from products ").mapToBean(Product.class).collect(Collectors.toList());
//        });
//        System.out.println(products);
//    }
        String query = null;
        List<User> users = me().get().withHandle(handle -> {
            return handle.createQuery("select *from users ").mapToBean(User.class).collect(Collectors.toList());
        });
        System.out.println(users);
    }


}
