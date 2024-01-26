package controller;

import dao.ProductDao;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = "/add-product")
//@MultipartConfig(
//        fileSizeThreshold = 1024 * 1024 ,
//        maxFileSize = 1024 * 1024 * 10 ,
//        maxRequestSize = 1024 *1024 *100
//)
//public class UploadController extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    Part filPart =request.getPart("up");
//
//    String fileName =filPart.getSubmittedFileName();
//    ServletContext servletContext = getServletContext();
//    File root =new File( servletContext.getRealPath("/")+"data/");
//
//
//        if(!root.exists()) root.mkdirs();
//        System.out.println(root.getAbsolutePath());
//        for (Part part : request.getParts()) {
//            part.write( root.getAbsolutePath()+"/"+fileName);
//
//        }
//        response.getWriter().print("the file uploaded sucessfully");
//    }
//}
public class UploadController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Không cần kiểm tra doPost nữa vì đã xử lý ở phương thức doGet

        // Lấy giá trị từ form
        String id = request.getParameter("id");
        String productName = request.getParameter("productName");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String productDescription = request.getParameter("productDescription");
        String idCategory = request.getParameter("idCategory");
        String supplierName= request.getParameter("supplierName");
        String idRating= request.getParameter("idRating");
        String salePercent = request.getParameter("salePercent");
        String salePrice = request.getParameter("salePrice");
        String saleDate = request.getParameter("saleDate");
        String isActive = request.getParameter("isActive");
//        String store = request.getParameter("store");
//        String idSup = request.getParameter("idsup");
//        String img = request.getParameter("img");
//        String imgSup = request.getParameter("imgsup");

        // Tạo đối tượng Product và set giá trị
       Product product = new Product();
        product.setProductName(productName);
        product.setPrice(Integer.parseInt(price));
        product.setIdCategory(Integer.parseInt(idCategory));
        product.setQuantity(Integer.parseInt(quantity));
        product.setSupplierName(supplierName);
        product.setProductDescription(productDescription);
//        product.setStockQuantity(Integer.parseInt(stock));
        product.setIdRating(Integer.parseInt(idRating));
        product.setSalePercent(Integer.parseInt(salePercent));
        product.setSalePrice(Integer.parseInt(salePrice));
        product.setSaleDate(Timestamp.valueOf(saleDate));
//        product.setProductType(type);
//        product.setStorageCondition(store);
//        product.setSupplierId(Integer.parseInt(idSup));
//        product.setImageUrl(img);
//        product.setSupplierImageUrl(imgSup);
        product.setIsActive(Integer.parseInt(isActive));



        // Thêm sản phẩm vào cơ sở dữ liệu
        ProductDao dao = new ProductDao();
        ProductDao.addProduct(product);

        // Chuyển hướng về trang sản phẩm sau khi thêm
        response.sendRedirect("products");
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("add-product.jsp").forward(request, response);
    }
}