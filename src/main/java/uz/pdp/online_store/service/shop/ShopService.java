package uz.pdp.online_store.service.shop;

import uz.pdp.online_store.dao.shop.ShopDAO;
import uz.pdp.online_store.entity.shop.Shop;
import uz.pdp.online_store.entity.user.Users;
import uz.pdp.online_store.service.user.UserService;

import java.util.List;

public class ShopService {
    private static final ShopDAO dao = new ShopDAO();

    public void createShop(String user_id, String shopName, String description){
        Users user = new UserService().getUserById(user_id);
        dao.save(
                Shop.builder()
                        .shopName(shopName)
                        .shopDescription(description)
                        .users(user)
                        .build()
        );
    }
    public List<Shop> getAllShops(){
        return dao.findAll();
    }
    public List<Shop> allMyShops(String user_id){
        return dao.findAll(user_id);
    }
    public Shop getShopById(String shop_id){
        return dao.findById(shop_id);
    }
}