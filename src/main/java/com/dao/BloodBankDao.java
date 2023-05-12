package com.dao;

import java.sql.*;
import java.sql.PreparedStatement;



import com.entity.BloodBank;
public class BloodBankDao {
	
	private Connection conn;

	public BloodBankDao(Connection conn) {
		super();
		this.conn = conn;
	}

			public boolean addDonorInformation(BloodBank b) {
				boolean f = false;
				try {
					String sql = "insert into bloodbank(DonorName, DonorAge, DonorGender, DonorWeight, DonationDate, ExpiryDate, BloodBagID, StorageLocation, BloodGroup) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
					PreparedStatement ps = conn.prepareStatement(sql);
					ps.setString(1, b.getDonorName());
					ps.setInt(2, b.getDonorAge());
					ps.setString(3, b.getDonorGender());
					ps.setDouble(4, b.getDonorWeight());
					ps.setString(5, b.getDonationDate());
					ps.setString(6, b.getExpiryDate());
					ps.setString(7, b.getBloodBagId());
					ps.setString(8, b.getStorageLocation());
					ps.setString(9, b.getBloodGroup());
					System.out.println(b.getDonorGender());

					int i = ps.executeUpdate();
					{
						if(i==1)
						{
							f=true;
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				return f;
				
			}
			
		

}
