package org.newserver;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/YourProductServlet")
public class YourProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("secret");
		Database db = new Database();
		String[][] product = new String[8][];
		try {
			product = db.readYourProduct(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid", id);
		request.setAttribute("count", product[0][0]);
		request.setAttribute("productname", product[1]);
		request.setAttribute("productid", product[2]);
		request.setAttribute("productqty", product[3]);
		request.setAttribute("productprice", product[4]);
		request.setAttribute("productsales", product[5]);
		request.setAttribute("productexpiry", product[6]);
		request.setAttribute("productimg", product[7]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("YProduct.jsp");
		dispatcher.forward(request, response);
		
	}

}
