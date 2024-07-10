package uz.pdp.online_store.servlet.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.online_store.service.product.CategoryService;

import java.io.IOException;

@WebServlet(name = "createCategory" ,urlPatterns = "/admin/createCategory")
public class CreateCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/admin/createCategory.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryName = req.getParameter("categoryName");
        CategoryService service = new CategoryService();
        service.createCategory(categoryName);
        resp.sendRedirect("/views/admin/admin.jsp");
    }
}