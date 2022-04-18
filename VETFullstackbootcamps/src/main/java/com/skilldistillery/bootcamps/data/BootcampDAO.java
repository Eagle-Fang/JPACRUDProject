package com.skilldistillery.bootcamps.data;

import java.util.List;

import com.skilldistillery.bootcamps.entities.Bootcamp;

public interface BootcampDAO {

	public Bootcamp findById (int bootcampId);


	public Bootcamp addBootcamp (Bootcamp bootcamp);
	
//	public List<Bootcamp> listOfBootcampByStates (String Name);
	
	public List<Bootcamp> listOfAllBootcamps ();

	List<Bootcamp> listOfBootcampByName (String Name);
	
	
	public Bootcamp findByName (String name);
	
	public Bootcamp updateBootcampInfo (Bootcamp bootcamp); // delete
	public boolean deleteBootcamp (Bootcamp bootcamp, int id); // delete

	boolean bootcampDelete (int id);// delete method
	
	public List<Bootcamp> findAll();
	
}
