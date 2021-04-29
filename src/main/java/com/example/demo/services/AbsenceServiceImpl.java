package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.domain.Absence;
import com.example.demo.repository.AbsenceRepository;

@Service
@Transactional
public class AbsenceServiceImpl implements AbsenceService {

	@Autowired
	AbsenceRepository absenceRepository;
	
	@Override
	public void add(Absence absence) {
		absenceRepository.save(absence);
	}

	@Override
	public void delete(Absence absence) {
		absenceRepository.delete(absence);
	}

	@Override
	public void update(Absence absence) {
		absenceRepository.save(absence);
	}

	@Override
	public List<Absence> findAll() {
		return absenceRepository.findAll();
	}

	@Override
	public Absence findById(long id) {
		return absenceRepository.getOne(id);
	}

}