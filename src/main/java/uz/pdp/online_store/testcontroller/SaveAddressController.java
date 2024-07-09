package uz.pdp.online_store.testcontroller;

import uz.pdp.online_store.dao.user.AddressDAO;
import uz.pdp.online_store.entity.user.Address;
import uz.pdp.online_store.entity.user.Users;
import uz.pdp.online_store.enums.Role;
import uz.pdp.online_store.enums.Status;

public class SaveAddressController {
    public static void main(String[] args) {
        //createAddressTest();

        AddressDAO dao = new AddressDAO();
        Address byId = dao.findById("cb8c6f01-e1e2-4fcd-8814-33cb2a57e4e1");
        System.out.println("byId.getCity() = " + byId.getCity());
        System.out.println("byId.getStreet() = " + byId.getStreet());
        System.out.println("byId.getApartment() = " + byId.getApartment());
    }

    private static void createAddressTest() {
        AddressDAO addressDAO = new AddressDAO();
        addressDAO.save(Address.builder()
                        .city("To'rtko'l")
                        .street("Zamondosh")
                        .apartment("60")
                        .user(new Users("To'lqin", "example@mail.ru", "1234", "+99", Role.ADMIN, Status.ACTIVE))
                .build());
    }
}