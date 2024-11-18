package controller.user;


import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

public class User {
    private int userID;
    private String userName;
    private String email;
    private String password;
    private Role role;



}
