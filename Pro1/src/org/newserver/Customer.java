package org.newserver;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/Customer")
public class Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cname = request.getParameter("cname");
		
		String pno = request.getParameter("mobile");
		
		String cadd = request.getParameter("cadd");
		String did = "Cropmart ID";
		long mob = Long.parseLong(pno);
		CusCheck i = new CusCheck(cname,mob,cadd);
		LogDb db = new LogDb();
		Database d = new Database();
		try {
			did = d.readCusId();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String pass = did;
		String paramValue = "Customer";
		try {
			if (db.cus_insert(i)) {
				request.setAttribute("map", 0);
				request.setAttribute("account", paramValue);
				request.setAttribute("unique", pass);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Id.jsp");
			    dispatcher.forward(request, response); 
			} else {
				response.sendRedirect("Index.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}
