package uz.pdp.online_store.entity.order;


import jakarta.persistence.*;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.enums.PaymentType;

public class Payment extends Auditable {
    @OneToOne(cascade = CascadeType.ALL)
    private Orders order;
    @Enumerated(EnumType.STRING)
    private PaymentType paymentType = PaymentType.CASH;
    private Integer totalPayment;
}