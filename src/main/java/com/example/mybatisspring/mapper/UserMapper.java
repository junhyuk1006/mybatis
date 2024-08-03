package com.example.mybatisspring.mapper;

import com.example.mybatisspring.dto.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    int insertUser(User user);
    User selectUser(User user);
    int updateUser(User user);
    int deleteUser(User user);
}
