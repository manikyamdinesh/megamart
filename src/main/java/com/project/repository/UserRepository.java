package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {

    UserEntity findByEmail(String email);

    UserEntity findByEmailAndPassword(String email, String password);
}