//package db;
//
//import java.sql.*;
//
//public class ConnectDB {
//
//    private Connection conn;
//    private static ConnectDB instance;
//    private static final String DB_URL = "jdbc:mysql://localhost:3306/fresh";
//    private static final String USER = "root";
//    private static final String PASS = "";
//
//    private ConnectDB() {
//
//    }
//
//    public static ConnectDB getInstance() {
//        if(instance == null) {
//            instance = new ConnectDB();
//        }
//        return instance;
//    }
//
//    public Connection getConnection(){
//        try {
//            if(conn == null || conn.isClosed()) {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        } catch (ClassNotFoundException e) {
//            throw new RuntimeException(e);
//        }
//        return conn;
//    }
//
//    public void closeConnection(Connection connection) {
//        try {
//            if (connection != null && !connection.isClosed()) {
//                connection.close();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();  // hoặc log lỗi
//        }
//    }
//
//    public void closeConnection2(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
//        try {
//            if (resultSet != null) {
//                resultSet.close();
//            }
//            if (preparedStatement != null) {
//                preparedStatement.close();
//            }
//            if (connection != null) {
//                connection.close();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public static void main(String[] args) {
//        ConnectDB connectDB = new ConnectDB();
//        System.out.println(connectDB.getConnection());
//    }
//}
