package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Product implements Serializable{
    private int id;
    private String productName;
    private String productDescription;
    private int price;

    private int quantity;
    private int idCategory;
    private String supplierName;
    private int isActive;
    private Timestamp saleDate;
    private int idRating;

    private int  salePrice;
    private int salePercent;

public Product(){

}

    public Product(int id, String productName, String productDescription, int price, int quantity, int idCategory, String supplierName, int isActive, Timestamp saleDate, int idRating, int salePrice, int salePercent) {
        this.id = id;
        this.productName = productName;
        this.productDescription = productDescription;
        this.price = price;
        this.quantity = quantity;
        this.idCategory = idCategory;
        this.supplierName = supplierName;
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

    public String getSupplierName() {
        return supplierName;
    }

    public void setsupplierName(String supplierName) {
        this.supplierName = supplierName;
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

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productName='" + productName + '\'' +
                ", productDescription='" + productDescription + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", idCategory=" + idCategory +
                ", supplierName='" + supplierName + '\'' +
                ", isActive=" + isActive +
                ", saleDate=" + saleDate +
                ", idRating=" + idRating +
                ", salePrice=" + salePrice +
                ", salePercent=" + salePercent +
                "}\n";
    }
}
