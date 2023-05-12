package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.DoctorPayrollDao;
import com.db.DBConnect;
import com.entity.Doctor;
import com.entity.DoctorPayroll;
@WebServlet("/payroll")
public class DoctorPayrollServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			
			
		    String firstName = request.getParameter("fname");
		    String lastName = request.getParameter("lname");
		    String dateOfBirth = request.getParameter("dob");
		    String gender = request.getParameter("gender");
		    String specialty = request.getParameter("speciality");
		    String yearsOfExperience = request.getParameter("year_of_experience");
		    double baseSalary =  Double.parseDouble(request.getParameter("base_salary"));
		    double bonus = Double.parseDouble(request.getParameter("bonus"));
			DoctorPayroll dp = new DoctorPayroll(firstName,lastName,dateOfBirth,gender,specialty,yearsOfExperience,baseSalary,bonus);
			
			DoctorPayrollDao dao = new DoctorPayrollDao(DBConnect.getConn());
			
			HttpSession session = request.getSession();
			
			boolean f = dao.insertPayroll(dp);
			if(f)
			{
				session.setAttribute("sucMsg", "Hospital Staff Payroll Added  successfully..");
				response.sendRedirect("admin/doctorpayroll.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something went wrong on server..");
				response.sendRedirect("signup.jsp");
				
			}
			
		} catch (Exception e) {
            
			e.printStackTrace();

		}
	}
}
