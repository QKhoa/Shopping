import connectsqlserver.DatabaseConnector;
import controller.security.PasswordUtils;
import model.user.Role;
import model.user.User;
import model.user.UserDAO;
import model.verificationcode.VerificationCode;
import model.verificationcode.VerificationCodeDAO;

public class test {
    public static void main(String[] args) {

        String error = null;

        VerificationCode verificationCode = VerificationCodeDAO.getInstance().getCodeByEmail("quangkhoa5112@gmail.com");

        if (verificationCode == null) {
             error = "No verification code found for the provided email.";

        }


        System.out.println(error);


    }
}
