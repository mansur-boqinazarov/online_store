package uz.pdp.online_store.entity.order;


import jakarta.persistence.CascadeType;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.OneToOne;
import uz.pdp.online_store.entity.auditable.Auditable;
import uz.pdp.online_store.enums.PaymentType;

public class Payment extends Auditable {
    @OneToOne(cascade = CascadeType.ALL)
    private Order order;
    @Enumerated(EnumType.STRING)
    private PaymentType paymentType;
    private Integer totalPayment;
}