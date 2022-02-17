package com.rose.dojosandninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rose.dojosandninjas.models.Dojo;
import com.rose.dojosandninjas.models.Ninja;
import com.rose.dojosandninjas.repositories.DojoRepository;
import com.rose.dojosandninjas.repositories.NinjaRepository;

@Service
public class DojoService {
	
	@Autowired
	DojoRepository dojoRepository;
	@Autowired
	NinjaRepository ninjaRepository;

	
//	query methods
//	find all dojos
	public List<Dojo> findAllDojos(){
		return dojoRepository.findAll();
	}
	
	//find all ninjas
	public List<Ninja> findAllNinjas(){
		return ninjaRepository.findAll();
	}
	//find one Dojo
	public Dojo findOneDojo(Long id) {
		return dojoRepository.findById(id).orElse(null);
	}
	//create Dojo
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	//create Ninja
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
}
