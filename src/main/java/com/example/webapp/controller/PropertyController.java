package com.example.webapp.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.webapp.model.Property;
import com.example.webapp.service.PropertyService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
public class PropertyController {

	@Autowired
	PropertyService propertyService;

	@PostMapping("/saveProperty")
	public String saveProperty(Property property, Model m) {
		propertyService.saveProperty(property);
		return "redirect:/displayProperty";
	}
	

	@GetMapping("/displayProperty")
	public String displayProperty(Model m) {
		List<Property> property = propertyService.getAllProperty();

		m.addAttribute("listProperty", property);
		return "adminPannel";

	}

	@GetMapping("/deleteProperty/{property_id}")
	public String deleteProperty(@PathVariable int property_id) {
		propertyService.deleteProp(property_id);

		return "redirect:/displayProperty";

	}

	@GetMapping("/getProperty/{property_id}" )
	public String getUpdate(@PathVariable int property_id, Model m) {
		Property property = propertyService.getProp(property_id);
		System.out.println(property);
		m.addAttribute("property", property);
		return "updateProperty";
	}
	
	@GetMapping("/contactOwner/{username}/{property_id}")
	public String contact(@PathVariable String username, @PathVariable int property_id , Model m) {
		
		Property property = propertyService.getProp(property_id);
		m.addAttribute("property", property);
		m.addAttribute("username", username);
		
		return "Contact";
	}

	

}
