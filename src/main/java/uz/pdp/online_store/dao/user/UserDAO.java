package uz.pdp.online_store.dao.user;

import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.user.User;


public class UserDAO extends BaseDAO<User,String> {
    public User login(String email, String password) {
        begin();
        User user = em.createQuery("SELECT u FROM User u WHERE u.email = :email and u.password = :password", User.class)
                .setParameter("email", email)
                .setParameter("password", password)
                .getSingleResult();
        commit();
        return user;
    }

}
