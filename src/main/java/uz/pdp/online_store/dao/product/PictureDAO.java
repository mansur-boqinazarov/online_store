package uz.pdp.online_store.dao.product;

import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.product.Picture;
import uz.pdp.online_store.entity.product.Product;


public class PictureDAO extends BaseDAO<Picture,String> {
    @Override
    public Picture save(Picture entity) {
        return super.save(entity);
    }

    @Override
    public Picture findById(String s) {
        return super.findById(s);
    }
}
