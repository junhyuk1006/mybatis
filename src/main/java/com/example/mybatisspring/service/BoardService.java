package com.example.mybatisspring.service;

import com.example.mybatisspring.dto.Board;
import com.example.mybatisspring.dto.PageRequest;
import com.example.mybatisspring.dto.PageResponse;
import com.example.mybatisspring.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    BoardMapper boardMapper;

    public int insert(Board board){
        return boardMapper.insertBoard(board);
    }

    public PageResponse getBoardList(PageRequest pageRequest){
        int total = boardMapper.countBoardList();
        int totalPages = (int)Math.ceil((double)total/pageRequest.getSize());
        int currentPage = pageRequest.getPage();
        int startPage = (currentPage-1)/5*5+1;
        int endPage = Math.min(totalPages,startPage+4);
        List<Board> list = boardMapper.getBoardList(pageRequest.getOffset(),pageRequest.getSize());
        return new PageResponse(list,currentPage,totalPages,startPage,endPage);
    }

    public PageResponse getMyBoardList(PageRequest pageRequest,int userId){
        int total = boardMapper.countMyBoardList(userId);
        int totalPages = (int)Math.ceil((double)total/pageRequest.getSize());
        int currentPage = pageRequest.getPage();
        int startPage = (currentPage-1)/5*5+1;
        int endPage = Math.min(totalPages,startPage+4);
        List<Board> list = boardMapper.getMyBoardList(pageRequest.getOffset(),pageRequest.getSize(),userId);
        return new PageResponse(list,currentPage,totalPages,startPage,endPage);
    }

    public Board getboard(int id) {
        return boardMapper.getBoard(id);
    }

    public int updateBoard(Board board){
        return boardMapper.updateBoard(board);
    }

    public int deleteBoard(int id){
        return boardMapper.deleteBoard(id);
    }
}
