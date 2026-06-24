package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;

import com.project.entity.UserEntity;
import com.project.repository.UserRepository;

@Controller
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    // Open Register Page
    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    // Save User
    @PostMapping("/register")
    public String registerUser(@ModelAttribute UserEntity user,
                               Model model) {

        UserEntity existingUser =
                userRepository.findByEmail(user.getEmail());

        if (existingUser != null) {

            model.addAttribute("msg", "Email already exists");

            return "register";
        }

        userRepository.save(user);
        
        return "redirect:/login";
    }
}