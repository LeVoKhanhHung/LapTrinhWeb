package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Home", value = "/home")
public class HomeController extends HttpServlet {
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//String productName = String.valueOf(ProductDao.getInstance().getNameProduct());
//        req.setAttribute("name", productName);
//        req.getRequestDispatcher("index.jsp").forward(req,resp);
//    }
//

}
