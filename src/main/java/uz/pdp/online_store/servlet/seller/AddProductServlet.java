package uz.pdp.online_store.servlet.seller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import uz.pdp.online_store.entity.product.Picture;
import uz.pdp.online_store.enums.Measurement;
import uz.pdp.online_store.service.product.PictureService;
import uz.pdp.online_store.service.product.ProductService;

import java.io.IOException;
import java.io.InputStream;

@MultipartConfig
@WebServlet(name = "add-product", urlPatterns = "/seller/addproduct")
public class AddProductServlet extends HttpServlet {
    private static final ProductService service = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/seller/add_product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productName = req.getParameter("productName");//!
        String productDescription = req.getParameter("productDescription");//!
        int productPrice = Integer.parseInt(req.getParameter("productPrice"));//!
        int productQuantity = Integer.parseInt(req.getParameter("productQuantity"));//!
        Measurement measurement = Measurement.PIECE;//!
        switch (req.getParameter("measurement")){
            case "KILOGRAM" : measurement = Measurement.KILOGRAM;
            case "PIECE" : measurement = Measurement.PIECE;
            case "LITER" : measurement = Measurement.LITER;
        }
        String categoryId = req.getParameter("categoryId");//!
        String shopId = req.getParameter("shopId");

        Part filePart = req.getPart("productImage");
        byte[] imageBytes = null;
        String pictureType = "png";
            if (filePart != null && filePart.getSize() > 0) {
                try(InputStream inputStream = filePart.getInputStream()){
                    String fileName = filePart.getSubmittedFileName();
                        pictureType = fileName.substring(fileName.lastIndexOf("."));
                            imageBytes = inputStream.readAllBytes();
                }
            }
        Picture picture = Picture
                .builder()
                .picture(imageBytes)
                .pictureType(pictureType)
                .build();
        PictureService pictureService = new PictureService();
        String pictureID = pictureService.addPicture(imageBytes, pictureType);

        service.createProduct(productName, productDescription, productPrice, productQuantity, measurement, pictureID, categoryId, shopId);
            resp.sendRedirect("/app/seller");
    }
}
