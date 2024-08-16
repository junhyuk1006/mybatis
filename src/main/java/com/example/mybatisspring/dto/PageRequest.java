package com.example.mybatisspring.dto;

import lombok.Data;

@Data
public class PageRequest {
    private int page;
    private int size;
    public PageRequest(){
        this.page=1;
        this.size=10;
    }
    public int getOffset(){
        return (page-1)*size;
    }
}
