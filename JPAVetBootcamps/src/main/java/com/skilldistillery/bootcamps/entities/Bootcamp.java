package com.skilldistillery.bootcamps.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bootcamp {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "City_primary")
	private String city;

	@Column(name = "State_primary")
	private String state;

	@Column(name = "Primary_language")
	private String language;

	@Column(name = "Duration_weeks")
	private Integer duration;

	@Column(name = "Max_Stipend")
	private Integer maxStipend;

	@Column(name = "Class_venue")
	private String venue;

	private String name;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getMaxStipend() {
		return maxStipend;
	}

	public void setMaxStipend(Integer maxStipend) {
		this.maxStipend = maxStipend;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public Bootcamp() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Bootcamp [id=" + id + ", city=" + city + ", state=" + state + ", language=" + language + ", duration="
				+ duration + ", maxStipend=" + maxStipend + ", venue=" + venue + ", name=" + name + "]";
	}

}
