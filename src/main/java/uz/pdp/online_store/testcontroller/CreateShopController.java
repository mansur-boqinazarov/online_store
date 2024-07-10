package uz.pdp.online_store.testcontroller;

import uz.pdp.online_store.entity.shop.Shop;
import uz.pdp.online_store.service.shop.ShopService;

import java.util.List;

public class CreateShopController {
    private static final ShopService service = new ShopService();
    public static void main(String[] args) {
        addshop();
    }

    private static void getshop() {
        List<Shop> shops = service.allMyShops("874a5761-45dc-467b-a827-d7b43adc97cd");
        for (Shop shop : shops) {
            System.out.println(shop.getShopName());
        }
    }

    private static void addshop() {
        service.createShop("8703adb5-eda6-4084-a61b-ca323aabb38f", "Sulton", "ikkinchi filial");
    }

}
