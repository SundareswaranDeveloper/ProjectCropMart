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
 * Servlet implementation class CusOrderServlet
 */
@WebServlet("/CusOrderServlet")
public class CusOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productid = (String) request.getParameter("sellid");
		String cusid = (String) request.getParameter("cmid");
		productid = productid.substring(13);
		int cond = Integer.parseInt(request.getParameter("solve"));
		if(cond == 1) {
			LogDb dao = new LogDb();
			int product = Integer.parseInt(productid);
			boolean result = false;
			try {
				result = dao.cart_insert(product, cusid);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(result) {
				request.setAttribute("cmid", cusid );
				RequestDispatcher dispatcher = request.getRequestDispatcher("CartServlet");
			    dispatcher.forward(request, response);
			}
		}else if(cond == 2) {
			LogDb dao = new LogDb();
			int product = Integer.parseInt(productid);
			boolean result = false;
			try {
				result = dao.cart_remove(product, cusid);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(result) {
				request.setAttribute("cmid", cusid );
				RequestDispatcher dispatcher = request.getRequestDispatcher("CartServlet");
			    dispatcher.forward(request, response);
			}
		}else {
		Database db = new Database();
		String[] product = new String[6];
		try {
			product = db.readSearchProduct(productid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("crtid", cusid );
		request.setAttribute("data",product );
		RequestDispatcher dispatcher = request.getRequestDispatcher("CusOrderCon.jsp");
	    dispatcher.forward(request, response);
	    
		}
	}

}
