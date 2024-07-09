package uz.pdp.online_store.service.product;

import jakarta.persistence.NoResultException;
import uz.pdp.online_store.dao.product.PictureDAO;
import uz.pdp.online_store.entity.product.Picture;

public class PictureService {
    private static final PictureDAO dao = new PictureDAO();

    public String addPicture(byte[] picture, String pictureType){
        Picture entity = Picture
                .builder()
                .picture(picture)
                .pictureType(pictureType)
                .build();
        dao.save(entity);
        if(entity == null) return null;
        else return entity.getId();
    }

    public Picture getPicture(String id){
        try{
            return dao.findById(id);
        }
        catch (NoResultException e){
            return null;
        }
    }
}
