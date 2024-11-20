package model.email;

import java.util.Random;
public class VerificationCodeGenerator {
    public static String generateCode() {
        int length = 6; // Độ dài mã xác thực
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        StringBuilder code = new StringBuilder();
        Random random = new Random();

        for (int i = 0; i < length; i++) {
            code.append(chars.charAt(random.nextInt(chars.length())));
        }

        return code.toString();
    }
}
