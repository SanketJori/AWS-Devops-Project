package com.example.webapp.service;

import java.util.List;
<<<<<<< HEAD
=======
import java.util.Optional;
>>>>>>> acaba36658c6555871841431d397125bf3c34c2e

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.webapp.model.Property;
import com.example.webapp.repository.PropertyRepository;

@Service
public class PropertyService {
	
	@Autowired
	PropertyRepository propertyRepository;
	
	public void saveProperty(Property property) {
		
		propertyRepository.save(property);
		
	}
	
	public List<Property> getAllProperty() {
		return propertyRepository.findAll();
	}
<<<<<<< HEAD
=======
	
	public void deleteProp(int id) {
		
		propertyRepository.deleteById(id);
		
	}
	
	public Property getProp(int id) {
		return propertyRepository.getById(id);
		
	}
	
>>>>>>> acaba36658c6555871841431d397125bf3c34c2e
	

}
