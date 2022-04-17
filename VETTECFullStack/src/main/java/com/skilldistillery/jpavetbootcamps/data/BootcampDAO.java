package com.skilldistillery.jpavetbootcamps.data;

import com.skilldistillery.jpavetbootcamps.entities.Bootcamp;

public interface BootcampDAO {
		
	
	public Bootcamp findById (int bootcampId);
		
	public Bootcamp findByName (String name);
	
	
}
