package com.example.mybatisspring.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class User {
    private int id;
    private String username;
    private String password;
    private String email;
}
