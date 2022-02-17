package com.rose.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.rose.dojosandninjas.models.Dojo;
import com.rose.dojosandninjas.models.Ninja;
import com.rose.dojosandninjas.services.DojoService;

@Controller
public class HomeController {
	//we need to inject service here
	@Autowired
	DojoService dojoService;
	
	@GetMapping("/dojos")
	public String index(Model model) {
		model.addAttribute("allDojos",dojoService.findAllDojos());
		return "index.jsp";
	}
	
	@GetMapping("/dojos/new")
	public String newDojo(Model model) {
		model.addAttribute("dojo", new Dojo());
		return "newDojo.jsp";
	}
	
	@PostMapping("/dojos/create")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		}
		dojoService.createDojo(dojo);
		return "redirect:/dojos";
	}
	
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoService.findAllDojos());
		return "newNinja.jsp";
	}
	
	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result);
			model.addAttribute("allDojos",dojoService.findAllDojos());
			return "newNinja.jsp";
		}
		else {
		dojoService.createNinja(ninja);
		return "redirect:/dojos";
		}
	}
	
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id")Long id, Model model) {
		model.addAttribute("dojo",dojoService.findOneDojo(id));
		return "showDojo.jsp";
	}
	
	
	
	
	
	
}
