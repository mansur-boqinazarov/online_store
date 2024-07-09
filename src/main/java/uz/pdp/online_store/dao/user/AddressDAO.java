package uz.pdp.online_store.dao.user;


import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.user.Address;


public class AddressDAO extends BaseDAO<Address,String> {
    @Override
    public Address save(Address entity) {
        return super.save(entity);
    }

    @Override
    public Address findById(String user_id) {
        Address address = null;
        try{
            begin();
            Query query = em.createQuery("select a from Address a where a.user.id =:user_id")
                    .setParameter("user_id", user_id);
            address = (Address) query.getSingleResult();
            commit();
        }
        catch (NoResultException e){
            rollback();
        }
        return address;
    }
}
