package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			
			
			
			User user = new User(fullName,email,password);
			HttpSession session = req.getSession();
			
			UserDao dao = new UserDao(DBConnect.getConn());
			boolean f = dao.register(user);
			if(f)
			{
				session.setAttribute("sucMsg", "Register successfully..");
				resp.sendRedirect("signup.jsp");
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
