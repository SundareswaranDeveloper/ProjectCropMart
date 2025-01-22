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

/**
 * Servlet implementation class YourProductServlet
 */
@WebServlet("/YourProductServlet")
public class YourProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public YourProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String id = request.getParameter("secret");
		request.setAttribute("crtid", id);
		request.setAttribute("pn1n", null);
		request.setAttribute("pq1n", null);
		request.setAttribute("pp1n", null);
		request.setAttribute("pi1n", null);
		request.setAttribute("pn2n", null);
		request.setAttribute("pq2n", null);
		request.setAttribute("pp2n", null);
		request.setAttribute("pi2n", null);
		request.setAttribute("pn3n", null);
		request.setAttribute("pq3n", null);
		request.setAttribute("pp3n", null);
		request.setAttribute("pi3n", null);
		Database db = new Database();
		List<Object> li = new ArrayList<Object>();
		try {
			li = db.readYour(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer c = (Integer) li.get(0);
		request.setAttribute("tp", c);
		if (c >= 1) {
				
				request.setAttribute("pn1n", li.get(1));
				request.setAttribute("pq1n", li.get(2));
				request.setAttribute("pp1n", li.get(3));
				request.setAttribute("pi1n", li.get(4));
				if (c >= 2) {

					request.setAttribute("pn2n", li.get(5));
					request.setAttribute("pq2n", li.get(6));
					request.setAttribute("pp2n", li.get(7));
					request.setAttribute("pi2n", li.get(8));
				if (c >= 3) {

					request.setAttribute("pn3n", li.get(9));
					request.setAttribute("pq3n", li.get(10));
					request.setAttribute("pp3n", li.get(11));
					request.setAttribute("pi3n", li.get(12));
					}
				}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("YProduct.jsp");
			dispatcher.forward(request, response);
		} else {
			System.out.println("bye");
		}
	}*/
	
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
