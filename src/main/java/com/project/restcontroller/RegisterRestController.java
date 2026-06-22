package com.project.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.project.entity.UserEntity;
import com.project.repository.UserRepository;

@RestController
@RequestMapping("/api")
public class RegisterRestController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/register")
    public String registerUser(@RequestBody UserEntity user) {

        if (userRepository.findByEmail(user.getEmail()) != null) {
            return "Email already exists";
        }

        userRepository.save(user);
        return "Registration Successful";
    }
}