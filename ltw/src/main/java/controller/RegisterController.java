package controller;

import service.UserService;
import org.apache.commons.codec.digest.DigestUtils;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet(name = "Register", value = "/register")
public class RegisterController extends HttpServlet {
  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String makeHash;
        Random random = new Random();
        random.nextInt(999999);
        makeHash = DigestUtils.md5Hex("" + random);

        boolean registerCheck = UserService.getInstance().register(username, password, confirmPassword, email, phone, makeHash);

        if (registerCheck) {
            resp.sendRedirect("./verify.jsp");
        } else {
            req.setAttribute("error", "Đăng kí tài khoản thất bại");
            req.getRequestDispatcher("./register.jsp").forward(req, resp);
        }
    }

}