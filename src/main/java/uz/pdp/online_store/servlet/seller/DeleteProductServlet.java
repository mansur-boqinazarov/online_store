package uz.pdp.online_store.servlet.seller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.online_store.service.product.ProductService;

import java.io.IOException;

@WebServlet(name = "deleteProduct", urlPatterns = "/admin/deleteproduct")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        ProductService service = new ProductService();
        service.deleteProduct(productId);
        resp.sendRedirect("/seller/manage");

    }
}
