package com.entites;

public class PersonInsert {
	private int person_id;
	private String first_name;
	private String last_name;
	private String fathers_name;
	private String mothers_name;
	private String fav_color;
	private String hobbies;
	private String date_of_birth;
	private String gender;
	private String email;
	

	public PersonInsert() {
		super();
		// TODO Auto-generated constructor stub
	}


	public PersonInsert(int person_id, String first_name, String last_name, String fathers_name, String mothers_name,
			String fav_color, String hobbies, String date_of_birth, String gender, String email) {
		super();
		this.person_id = person_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.fathers_name = fathers_name;
		this.mothers_name = mothers_name;
		this.fav_color = fav_color;
		this.hobbies = hobbies;
		this.date_of_birth = date_of_birth;
		this.gender = gender;
		this.email = email;
	}

	
	public PersonInsert(String first_name, String last_name, String fathers_name, String mothers_name, String fav_color,
			String hobbies, String date_of_birth, String gender, String email) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.fathers_name = fathers_name;
		this.mothers_name = mothers_name;
		this.fav_color = fav_color;
		this.hobbies = hobbies;
		this.date_of_birth = date_of_birth;
		this.gender = gender;
		this.email = email;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getFathers_name() {
		return fathers_name;
	}

	public void setFathers_name(String fathers_name) {
		this.fathers_name = fathers_name;
	}

	public String getMothers_name() {
		return mothers_name;
	}

	public void setMothers_name(String mothers_name) {
		this.mothers_name = mothers_name;
	}

	public String getFav_color() {
		return fav_color;
	}

	public void setFav_color(String fav_color) {
		this.fav_color = fav_color;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
