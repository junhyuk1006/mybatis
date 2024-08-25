package com.example.mybatisspring.mapper;

import com.example.mybatisspring.dto.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    int insertBoard(Board board);
    int countBoardList();
    int countMyBoardList(int userId);
    List<Board> getBoardList(int offset,int size);
    List<Board> getMyBoardList(int offset,int size, int userId);
    Board getBoard(int id);
    int updateBoard(Board board);
    int deleteBoard(int id);
}
