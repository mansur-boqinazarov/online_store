package uz.pdp.online_store.service.product;

import uz.pdp.online_store.dao.product.CategoryDAO;
import uz.pdp.online_store.entity.product.Category;

import java.util.List;

public class CategoryService {

    private static final CategoryDAO dao = new CategoryDAO();

    public void createCategory(String categoryName) {
        dao.save(new Category(categoryName));
    }

    public Category getCategory(String categoryID) {
        return dao.findAll().stream()
                .filter(category -> category.getId().equals(categoryID))
                .toList()
                .get(0);
    }

    public List<Category> getAllCategories() {
        return dao.findAll();
    }
}