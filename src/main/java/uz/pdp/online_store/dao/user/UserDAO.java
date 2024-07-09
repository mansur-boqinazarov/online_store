package uz.pdp.online_store.dao.user;

import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.user.Users;



public class UserDAO extends BaseDAO<Users,String> {
    public Users login(String email, String password) {
        try {
            begin();
            Query query = em.createQuery("SELECT u FROM Users u WHERE u.email = :email and u.password = :password", Users.class)
                    .setParameter("email", email)
                    .setParameter("password", password);
            Users user = (Users) query.getSingleResult();
            commit();
            return user;
        } catch (NoResultException e) {
            rollback();
            return null;
        }
    }
}
