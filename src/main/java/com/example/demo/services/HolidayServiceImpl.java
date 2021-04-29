package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.domain.Holiday;
import com.example.demo.repository.*;

@Service
@Transactional
public class HolidayServiceImpl implements HolidayService {

	@Autowired
	HolidayRepository congeRepository;
	
	@Override
	public void add(Holiday conge) {
		congeRepository.save(conge);
	}

	@Override
	public void delete(Holiday conge) {
		congeRepository.delete(conge);
	}

	@Override
	public void update(Holiday conge) {
		congeRepository.save(conge);
	}

	@Override
	public List<Holiday> findAll() {
		return congeRepository.findAll();
	}

	@Override
	public Holiday findById(long id) {
		return congeRepository.getOne(id);
	}

}