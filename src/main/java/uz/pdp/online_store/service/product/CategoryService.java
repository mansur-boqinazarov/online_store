package uz.pdp.online_store.service.product;

import uz.pdp.online_store.dao.product.CategoryDAO;
import uz.pdp.online_store.entity.product.Category;

import java.util.List;

public class CategoryService {

    private static final CategoryDAO dao = new CategoryDAO();

    public void createCategory(String categoryName) {
        dao.save(Category.builder().categoryName(categoryName).build());
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
    public String getCategoryID(String currentCategoryName){
        List<Category> list = getAllCategories();
        for (Category category : list) {
            if(category.getCategoryName().equals(currentCategoryName)){
                return category.getId();
            }
        }
        return null;
    }
    public Category getCategoryByID(String categoryID) {
        return dao.findById(categoryID);
    }
}