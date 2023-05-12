package BloodBankServlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.BloodBankDao;
import com.dao.MedicineDao;
import com.db.DBConnect;
import com.entity.BloodBank;

import java.io.*;

@WebServlet("/bloodbank")
public class BloodBankServlet extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    // Get data from the form
   
   try {
	   
	    String donorname = request.getParameter("name");
	    int donorage = Integer.parseInt(request.getParameter("age"));
	    String donorgender = request.getParameter("gender");
	    double donorweight = Double.parseDouble(request.getParameter("weight"));
	    String donationdate = request.getParameter("donation_date");
	    String expirydate = request.getParameter("exp_date");
	    String bloodbagid = request.getParameter("b_b_id");
	    String storagelocation = request.getParameter("location");
	    String bloodgroup = request.getParameter("b_group");
	    
	    System.out.print(donorname);
	    System.out.print(donorage);
	    System.out.print(donorgender);
	    System.out.print(donorweight);
	    System.out.print(donationdate);
	    System.out.print(expirydate);
	    System.out.print(bloodbagid);
	    System.out.print(storagelocation);
	    System.out.print(bloodgroup);
	    

	    BloodBank bloodBank = new BloodBank(donorname, donorage, donorgender, donorweight, donationdate, expirydate, bloodbagid, storagelocation, bloodgroup);
	    HttpSession session = request.getSession();
	
		BloodBankDao dao = new BloodBankDao(DBConnect.getConn());
		boolean f = dao.addDonorInformation(bloodBank);
		System.out.println(f);
		if(f)
		{
			session.setAttribute("sucMsg", "BloodBank Information added successfully");
			response.sendRedirect("bloodbank.jsp");
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

