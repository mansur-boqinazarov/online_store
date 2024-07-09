package uz.pdp.online_store.service.order;

import uz.pdp.online_store.dao.order.OrderItemDAO;
import uz.pdp.online_store.entity.order.OrderItem;
import uz.pdp.online_store.entity.order.Orders;
import uz.pdp.online_store.service.product.ProductService;

import java.util.List;

public class OrderItemService {
    private static final OrderItemDAO dao = new OrderItemDAO();

    public void addOrderItem(String productID, int quantity, String orderID) {
        OrderItem item = OrderItem
                .builder()
                .quantity(quantity)
                .order(new Orders())
                .product(new ProductService().getProduct(productID))
                .build();
        dao.save(item);
    }

    public List<OrderItem> getAllOrderItemByOrderID(String orderID){
        return dao.findAll().stream()
                .filter(orderItem -> orderItem.getOrder().getId().equals(orderID))
                .toList();
    }
}