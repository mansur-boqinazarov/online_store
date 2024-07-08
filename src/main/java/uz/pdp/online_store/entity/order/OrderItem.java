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
    @Column(columnDefinition = "default 1")
    private int quantity;
    @Enumerated(EnumType.STRING)
    private OrderStatus orderStatus;
}