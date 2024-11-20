package model.user;


import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String email;
    private String name;
    private String password;
    private boolean isVerified;
    private Role role;



}
