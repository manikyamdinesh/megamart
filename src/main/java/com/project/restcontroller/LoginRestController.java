package com.project.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.project.entity.UserEntity;
import com.project.repository.UserRepository;

@RestController
@RequestMapping("/api")
public class LoginRestController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password) {

        UserEntity user =
                userRepository.findByEmailAndPassword(email, password);

        if (user != null) {
            return "Login Successful";
        }

        return "Invalid Email or Password";
    }
}