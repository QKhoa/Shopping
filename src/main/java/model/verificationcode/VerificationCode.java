package model.verificationcode;

import lombok.*;

import java.time.LocalDateTime;
import java.util.Random;


@Getter
@Setter

@ToString
public class VerificationCode {

    private int id;
    private String email;
    private String code;
    private LocalDateTime createdAt;
    private LocalDateTime expiresAt;

    // Constructor
    public VerificationCode() {}

    public VerificationCode(String email, String code) {
        this.email = email;
        this.code = code;

    }

    public VerificationCode(int id, String email, String code, LocalDateTime createdAt, LocalDateTime expiresAt) {
        this.id = id;
        this.email = email;
        this.code = code;
        this.createdAt = createdAt;
        this.expiresAt = expiresAt;
    }

    public static String generateCode() {
        int length = 6; // Độ dài mã xác thực
        String chars = "0123456789";
        StringBuilder code = new StringBuilder();
        Random random = new Random();

        for (int i = 0; i < length; i++) {
            code.append(chars.charAt(random.nextInt(chars.length())));
        }

        return code.toString();
    }



}
