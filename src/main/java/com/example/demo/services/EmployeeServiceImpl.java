package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.domain.Employee;
import com.example.demo.repository.EmployeeRepository;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeRepository employeRepository;
	
	@Override
	public void add(Employee employe) {
		employeRepository.save(employe);
	}

	@Override
	public void delete(Employee employe) {
		employeRepository.delete(employe);
	}

	@Override
	public void update(Employee employe) {
		employeRepository.save(employe);
	}

	@Override
	public List<Employee> findAll() {
		return employeRepository.findAll();
	}

	@Override
	public Employee findById(long id) {
		return employeRepository.getOne(id);
	}

}