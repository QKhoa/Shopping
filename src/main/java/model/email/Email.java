package model.email;

import jakarta.mail.*;

import jakarta.mail.internet.InternetAddress;

import jakarta.mail.internet.MimeMessage;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import java.util.Properties;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


@NoArgsConstructor
public class Email {

    private static final String from = "quangkhoa5112@gmail.com";
    private static final String password = "hsmjlofiljhxcuzq";
    private static final ExecutorService executor = Executors.newFixedThreadPool(10);


    public static void sendVerificationEmail(String to, String verificationCode) {
        // cai dat cau hinh SMTP

        Properties props = new Properties();

        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Authenticator auth = new Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        };

        // tao session gui email

        Session session = Session.getInstance(props, auth);

        // Tao email


        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            msg.setSubject("Email Verification Code");
            msg.setSentDate(new Date());
            msg.setText("Your verification code is " + verificationCode, "UTF-8");

            Transport.send(msg);
            System.out.println("Verification Email sent successfully");

        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("Error sending verification email: " + e.getMessage());
        }




    }

    public static void sendEmailAsync(String email, String verificationCode) {
        executor.submit(() -> {
            try {
                Email.sendVerificationEmail(email, verificationCode);
                System.out.println("Email sent to " + email);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    public static void shutdown() {
        executor.shutdown();
    }
}