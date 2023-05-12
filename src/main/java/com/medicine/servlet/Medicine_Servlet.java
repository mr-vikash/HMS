package com.medicine.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MedicineDao;
import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.Medicine;
import com.entity.User;

@WebServlet("/medicine")
public class Medicine_Servlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			
			String name = req.getParameter("name");
			
			String manufacturer = req.getParameter("manufacturer");
			String dosage = req.getParameter("dosage");
			double price = Integer.parseInt(req.getParameter("price"));
			String patient_name = req.getParameter("patient_name");
			
			System.out.println(name+manufacturer+dosage+price+patient_name);
			
			
			Medicine medicine = new Medicine(name, manufacturer,dosage,price,patient_name);
			HttpSession session = req.getSession();
			System.out.println(medicine.getPatient_name());
			MedicineDao dao = new MedicineDao(DBConnect.getConn());
			boolean f = dao.insert_medicine(medicine);
			if(f)
			{
				session.setAttribute("sucMsg", "Medicine Added  successfully..");
				resp.sendRedirect("medicine.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something went wrong on server..");
				resp.sendRedirect("signup.jsp");
				
			}
			
		} catch (Exception e) {
            
			e.printStackTrace();

		}

	}
}
