package uz.pdp.online_store.service.userservice;

import uz.pdp.online_store.dao.user.UserDAO;
import uz.pdp.online_store.entity.user.Users;
import uz.pdp.online_store.enums.Role;
import uz.pdp.online_store.enums.Status;
import uz.pdp.online_store.service.BaseService;

public class UserService implements BaseService{
    private static final UserDAO userDAO = new UserDAO();

    public Users login(String email, String password){
        return userDAO.login(email, password);
    }

    public Users signUp(String fullName, String email, String password, String phoneNumber){
        Users user = Users
                .builder()
                .fullName(fullName)
                .email(email)
                .password(password)
                .phoneNumber(phoneNumber)
                .role(Role.USER)
                .status(Status.ACTIVE)
                .build();
        return userDAO.save(user);
    }


}