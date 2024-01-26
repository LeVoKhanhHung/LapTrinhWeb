package model;

import service.ProductService;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    Map< Integer,CartProduct> data =new HashMap<>();

    public boolean add(int proId){
        return add(proId,1);
    }

    public  boolean add(int proId,int quantity){

        if(data.containsKey(proId)){
            return data.get(proId).incri(proId, quantity);
        }
        Product product = ProductService.getById(proId);

        if(product==null)return false;

            data.put(proId,new CartProduct(product,quantity));
            return true;

        }
public  boolean update(int proId,int quantity){
    if (!data.containsKey(proId)){
        return false;
    }
   CartProduct cartProduct = data.get(proId);
    if (quantity<=0 || quantity>cartProduct.product.getQuantity()) return false;
    data.get(proId).setQuantity(quantity);
    return true;
    }


    public void    remove(int proId){
    data.remove(proId);
    }
    public int getTolal(){
        return data.size();
    }
}
