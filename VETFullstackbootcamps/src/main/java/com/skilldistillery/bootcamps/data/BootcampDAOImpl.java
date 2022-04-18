package com.skilldistillery.bootcamps.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bootcamps.entities.Bootcamp;

@Service
@Transactional
public class BootcampDAOImpl implements BootcampDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Bootcamp findById(Integer bootcampId) {
		return em.find(Bootcamp.class, bootcampId);
	}

	@Override
	public List<Bootcamp> findAll() {
		String jpql = "SELECT b from Bootcamp b";
		List<Bootcamp> bootcamps = em.createQuery(jpql, Bootcamp.class).getResultList();
		return bootcamps;
	}

	@Override
	public Bootcamp findByName(String bootcampName) {
		return em.find(Bootcamp.class, bootcampName);
	}

	@Override
	public Bootcamp addBootcamp(Bootcamp bootcamp) {
		em.persist(bootcamp);
		return bootcamp;
	}


	@Override
	public List<Bootcamp> listOfAllBootcamps() {
		return em.createQuery("SELECT b FROM Bootcamp b", Bootcamp.class)
				.getResultList();
	}

	@Override
	public List<Bootcamp> listOfBootcampByName(String Name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Bootcamp updateBootcampInfo(Bootcamp bootcamp) {
		Bootcamp updateBootcampDetails = em.find(Bootcamp.class, bootcamp.getId());
		updateBootcampDetails.setCity(bootcamp.getCity());
		updateBootcampDetails.setLanguage(bootcamp.getLanguage());
		updateBootcampDetails.setDuration(bootcamp.getDuration());
		updateBootcampDetails.setState(bootcamp.getState());
		updateBootcampDetails.setVenue(bootcamp.getVenue());
		updateBootcampDetails.setMaxStipend(bootcamp.getMaxStipend());
		return updateBootcampDetails;
	}

	@Override
	public boolean deleteBootcamp (Bootcamp bootcamp, int id) {
		bootcamp = em.find(Bootcamp.class, id);
		boolean success = false;
		//		em.remove(bootcamp);
//		return (em.find(Bootcamp.class, id) == null);
		
		if (bootcamp !=null) { 
//			em.getTransaction().begin();
			em.remove(bootcamp);
			em.flush();
			
			success = !em.contains(bootcamp);
		}

		return success;
	
			
	
	}

	@Override
	public boolean bootcampDelete(int id) {
		
		return false;
	}

}
