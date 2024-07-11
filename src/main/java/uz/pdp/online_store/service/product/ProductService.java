package uz.pdp.online_store.service.product;

import uz.pdp.online_store.dao.product.ProductDAO;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.enums.Measurement;
import uz.pdp.online_store.service.shop.ShopService;

import java.util.Collections;
import java.util.List;


public class ProductService {
    ProductDAO dao = new ProductDAO();

    //delete product by id method
    public void deleteProduct(String productId) {
        dao.deleteById(productId);
    }

    public void createProduct(String productName, String productDescription, int productPrice, int productQuantity, Measurement measurement, String pictureID, String categoryID, String shopID) {
        Product product = Product.builder().productName(productName).productDescription(productDescription).productPrice(productPrice).productQuantity(productQuantity).measurement(measurement).picture(new PictureService().getPicture(pictureID)).category(new CategoryService().getCategory(categoryID)).shop(new ShopService().getShopById(shopID))
                .build();
        dao.save(product);
    }

    public List<Product> getAllProducts() {
        return dao.findAll();
    }

    public List<Product> getAllProductByShop(String shopID) {
        List<Product> productList = getAllProducts();
        return productList.stream()
                .filter(product -> product.getShop().getId().equals(shopID))
                .toList();
    }
    public List<Product> getAllProductByCategory(String categoryID) {
        List<Product> productList = getAllProducts();
        return productList.stream()
                .filter(product -> product.getCategory().getId().equals(categoryID))
                .toList();
    }
    public Product getProduct(String productID) {
        return dao.findById(productID);
    }

    public List<Product> randomProduct(){
        List<Product> productList = getAllProducts();
        Collections.shuffle(productList);
        return productList.stream()
                .limit(Math.min((productList.size()), 18))
                .toList();
    }
}