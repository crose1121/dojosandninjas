package com.rose.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rose.dojosandninjas.models.Dojo;
import com.rose.dojosandninjas.models.Ninja;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {
	List<Dojo> findAll();
	List<Dojo> findByNameContaining(String search);
}
