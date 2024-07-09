package uz.pdp.online_store.service.order;

import uz.pdp.online_store.dao.order.OrderDAO;
import uz.pdp.online_store.entity.order.OrderItem;
import uz.pdp.online_store.entity.order.Orders;

import java.util.List;

public class OrderService {
    OrderDAO dao = new OrderDAO();
    public void createOrder(){

    }
    public Integer totalBalance(String orderID){
        Integer totalPrice = findOrder(orderID).getTotalPrice();
        List<OrderItem> allOrderItemByOrderID = new OrderItemService().getAllOrderItemByOrderID(orderID);
        for (OrderItem orderItem : allOrderItemByOrderID) {
            Integer productPrice = orderItem.getProduct().getProductPrice();
            totalPrice += productPrice*orderItem.getQuantity();
        }
        if(totalPrice!=null){
            findOrder(orderID).setTotalPrice(totalPrice);
            return totalPrice;
        }
        else return 0;
    }
    public Orders findOrder(String orderID){
        return dao.findById(orderID);
    }
}