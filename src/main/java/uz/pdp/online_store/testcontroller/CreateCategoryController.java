package uz.pdp.online_store.testcontroller;

import uz.pdp.online_store.service.product.CategoryService;

import java.util.List;

public class CreateCategoryController {
    private static final CategoryService service = new CategoryService();
    public static void main(String[] args) {
        List<String> mevalar = List.of(
                "O'yin komputerlari",
                "Noutbook",
                "Klaviatura",
                "Sichqoncha",
                "Quloqchin",
                "Mikrofon",
                "Sichqoncha uchun gilamcha",
                "Aksessuar",
                "Dekoratsiya",
                "Komplekt mahsulotlar",
                "Monitor",
                "UPS",
                "Web kamera",
                "Apple mahsulotlari",
                "Gamepad",
                "O'yin stullari",
                "O'yin stollari");
        createCategory(mevalar);
    }
    private static void createCategory(List<String> categoryName) {
        for (String s : categoryName) {
            service.createCategory(s);
        }
    }
}
