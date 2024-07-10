package uz.pdp.online_store.entity.shop;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.entity.product.Product;
import uz.pdp.online_store.entity.user.Users;

import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class Shop extends Auditable {
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private Users user;
    @Column(unique = true, nullable = false)
    private String shopName;
    @Column(columnDefinition = "integer default 0")
    private Integer shopTotalBalance = 0;
    @Column(unique = true, nullable = false)
    private String shopDescription;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "shop")
    private List<Product> products;
}