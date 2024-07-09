package uz.pdp.online_store.dao.shop;

import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.shop.Shop;

import java.util.List;


public class ShopDAO extends BaseDAO<Shop,String> {
    ShopDAO dao = new ShopDAO();

    public List<Shop> findAll(String user_id) {
        List<Shop> shops = dao.findAll();
        return shops.stream()
                .filter(shop -> shop.getUser().getId().equals(user_id))
                .toList();
    }

}
