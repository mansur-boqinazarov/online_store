package uz.pdp.online_store.servlet.seller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.online_store.enums.Measurement;

import java.io.IOException;

@WebServlet(name = "add-product", urlPatterns = "/seller/addProduct")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/seller/add_product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productName = req.getParameter("productName");
        String productDescription = req.getParameter("productDescription");
        Integer productPrice = Integer.parseInt(req.getParameter("productPrice"));
        Integer productQuantity = Integer.parseInt(req.getParameter("productQuantity"));
        Measurement measurement;
        switch (req.getParameter("measurement")){
            case "KILOGRAM":
                 measurement = Measurement.KILOGRAM;
                break;
            case "LITER":
                measurement = Measurement.LITER;
                break;
            case "PIECE":
                 measurement = Measurement.PIECE;
                    break;

        }


    }
}