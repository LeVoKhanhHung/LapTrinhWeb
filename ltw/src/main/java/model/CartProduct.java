package model;

public class CartProduct {
    Product product ;
    int quantity;

    public CartProduct(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public CartProduct() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public  boolean incri(int proId,int quantity){
    this.quantity+=quantity;
    if (this.product.getQuantity()<this.quantity){
        this.quantity-=quantity;
        return false;
    }
    return true;
    }
    public  boolean dencri(int proId,int quantity){
        this.quantity-=quantity;
        if (this.product.getQuantity()<=0){
            this.quantity+=quantity;
            return false;
        }
        return true;
    }
//    public boolean update{}
}
