package uz.pdp.online_store.servlet.seller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "create-store", urlPatterns = "/seller/createstore")
public class CreateStoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/seller/create_store.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("shop name ::::::::::::::::::::" + req.getParameter("shopName"));
        System.out.println("shopDescription ::::::::::::::::::::" + req.getParameter("shopDescription"));

        resp.sendRedirect("/views/seller/seller.jsp");
    }
}