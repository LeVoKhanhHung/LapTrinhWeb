package controller;

import model.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCardController", value = "/add-cart")
public class AddCardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        int quantity = 0;
        try {

             id = Integer.parseInt(request.getParameter("id"));
             quantity = Integer.parseInt(request.getParameter("quantity"));
        }catch (NumberFormatException e){

        }
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart==null){
            cart = new Cart();
            session.setAttribute("cart",cart);
        }

        if(quantity<=0) quantity =1;
        cart.add(id,quantity);
        session.setAttribute("cart",cart);
            response.sendRedirect("product-List");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}