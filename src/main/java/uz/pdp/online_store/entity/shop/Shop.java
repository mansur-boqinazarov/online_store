package uz.pdp.online_store.entity.shop;

import jakarta.persistence.Column;
import uz.pdp.online_store.entity.auditable.Auditable;


public class Shop extends Auditable {
    /*Do'kon egaligi uchun User class bilan refenrence qilinmagan hali*/
    private String userID;
    @Column(unique = true, nullable = false)
    private String shopName;
    @Column(columnDefinition = "default 0")
    private Integer shopTotalBalance;
}