package uz.pdp.online_store.testcontroller;


import uz.pdp.online_store.entity.user.Users;

import uz.pdp.online_store.service.userservice.UserService;

public class UserLoginSignUpController {
    public static void main(String[] args) {
        signup("Example_3", "example3@mail.com", "Example_3", "Example_3");

    }
    private static void signup(String fullname, String email, String password, String phoneNumber){
        UserService userService = new UserService();
        userService.signUp(fullname, email, password, phoneNumber);
    }
    private static void login(){
        UserService userService = new UserService();
        Users users = userService.login("tolik@mail2.ru", "Tolik_2107");
        System.out.println("username :: " + users.getFullName() + " email :: " + users.getEmail());
    }
}
