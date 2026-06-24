package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.entity.UserEntity;
import com.project.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepository;

    // Open Login Page
    @GetMapping("/")
    public String home() {
        return "login";
    }

    // Open Login Page
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    // Login User
    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            HttpSession session,
                            Model model) {

        UserEntity user =
                userRepository.findByEmailAndPassword(email, password);

        if (user != null) {

            session.setAttribute("user", user);

            return "redirect:/dashboard";
        }

        model.addAttribute("msg", "Invalid Email or Password");

        return "login";
    }

    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }
}