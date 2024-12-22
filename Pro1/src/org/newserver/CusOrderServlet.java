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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CusOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String productid = (String) request.getParameter("sellid");
		String cusid = (String) request.getParameter("cmid");
		String district = (String) request.getParameter("location");
		Database db = new Database();
		productid = productid.substring(13);
		String[] product = new String[6];
		try {
			product = db.readSearchProduct(productid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid", cusid );
		request.setAttribute("location", district );
		request.setAttribute("data",product );
		RequestDispatcher dispatcher = request.getRequestDispatcher("CusOrderCon.jsp");
	    dispatcher.forward(request, response);
	}

}
