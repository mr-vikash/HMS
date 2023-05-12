package com.dao;

import java.sql.PreparedStatement;

import com.entity.Medicine;
import com.entity.User;
import java.sql.Connection;

public class MedicineDao {
	
	private Connection  conn;

	public MedicineDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean insert_medicine(Medicine m)
	{
		boolean f = false;
		
		try {
			String sql="insert into medicine(name,manufacturer,price,dosage,patient_name) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setString(2, m.getManufacturer());
			ps.setDouble(3, m.getPrice());
			ps.setString(4, m.getDosage());
			ps.setString(5, m.getPatient_name());
			int i = ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {

           e.printStackTrace();
		}
		return f;
	}

}
