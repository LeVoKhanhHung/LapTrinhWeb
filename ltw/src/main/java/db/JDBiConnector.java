package db;

import com.mysql.cj.jdbc.MysqlDataSource;
import model.Product;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBiConnector {
    private static final JDBiConnector instance = new JDBiConnector();

    private Jdbi jdbi;
    public static JDBiConnector me(){
        return instance;
    }
    private JDBiConnector(){}

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
        List<Product> products = JDBiConnector.me().get().withHandle(handle -> {
            return handle.createQuery("select *from products ").mapToBean(Product.class).collect(Collectors.toList());
        });
        System.out.println(products);
    }
}
