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
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String cmid = request.getParameter("cid");
		String Location = request.getParameter("cond1");
		String Product = request.getParameter("cond2");
		Database db = new Database();
		
		String[][] info = new String[15][];
		
		try {
			info = db.readSearchCountNew(Location, Product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("crtid", cmid);
		request.setAttribute("sproduct", Product);
		request.setAttribute("slocation", Location);
		request.setAttribute("productname", info[1]);
		request.setAttribute("productid", info[2]);
		request.setAttribute("productqty", info[3]);
		request.setAttribute("productprice", info[4]);
		request.setAttribute("productsales", info[5]);
		request.setAttribute("productexpiry", info[6]);
		request.setAttribute("productimg", info[7]);
		
		
		request.setAttribute("stockname", info[8]);
		request.setAttribute("stockid", info[9]);
		request.setAttribute("stockqty", info[10]);
		request.setAttribute("stockprice", info[11]);
		request.setAttribute("stocksales", info[12]);
		request.setAttribute("stockexpiry", info[13]);
		request.setAttribute("stockimg", info[14]);
		
		request.setAttribute("total1", info[0][0]);
		request.setAttribute("total2", info[0][1]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("CheckTrail.jsp");
	    dispatcher.forward(request, response);
	}


}
