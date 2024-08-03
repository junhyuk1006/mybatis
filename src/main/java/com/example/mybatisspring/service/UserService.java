package com.example.mybatisspring.service;

import com.example.mybatisspring.dto.User;
import com.example.mybatisspring.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public int insert(User user){
        return userMapper.insertUser(user);
    }

    public User select(User user){
        return userMapper.selectUser(user);
    }

    public int update(User user){
        return userMapper.updateUser(user);
    }

    public int delete(User user){
        return userMapper.deleteUser(user);
    }
}
