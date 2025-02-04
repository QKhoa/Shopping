package controller.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordUtils {

    private static final BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    public static String encode(String password) {
        return encoder.encode(password);
    }

    public static boolean matches(String password, String encodedPassword) {
        return encoder.matches(password, encodedPassword);
    }


}
