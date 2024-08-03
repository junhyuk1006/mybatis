package com.example.mybatisspring.service;

import com.example.mybatisspring.dto.Board;
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

    public List<Board> getBoardList(){
        return boardMapper.getBoardList();
    }

    public List<Board> getMyBoardList(int userId){return boardMapper.getMyBoardList(userId);}

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
