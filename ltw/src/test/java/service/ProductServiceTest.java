package service;

import model.Product;

import java.util.List;

//import static org.junit.Assert.*;

public class ProductServiceTest {
    public static void main(String[] args) {
        List<Product> all = ProductService.getAll();
        System.out.println(all);

    }
}