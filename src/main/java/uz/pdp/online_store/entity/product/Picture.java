package uz.pdp.online_store.entity.product;

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
public class Picture extends Auditable {
    private byte[] picture;
    private String pictureType;
}