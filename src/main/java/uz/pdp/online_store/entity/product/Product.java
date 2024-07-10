package uz.pdp.online_store.entity.product;


import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.entity.shop.Shop;
import uz.pdp.online_store.enums.Measurement;


@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class Product extends Auditable {
    @Column(nullable = false)
    private String productName;
    @Column(nullable = false, columnDefinition = "text")
    private String productDescription;
    @Column(nullable = false)
    private Integer productPrice;
    @Column(nullable = false, columnDefinition = "integer default 1")
    private Integer productQuantity;
    @Enumerated(EnumType.STRING)
    private Measurement measurement = Measurement.PIECE;
    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Picture picture;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Category category;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Shop shop;
}