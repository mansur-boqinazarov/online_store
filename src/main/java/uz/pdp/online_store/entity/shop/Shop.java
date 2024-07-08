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
import uz.pdp.online_store.entity.user.Users;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class Shop extends Auditable {
    @OneToOne(cascade = CascadeType.PERSIST)
    private Users user;
    @Column(unique = true, nullable = false)
    private String shopName;
    private Integer shopTotalBalance = 0;
}