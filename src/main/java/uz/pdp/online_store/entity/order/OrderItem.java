package uz.pdp.online_store.entity.order;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.enums.OrderStatus;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class OrderItem extends Auditable {
    @OneToOne(cascade = CascadeType.ALL)
    private Product product;
    private int quantity = 1;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private OrderStatus orderStatus = OrderStatus.NOT_ORDERED;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Orders order;
}