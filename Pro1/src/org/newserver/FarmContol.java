package org.newserver;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FarmContol
 */
@WebServlet("/FarmContol")
public class FarmContol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int a = 0;
		int b = 0;
		try {
			a = Integer.parseInt(request.getParameter("avalue"));
		} catch (Exception e) {
			a = (int)request.getAttribute("clue");
			b++;
		}
		String id = (String) request.getParameter("secret");
		if(b > 0) {
			id = (String) request.getAttribute("cropmart");
		}
		if (a==1) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SellProduct.jsp");
		    dispatcher.forward(request, response); 	
		}else if(a==2){
		    	request.setAttribute("crtid",id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("YourProductServlet");
			    dispatcher.forward(request, response);
		}else if(a==3){
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("McServlet");
		    dispatcher.forward(request, response);
		}else if(a==4){
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("TipsServlet");
		    dispatcher.forward(request, response);
		}else if(a==5) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("GovernmentServlet");
		    dispatcher.forward(request, response);		
		}else if(a==6) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerMyOrders");
		    dispatcher.forward(request, response);		
		}else if(a==7) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("CartServlet");
		    dispatcher.forward(request, response);		
		}else if(a==8) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("FarmerOrderServlet");
		    dispatcher.forward(request, response);		
		}else {
			response.sendRedirect("Index.jsp");
		}
	}

}
