package com.example.assignment1.dao;


import com.example.assignment1.model.User;

public interface UserDao {
    public Boolean checkLoginByUsername(String username, String password);
    public Boolean checkLoginByEmail(String email, String password);
    public Boolean checkRegisterUsername(String username);
    public Boolean checkRegisterEmail(String email);
    public User getUserByUsername(String username);
    public User getUserByEmail(String email);
    public Boolean saveUser(User user);
}