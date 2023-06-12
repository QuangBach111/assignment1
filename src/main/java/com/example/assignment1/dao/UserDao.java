package com.example.assignment1.dao;

import com.example.assignment1.model.User;

import java.util.List;

public interface UserDao {
    public Boolean checkLoginByUsername(String username, String password);
    public Boolean checkLoginByEmail(String email, String password);
}