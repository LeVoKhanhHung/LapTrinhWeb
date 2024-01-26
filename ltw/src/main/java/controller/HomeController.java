package controller;

import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Home", value = "/home")
public class HomeController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String productName = null;
//        try {
//            productName = String.valueOf(ProductDao.getInstance().getNameProduct());
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        req.setAttribute("name", productName);
//        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }


}
