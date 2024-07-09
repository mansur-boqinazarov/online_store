package uz.pdp.online_store.servlet.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.online_store.entity.user.Users;
import uz.pdp.online_store.service.user.UserService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("views/user/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Users user = userService.login(email, password);
        PrintWriter writer = resp.getWriter();
        if (Objects.nonNull(user)) {
            writer.println("""
                    <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>Logged In</title>
                        <!-- CSS styles here -->
                        <style>
                            /* Add your styles here */
                            body {
                                font-family: Arial, sans-serif;
                                text-align: center;
                                padding: 50px;
                            }
                        </style>
                    </head>
                    <body>
                        <h1>Successfully logged in</h1>

                        <script>
                            // JavaScript code to redirect after 3 seconds
                            setTimeout(function() {
                                window.location.href = "/";
                            }, 3000); // 3000 milliseconds = 3 seconds
                        </script>
                    </body>
                    </html>
                                        """);
        } else {
            writer.println("""
                    <h1>failed</h1>
                    """);
        }
    }
}
