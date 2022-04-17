package com.skilldistillery.bootcamps.entities;
	
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

	class BootcampTest {

		private static EntityManagerFactory emf;
		private EntityManager em;
		private Bootcamp bootcamp;

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
			bootcamp = em.find(Bootcamp.class, 1);
		}

		@AfterEach
		void tearDown() throws Exception {
			em.close();
			bootcamp = null;
		}

		@Test
		void test_bootcampt_entity_mapping() {
			assertNotNull(bootcamp);
			assertEquals("Skill Distillery", bootcamp.getName());
		}

	}

