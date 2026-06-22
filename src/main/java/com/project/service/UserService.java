package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.UserEntity;
import com.project.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserEntity registerUser(UserEntity user) {

        return userRepository.save(user);
    }

    public UserEntity loginUser(String email,
                                String password) {

        return userRepository
                .findByEmailAndPassword(email, password);
    }
}