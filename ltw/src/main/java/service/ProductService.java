package service;

//import db.ConnectDB;
import db.JDBiConnector;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductService {


    public static List<Product> getAll(){
       return JDBiConnector.me().get().withHandle(handle -> {
            return handle.createQuery("select *from products ").mapToBean(Product.class).collect(Collectors.toList());
        });
    }

   }
//        Connection connection = ConnectDB.getInstance().getConnection();
//        PreparedStatement preparedStatement;
//        List<Product> products = new ArrayList<>();
//        try {
//            preparedStatement = connection.prepareStatement("SELECT * FROM products  ");
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()){
//                List<String> imgUrls = new ArrayList<>();
//                Product product = new Product();
//                product.setId(rs.getInt("id"));
////                product.setTitle(rs.getString("title"));
////                product.setDescription(rs.getString("description"));
//                product.setPrice(rs.getInt("price"));
////                product.setDiscount(rs.getDouble("discount"));
//                product.setQuantity(rs.getInt("quantity"));
////                product.setSold(rs.getInt("sold"));
////                product.setActive(rs.getInt("active"));
////                product.setDateCreate(rs.getTimestamp("date_create"));
////                product.setCategoryId(rs.getInt("id_category"));
//                List<Img> imgs = ImgService.getInstance().getImgUrlByProductId(rs.getInt("id"));
//                for (Img img : imgs) {
//                    imgUrls.add(img.getImgUrl());
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return name;
//    } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
