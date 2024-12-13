import connectsqlserver.DatabaseConnector;
import controller.security.PasswordUtils;
import model.user.Role;
import model.user.User;
import model.user.UserDAO;
import model.verificationcode.VerificationCode;
import model.verificationcode.VerificationCodeDAO;

import java.util.ArrayList;

public class test {
    public static void main(String[] args) {
        Role role = Role.valueOf("ADMIN".toUpperCase());

        Boolean isVerified = Boolean.parseBoolean("true");
        User user = new User();
        user.setId(17);
        user.setEmail("quangkhoa5112@gmail.com");
        user.setName("Quang");

        user.setIsVerified(isVerified);
        user.setRole(role);




//        request.setAttribute("user", user);

        UserDAO.getInstance().updateUser(user);




    }
}
