package uz.pdp.online_store.entity.shop;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.entity.user.User;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class Shop extends Auditable {
    @OneToOne(cascade = CascadeType.PERSIST)
    private User user;
    @Column(unique = true, nullable = false)
    private String shopName;
    @Column(columnDefinition = "default 0")
    private Integer shopTotalBalance;
}