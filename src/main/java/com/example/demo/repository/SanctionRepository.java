package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Sanction;

public interface SanctionRepository extends JpaRepository<Sanction, Long> {

}