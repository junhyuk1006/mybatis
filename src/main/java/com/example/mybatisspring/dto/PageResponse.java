package com.example.mybatisspring.dto;

import lombok.Data;

import java.util.List;

@Data
public class PageResponse {
    private List<Board> data;
    private int totalPages;
    private int currentPage;
    private int startPage;
    private int endPage;

    public PageResponse(List<Board> data, int currentPage, int totalPages , int startPage, int endPage) {
        this.data = data;
        this.currentPage = currentPage;
        this.totalPages = totalPages;
        this.startPage = startPage;
        this.endPage = endPage;
    }
}
