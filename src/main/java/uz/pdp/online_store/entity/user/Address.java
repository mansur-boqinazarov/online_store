package uz.pdp.online_store.entity.user;


import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;
import uz.pdp.online_store.entity.auditable.Auditable;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder(toBuilder = true)
@Getter
@Setter
public class Address extends Auditable {
    @Column(nullable = false)
    private String city;
    @Column(nullable = false)
    private String street;
    @Column(nullable = false)
    private String apartment;
}