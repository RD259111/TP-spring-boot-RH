package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Absence;

public interface AbsenceRepository extends JpaRepository<Absence, Long> {

}