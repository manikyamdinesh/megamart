package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.repository.UserRepository;

@Controller
public class ManageUserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/manageUsers")
    public String manageUsers(Model model){

        model.addAttribute(
                "users",
                userRepository.findAll());

        return "manage-user";
    }
}