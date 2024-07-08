package uz.pdp.online_store.entity.product;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.*;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@SuperBuilder(toBuilder = true)
public class Category extends Auditable {
    @Column(nullable = false, unique = false)
    private String categoryName;
}