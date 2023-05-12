package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Appointment;
import com.entity.DoctorPayroll;

public class DoctorPayrollDao {
	
	private Connection conn;

	public DoctorPayrollDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean insertPayroll(DoctorPayroll dp) {
		boolean f = false;
		try {
			String sql = "insert into doctorpayroll (first_name,last_name,date_of_birth,gender,specialty,years_of_experience,base_salary,bonus) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, dp.getFirstName());
			ps.setString(2,dp.getLastName());
			ps.setString(3,dp.getDateOfBirth());
			ps.setString(4,dp.getGender());
			ps.setString(5,dp.getSpecialty());
			ps.setString(6,dp.getYearsOfExperience());
			ps.setDouble(7,dp.getBaseSalary());
			ps.setDouble(8,dp.getBonus());
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}

}
