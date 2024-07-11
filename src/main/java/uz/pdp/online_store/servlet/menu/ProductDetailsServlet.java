package uz.pdp.online_store.servlet.menu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.service.product.ProductService;
import java.io.IOException;

@WebServlet(name = "ProductDetailsServlet", urlPatterns = {"/menu/productDetails"})
public class ProductDetailsServlet extends HttpServlet {
    private static final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");
        Product product = productService.getProduct(productId);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/views/menu/productdetails.jsp").forward(request, response);
    }
}
