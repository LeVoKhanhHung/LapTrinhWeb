package model;

import java.sql.Timestamp;
import java.util.List;

public class Product {
    private int id;
    private String productName;
    private String productDescription;
    private int price;

    private int quantity;
    private int idCategory;
    private List<String> supplierCategory;
    private int isActive;
    private Timestamp saleDate;
    private int idRating;

    private int  salePrice;
    private int salePercent;

public Product(){

}

    public Product(int id, String productName, String productDescription, int price, int quantity, int idCategory, List<String> supplierCategory, int isActive, Timestamp saleDate, int idRating, int salePrice, int salePercent) {
        this.id = id;
        this.productName = productName;
        this.productDescription = productDescription;
        this.price = price;
        this.quantity = quantity;
        this.idCategory = idCategory;
        this.supplierCategory = supplierCategory;
        this.isActive = isActive;
        this.saleDate = saleDate;
        this.idRating = idRating;
        this.salePrice = salePrice;
        this.salePercent = salePercent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public List<String> getSupplierCategory() {
        return supplierCategory;
    }

    public void setSupplierCategory(List<String> supplierCategory) {
        this.supplierCategory = supplierCategory;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public Timestamp getSaleDate() {
        return saleDate;
    }

    public void setSaleDate(Timestamp saleDate) {
        this.saleDate = saleDate;
    }

    public int getIdRating() {
        return idRating;
    }

    public void setIdRating(int idRating) {
        this.idRating = idRating;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(int salePercent) {
        this.salePercent = salePercent;
    }
}
