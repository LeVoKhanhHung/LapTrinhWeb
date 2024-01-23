package dao;

import db.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static ProductDao instance;

    public ProductDao() {
    }

    public static ProductDao getInstance(){
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }
    public String getNameProduct(){
        Connection connection = ConnectDB.getInstance().getConnection();
        PreparedStatement preparedStatement;
        String name="";
        try {
            preparedStatement = connection.prepareStatement("SELECT products.productName FROM products WHERE id =1 ");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                name = rs.getString(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return name;
    }

//    public List<Product> getProductsPagination(int id_category, int start, int total) {
//        List<Product> products = new ArrayList<>();
//        Connection connection = DBConnect.getInstance().getConnection();
//        PreparedStatement preparedStatement;
//        try {
//            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE id_category = ? AND active = 1 LIMIT ?, ?");
//            preparedStatement.setInt(1, id_category); // Thay id_category vào tham số đầu tiên
//            preparedStatement.setInt(2, start); // Thay start vào tham số thứ hai
//            preparedStatement.setInt(3, total); // Thay total vào tham số thứ ba
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                List<String> imgUrls = new ArrayList<>();
//                Product product = new Product();
//                product.setId(rs.getInt("id"));
//                product.setTitle(rs.getString("title"));
//                product.setDescription(rs.getString("description"));
//                product.setPrice(rs.getInt("price"));
//                product.setDiscount(rs.getDouble("discount"));
//                product.setQuantity(rs.getInt("quantity"));
//                product.setSold(rs.getInt("sold"));
//                product.setActive(rs.getInt("active"));
//                product.setDateCreate(rs.getTimestamp("date_create"));
//                product.setCategoryId(rs.getInt("id_category"));
//                List<Img> imgs = ImgService.getInstance().getImgUrlByProductId(rs.getInt("id"));
//                for (Img img : imgs) {
//                    imgUrls.add(img.getImgUrl());
//                }
//                product.setImgUrl(imgUrls);
//                products.add(product);
//            }
//        }catch (SQLException e) {
//            throw new RuntimeException();
//        }
//        return products;
//    }

    public static void main(String[] args) {
        ProductDao productDao= new ProductDao();
        System.out.println(productDao.getNameProduct());
    }
}

