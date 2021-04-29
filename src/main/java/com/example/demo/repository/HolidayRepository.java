package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Holiday;

public interface HolidayRepository extends JpaRepository<Holiday, Long> {

}