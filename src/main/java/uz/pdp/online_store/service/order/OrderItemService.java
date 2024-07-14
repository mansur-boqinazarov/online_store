package uz.pdp.online_store.service.order;

import uz.pdp.online_store.dao.order.OrderItemDAO;
import uz.pdp.online_store.entity.order.OrderItem;
import uz.pdp.online_store.entity.order.Orders;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.service.product.ProductService;

import java.util.ArrayList;
import java.util.List;

public class OrderItemService {
    private static final OrderItemDAO dao = new OrderItemDAO();
    private final OrderService orderService = new OrderService();

    public void addOrderItem(String productID, int quantity, String orderID) {
        OrderItem item = OrderItem
                .builder()
                .quantity(quantity)
                .order(new Orders())
                .product(new ProductService().getProduct(productID))
                .build();
        dao.save(item);
    }

    public List<OrderItem> getAllOrderItemByOrderID(String orderID) {
        return dao.findAll().stream()
                .filter(orderItem -> orderItem.getOrder().getId().equals(orderID))
                .toList();
    }

    public void addProduct(Orders userOrder, Product product) {
        List<OrderItem> orderItems = userOrder.getOrderItems();
        userOrder.setOrderItems(orderItems);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrder(userOrder);
        orderItem.setProduct(product);
        orderItem.setQuantity(1);
        OrderItem saved = dao.save(orderItem);
        orderItems.add(saved);
        orderService.dao.save(userOrder);
    }
}