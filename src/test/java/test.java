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

        ArrayList<User> users = UserDAO.getInstance().getAll();

        for (User user : users) {
            System.out.println(user.toString());
        }





    }
}
