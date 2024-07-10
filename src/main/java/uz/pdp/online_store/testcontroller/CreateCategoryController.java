package uz.pdp.online_store.testcontroller;

import uz.pdp.online_store.service.product.CategoryService;

import java.util.List;

public class CreateCategoryController {
    private static final CategoryService service = new CategoryService();
    public static void main(String[] args) {
        List<String> mevalar = List.of("Mevalar",
                "Sabzavotlar",
                "Elektron jihozlar",
                "Telefonlar",
                "Xo'jalik mahsulotlar",
                "Erkaklar kiyimi",
                "Ayollar kiyimi",
                "Bolalar kiyimi",
                "Oziq-ovqat mahsulotlari",
                "Salqin ichimliklar",
                "Mebellar",
                "Telefon aksessuarlari",
                "Avtomobil aksessuarlari",
                "Komputerlar",
                "Smart watch",
                "Quloqchinlar");
        createCategory(mevalar);
    }
    private static void createCategory(List<String> categoryName) {
        for (String s : categoryName) {
            service.createCategory(s);
        }
    }
}
