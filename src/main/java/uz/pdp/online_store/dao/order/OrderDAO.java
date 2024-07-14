package uz.pdp.online_store.dao.order;

import uz.pdp.online_store.dao.base.BaseDAO;
import uz.pdp.online_store.entity.order.Orders;
import uz.pdp.online_store.entity.user.Users;


public class OrderDAO extends BaseDAO<Orders, String> {
    public Orders findByUser(Users user) {
        String hql = "SELECT o FROM Orders o WHERE o.user.id = :userId";
        try {
            return em.createQuery(hql, Orders.class).setParameter("userId", user.getId()).getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }
}
