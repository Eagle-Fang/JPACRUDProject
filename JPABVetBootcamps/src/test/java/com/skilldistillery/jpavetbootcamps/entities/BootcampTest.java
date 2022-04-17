package com.skilldistillery.jpavetbootcamps.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpavetbootcamps.entities.Bootcamp;

class BootcampTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Bootcamp vetbootcamp;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAVetBootcamps");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		vetbootcamp = em.find(Bootcamp.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		vetbootcamp = null;
	}

	@Test
	void test_bootcampt_entity_mapping() {
		assertNotNull(vetbootcamp);
		assertEquals("Skill Distillery", vetbootcamp.getName());
	}

}
