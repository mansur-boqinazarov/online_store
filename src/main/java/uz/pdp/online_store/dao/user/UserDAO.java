package uz.pdp.online_store.dao.user;

import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.user.Users;


public class UserDAO extends BaseDAO<Users,String> {
    public Users login(String email, String password) {
        begin();
        Users user = em.createQuery("SELECT u FROM Users u WHERE u.email = :email and u.password = :password", Users.class)
                .setParameter("email", email)
                .setParameter("password", password)
                .getSingleResult();
        commit();
        return user;
    }

}
