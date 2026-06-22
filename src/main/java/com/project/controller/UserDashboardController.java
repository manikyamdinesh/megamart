package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.entity.UserEntity;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserDashboardController {

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session,
                            Model model) {

        UserEntity user =
                (UserEntity) session.getAttribute("user");

        if (user == null) {
            return "redirect:/login";
        }

        model.addAttribute("user", user);

        return "user-dashboard";
    }

}
