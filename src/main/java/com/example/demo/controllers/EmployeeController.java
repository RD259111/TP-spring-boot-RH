package com.example.demo.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.domain.Employee;
import com.example.demo.services.EmployeeService;

@Controller
@SessionScope
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/add")
	public ModelAndView addEmploye() {
		Employee employe = new Employee();
		ModelAndView model = new ModelAndView("addEmp", "employe", employe);
		
		return model;
	}
	
	@RequestMapping("/save")
    public ModelAndView saveEmploye(@ModelAttribute Employee employe ) {
        
		employeeService.add(employe);
        
        ModelAndView model = new ModelAndView("listEmp");
        List<Employee> listEmploye = new ArrayList<Employee>();
        listEmploye = employeeService.findAll();

        model.addObject("employe", listEmploye);
        
        return model;
    }
	
	@RequestMapping("/list")
    public ModelAndView listEmploye() {
        
        ModelAndView model = new ModelAndView("listEmp");
        List<Employee> listEmploye = new ArrayList<Employee>();
        listEmploye = employeeService.findAll();

        model.addObject("employe",listEmploye);
        
        return model;
    }
	
	@RequestMapping("delete")
	public ModelAndView delete(long id) {

		System.out.println("id=" + id);
		Employee employe = employeeService.findById(id);
		employeeService.delete(employe);
		ModelAndView model = new ModelAndView("redirect:/list");
		
		return model;
	}
	
	@RequestMapping("edit")
	public ModelAndView edit(long id) {

		Employee employe = employeeService.findById(id);
		
		ModelAndView model = new ModelAndView("updateEmp", "employe", employe);
		
		return model;
	}
	
	@RequestMapping("update")
	public ModelAndView updateEmploye(Employee employe) {

		
		employeeService.update(employe);
		
		ModelAndView model = new ModelAndView("redirect:/list");
		
		return model;
	}
}