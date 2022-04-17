package com.skilldistillery.jpavetbootcamps.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpavetbootcamps.entities.Bootcamp;

@Service
@Transactional
public class BootcampDAOImpl implements BootcampDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Bootcamp findById(int bootcampId) {
		return em.find(Bootcamp.class, bootcampId);
	}

	@Override
	public Bootcamp findByName(String name) {
		return null;
	}

}
