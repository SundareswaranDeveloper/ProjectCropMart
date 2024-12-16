
package org.newserver;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.newserver.LogDb;
import org.newserver.LoginCheck;

/**
 * Servlet implementation class LogServlet
 */
@WebServlet("/LogServlet")
public class LogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String name = request.getParameter("name");
		String ph = request.getParameter("mobile");
		String landno = request.getParameter("landno");
		String landadd = request.getParameter("landadd");
		String landDist = request.getParameter("landDist");
		String add = request.getParameter("add");
		long num = Long.parseLong(ph);
		LoginCheck i = new LoginCheck(name,num, landno, landadd, landDist, add);
		LogDb db = new LogDb();
		Database d = new Database();
		String did = "sorry";
		int[] res = new int[2];
		try {
			did = d.readId();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String pass = did;
		String paramValue = "Farmer";
		try {
			res= db.insert(i);
			if (res[0] > 0) {
				request.setAttribute("map", res[1]);
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
