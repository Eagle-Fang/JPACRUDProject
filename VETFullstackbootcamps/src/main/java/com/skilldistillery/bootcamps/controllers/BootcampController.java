package com.skilldistillery.bootcamps.controllers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.bootcamps.data.BootcampDAO;
import com.skilldistillery.bootcamps.entities.Bootcamp;

@Controller
public class BootcampController {

	@Autowired
	private BootcampDAO dao;

	@RequestMapping(path = { "/", "index.do" })
	public String index() {
//			model.addAttribute("DEBUG", dao.findById(1));
		return "index";
	}

	@RequestMapping(path = "error.do" )
			public String errorPage(@RequestParam("error") Model model) {
			model.addAttribute ("error", "Please re-enter Bootcamp id");
			return "bootcamp/error";						
		}

	@RequestMapping(path = "getBootcamp.do", method = RequestMethod.GET)
	public String findBootcampDetails(@RequestParam("bid") String bid, Model model) {
		if (bid.isEmpty()) {
			return "bootcamp/error";
		} else {
			Integer id;
			try {
				id = Integer.parseInt(bid);

			} catch (NumberFormatException e) {
				return "index";

			}
			Bootcamp bootcamp = dao.findById(id);
		}
	}

	@RequestMapping(path = "newBootcamp.do", method = RequestMethod.GET)
	public String addBootcamp() {
		return "bootcamp/newBootcamp";
	}

	@RequestMapping(path = "newBootcamp.do", method = RequestMethod.POST)
			public String addNewBootcamp(Bootcamp bootcamp, Model model) {
				Bootcamp bootcamp = dao.addBootcamp(bootcamp);
				model.addAttribute("bootcamp", addBootcamp());
				return "bootcamp/show";
			}

	@RequestMapping(path = "getBootcampByName.do", method = RequestMethod.GET)
	public String showBootcampByName(Model model, String name) {
		if (name.isEmpty()) {
			return "index";
		} else {
			List<Bootcamp> bootcamps = dao.listOfBootcampByName(name);
			model.addAttribute("bootcamps", bootcamps);
			return "bootcamp/show";
		}
	}

	@RequestMapping(path = "listBootcamps.do", method = RequestMethod.GET)
	public String listOfBootcamps (Model model) {
		List <Bootcamp> bootcamps = dao.listOfAllBootcamps();
		model.addAttribute("bootcamps", bootcamps);
		return "bootcamp/show";
	}
	
	@RequestMapping(path = "listBootcampStates.do", method = RequestMethod.GET)
		public String listOfBootcampStates (Model model) {
			List <Bootcamp> bootcamps = dao.listOfAllBootcamps();
			model.addAttribute("bootcamps", bootcamps);
			return "bootcamp/showState";
	}
	
	@RequestMapping(path = "listBootcampStipends.do", method = RequestMethod.GET)
			public String listOfBootcampStipends (Model model) {
				List <Bootcamp> bootcamps = dao.listOfAllBootcamps();
				model.addAttribute("bootcamps", bootcamps);
				return "bootcamp/showStipend";
	}		
				
	// Update
	@RequestMapping(path = "updateBootcamp.do", method = RequestMethod.POST)
				public String updateBootcamp (Model model, Bootcamp bootcamp) {
					Bootcamp updateBootcamp = dao.updateBootcampInfo(bootcamp)
					model.addAttribute("bootcamp", updatedBootcamp);
					
					return "bootcamp/show";
				}

	// Delete

	@RequestMapping(path = "deleteBootcamp.do", method = RequestMethod.GET)
		public String deleteBootcamp (Model mondel,int id) {
		
			if (dao.deleteBootcamp(id))  {
				model.addAttribute("deleteBootcamp", "Successfully deleted")
				return "bootcamp/deleteBootcamp.do";
				
				
			} else {
				model.addAttribute("bootcamp", dao.findById(id));
				return "bootcamp/show";			
		}
	}
}
