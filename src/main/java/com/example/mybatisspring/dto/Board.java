package com.example.mybatisspring.dto;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Board {
    private int id;
    private int userId;
    private String title;
    private String content;
    private Timestamp time;
}
