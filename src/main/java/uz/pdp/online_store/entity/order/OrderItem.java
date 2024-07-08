package uz.pdp.online_store.entity.order;

import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.enums.OrderStatus;

public class OrderItem extends Auditable {
    private Product productID;
    @Column(columnDefinition = "default 1")
    private int quantity;
    @Enumerated(EnumType.STRING)
    private OrderStatus orderStatus;
}