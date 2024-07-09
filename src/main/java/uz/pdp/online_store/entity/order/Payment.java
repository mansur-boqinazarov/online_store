package uz.pdp.online_store.entity.order;


import jakarta.persistence.*;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.enums.PaymentType;

public class Payment extends Auditable {
    @OneToOne(cascade = CascadeType.ALL)
    private Orders order;
    @Enumerated(EnumType.STRING)
    @Column(columnDefinition = "varchar(255) default 'CASH'")
    private PaymentType paymentType;
    private Integer totalPayment;
}