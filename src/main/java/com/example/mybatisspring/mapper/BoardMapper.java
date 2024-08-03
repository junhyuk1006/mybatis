package com.example.mybatisspring.mapper;

import com.example.mybatisspring.dto.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    int insertBoard(Board board);
    List<Board> getBoardList();
    List<Board> getMyBoardList(int userId);
    Board getBoard(int id);
    int updateBoard(Board board);
    int deleteBoard(int id);
}
