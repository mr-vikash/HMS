package com.entity;

import java.math.BigDecimal;

public class BloodBank {
    
    private String donorName;
    private int donorAge;
    private String donorGender;
    private double donorWeight;
    private String donationDate;
    private String expiryDate;
    private String bloodBagId;
    private String storageLocation;
    private String bloodGroup;
    
   

    public BloodBank( String donorName, int donorAge, String donorGender, 
                     double donorWeight, String donationDate, String expiryDate, String bloodBagId, 
                     String storageLocation, String bloodGroup  ) {
        
        this.donorName = donorName;
        this.donorAge = donorAge;
        this.donorGender = donorGender;
        this.donorWeight = donorWeight;
        this.donationDate = donationDate;
        this.expiryDate = expiryDate;
        this.bloodBagId = bloodBagId;
        this.storageLocation = storageLocation;
        this.bloodGroup = bloodGroup;
     
    }

    // Getters and setters for all the fields
    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getDonorName() {
        return donorName;
    }

    public void setDonorName(String donorName) {
        this.donorName = donorName;
    }

    public int getDonorAge() {
        return donorAge;
    }

    public void setDonorAge(int donorAge) {
        this.donorAge = donorAge;
    }

    public String getDonorGender() {
        return donorGender;
    }

    public void setDonorGender(String donorGender) {
        this.donorGender = donorGender;
    }

    public double getDonorWeight() {
        return donorWeight;
    }

    public double setDonorWeight(double donorWeight) {
        return this.donorWeight = donorWeight;
    }

    public String getDonationDate() {
        return donationDate;
    }

    public void setDonationDate(String donationDate) {
        this.donationDate = donationDate;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getBloodBagId() {
        return bloodBagId;
    }

    public void setBloodBagId(String bloodBagId) {
        this.bloodBagId = bloodBagId;
    }

    public String getStorageLocation() {
        return storageLocation;
    }

    public void setStorageLocation(String storageLocation) {
        this.storageLocation = storageLocation;
    }

  
}
