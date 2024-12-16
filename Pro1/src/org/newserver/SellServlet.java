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
 * Servlet implementation class SellServlet
 */
@WebServlet("/SellServlet")
public class SellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellServlet() {
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
		//doGet(request, response);
		String product = request.getParameter("product");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Float price = Float.parseFloat(request.getParameter("price"));
		String salesend = request.getParameter("sales_end");
		String expiry = request.getParameter("expiry");
		String image = request.getParameter("image");
		String crop = request.getParameter("mart");
		System.out.println(crop + "empty");
		if(crop.isEmpty()) {
			crop = "error";
		}
		SellCheck sc = new SellCheck(product,quantity,price,salesend,expiry,image,crop);
		LogDb db = new LogDb();
		Boolean result = null;
		try {
			result = db.sell_insert(sc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (result) {
			request.setAttribute("crtid",crop);
			RequestDispatcher dispatcher = request.getRequestDispatcher("McServlet");
		    dispatcher.forward(request, response);
			
		} else {
			response.sendRedirect("Index.jsp");
		}
	}

}