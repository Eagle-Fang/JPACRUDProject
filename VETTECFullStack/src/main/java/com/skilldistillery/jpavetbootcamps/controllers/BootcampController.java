package com.skilldistillery.jpavetbootcamps.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpavetbootcamps.data.BootcampDAO;

@Controller
public class BootcampController {

	@Autowired
	private BootcampDAO dao;
	
	@RequestMapping (path= {"/", "home.do"})
	
	public String home (Model model) {
		model.addAttribute("Debug", dao.findById(1));
		return "home";
		
	}
	
}
