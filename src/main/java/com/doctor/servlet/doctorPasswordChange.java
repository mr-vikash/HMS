package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DBConnect;

@WebServlet("/doctPasswordChange")
public class doctorPasswordChange extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("uid"));
		String oldPassword = req.getParameter("oldpassword");
		String newPassword = req.getParameter("newpassword");
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		HttpSession session = req.getSession();
		if(dao.checkOldPassword(id, oldPassword))
		{
			if(dao.changePassword(id, newPassword))
			{
				session.setAttribute("sucMsg", "Password Changed Successfully");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something went wrong on server");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
		}
		else
		{
			session.setAttribute("errorMsg", "Old Password is Incorrect..");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
	}
	
}
