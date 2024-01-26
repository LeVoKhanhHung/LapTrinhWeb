package dao;

import db.JDBiConnector;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;

public class ProductDao {
    private static final Connection connection = null;

    public ProductDao() {
        // Không cần thiết lập kết nối ở đây, sử dụng getConnection khi cần
    }




//    private Product mapResultSetToProduct(ResultSet resultSet) {
//        return null;
//    }

    public static void addProduct(Product product) {
        String query = "INSERT INTO products(id, productName, price, quantity, productDescription, idCategory, supplierName, idRating, salePercent, salePrice, saleDate, isActive)";
//        JDBiConnector DBCPDataSource = null;
        try (PreparedStatement preparedStatement = JDBiConnector.preparedStatement(query)) {

            Objects.requireNonNull(preparedStatement).setInt(1, Integer.parseInt(String.valueOf(product.getId())));
            preparedStatement.setString(2, String.valueOf(product.getId()));
            preparedStatement.setString(3, product.getProductName());
            preparedStatement.setInt(4, product.getIdCategory());
            preparedStatement.setDouble(5, product.getPrice());
            preparedStatement.setInt(6, product.getQuantity());
            preparedStatement.setString(7, product.getProductDescription());
            preparedStatement.setString(8,product.getSupplierName());
            preparedStatement.setInt(9, product.getIdRating());
            preparedStatement.setString(10, String.valueOf(product.getSalePercent()));
            preparedStatement.setString(11, String.valueOf(product.getSalePrice()));
            preparedStatement.setString(12, String.valueOf(product.getSaleDate()));
            preparedStatement.setString(13, String.valueOf(product.getIsActive()));
//            preparedStatement.setString(14, product.getStorageCondition());
//            preparedStatement.setString(15, product.getProductType());
//            preparedStatement.setInt(16, product.getSupplierId());
//            preparedStatement.setString(17, product.getImageUrl());
//            preparedStatement.setInt(18, product.isActive() ? 1 : 0);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý ngoại lệ theo ý của bạn
        }
    }

//    public static void main(String[] args) {
//
//    }
//    public ProductDao() {
//        // Khởi tạo kết nối đến cơ sở dữ liệu
//        try {
//            connection = DriverManager.getConnection("jdbc:sqlite:products.db");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
public static void main(String[] args) {
    System.out.println();
}

}
