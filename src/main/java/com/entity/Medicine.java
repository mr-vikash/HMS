package com.entity;

public class Medicine {
    private int id;
    private String name;
    private String manufacturer;
    private String dosage;
    private String patient_name;
    private double price;
    
    public Medicine( String name,  String manufacturer, String dosage, double price,String patient_name) {
        this.name = name;
        this.manufacturer = manufacturer;
        this.dosage = dosage;
        this.price = price;
        this.patient_name = patient_name;
    }
    
    // getters and setters for all input fields
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
    public String getManufacturer() {
        return manufacturer;
    }
    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }
    public String getDosage() {
        return dosage;
    }
    public void setDosage(String dosage) {
        this.dosage = dosage;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }


	public String getPatient_name() {
		return patient_name;
	}

	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
}

