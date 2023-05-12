package com.entity;

public class DoctorPayroll {
	  
	  private String firstName;
	  private String lastName;
	  private String dateOfBirth;
	  private String gender;
	  private String specialty;
	  private String yearsOfExperience;
	  private double baseSalary;
	  private double bonus;
	  
	  public DoctorPayroll(String firstName, String lastName, String dateOfBirth, String gender, String specialty,
			String yearsOfExperience, double baseSalary, double bonus) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.specialty = specialty;
		this.yearsOfExperience = yearsOfExperience;
		this.baseSalary = baseSalary;
		this.bonus = bonus;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getYearsOfExperience() {
		return yearsOfExperience;
	}
	public void setYearsOfExperience(String yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}
	public double getBaseSalary() {
		return baseSalary;
	}
	public void setBaseSalary(double baseSalary) {
		this.baseSalary = baseSalary;
	}
	public double getBonus() {
		return bonus;
	}
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

	  // getters and setters
	  
	  
	}