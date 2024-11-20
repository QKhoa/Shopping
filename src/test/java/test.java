import connectsqlserver.DatabaseConnector;
import controller.security.PasswordUtils;
import model.user.Role;
import model.user.User;
import model.user.UserDAO;

public class test {
    public static void main(String[] args) {

//        User user = UserDAO.getInstance().checkAccount("quangkhoa5112@gmail.com", "5112");

        String email = "quangkho511@gmail.com";
        String password = "123456";
        String username = "QUang Khoa";
        Boolean isVerified = false;

        String role = "USER";
        User user = new User();

        user.setEmail(email);
        user.setPassword(password);
        user.setName(username);
        user.setVerified(isVerified);
        user.setRole(Role.ADMIN);
        UserDAO.getInstance().saveUser(user);









    }
}
