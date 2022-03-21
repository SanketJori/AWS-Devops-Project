package com.example.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.webapp.model.Property;
import com.example.webapp.service.PropertyService;

@Controller
public class PropertyController {
	
	@Autowired
	PropertyService propertyService;
	
	@PostMapping("/saveProperty")
	public String saveProperty( Property property, Model m) {
		propertyService.saveProperty(property);
		return "redirect:/displayProperty";
	}
	
	@RequestMapping("/displayProperty")
	public String displayProperty(Model m) {
		List<Property> property = propertyService.getAllProperty();
		System.out.println(property);
		m.addAttribute("listProperty",property);
		return "adminPannel";
	
	}

}
