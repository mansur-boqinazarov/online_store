package uz.pdp.online_store.entity.order;

import uz.pdp.online_store.entity.auditable.Auditable;

import java.util.List;

public class Order extends Auditable{
    private List<OrderItem> orderItems;
    private Integer totalPrice;
}