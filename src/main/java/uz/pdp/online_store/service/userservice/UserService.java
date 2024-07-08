package uz.pdp.online_store.service.userservice;

import uz.pdp.online_store.dao.user.UserDAO;
import uz.pdp.online_store.entity.user.User;
import uz.pdp.online_store.service.BaseService;

public class UserService implements BaseService{
    private static final UserDAO userDAO = new UserDAO();

    public User login(String email, String password){
        return userDAO.login(email, password);
    }

    public void signUp(String fullName, String email, String password, String phoneNumber){
        User user = User
                .builder()
                .fullName(fullName)
                .email(email)
                .password(password)
                .phoneNumber(phoneNumber)
                .build();
        userDAO.save(user);
    }


}