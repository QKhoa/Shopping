package model.user;


import lombok.*;

import java.time.LocalDateTime;

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
    private Boolean isVerified;
    private LocalDateTime createdAt;
    private Role role;




}
