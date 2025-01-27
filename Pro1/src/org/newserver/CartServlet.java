package org.newserver;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusid = "Customer Cropmart ID";
		try {
			cusid = (String) request.getParameter("secret").trim();	
		} catch (Exception e) {
			cusid = (String) request.getAttribute("cmid");
		}
		Database db = new Database();
		String[][] cart = new String[8][];
		try {
			cart = db.readCart(cusid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("crtid", cusid);
		request.setAttribute("count", cart[0][0]);
		request.setAttribute("productname", cart[1]);
		request.setAttribute("productid", cart[2]);
		request.setAttribute("productqty", cart[3]);
		request.setAttribute("productprice", cart[4]);
		request.setAttribute("productsales", cart[5]);
		request.setAttribute("productexpiry", cart[6]);
		request.setAttribute("productimg", cart[7]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Cart.jsp");
	    dispatcher.forward(request, response);
	}

}
