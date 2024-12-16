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
 * Servlet implementation class EntryServlet
 */
@WebServlet("/EntryServlet")
public class EntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EntryServlet() {
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
		String user = request.getParameter("userid");
		String pass = request.getParameter("password");
		System.out.println("hiii " + "  " + pass);
		EntryCheck ec = new EntryCheck(user,pass);
		Database db = new Database();
		boolean ans = false;
		String a = "F";
		String b = "C";
		int help = 0;
		if (user.startsWith(a)) {
			help = 1;
		} else if(user.startsWith(b)) {
			help = 2;
		}
		try {
			ans = db.readCheck( ec, help);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(ans);
		if (ans) {
			if (help == 1) {
				request.setAttribute("crtid", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("McServlet");
			    dispatcher.forward(request, response); 
			} else {
				request.setAttribute("crtid", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("CusMain.jsp");
			    dispatcher.forward(request, response); 

			}
			
		} else {
			response.sendRedirect("Farmer1.jsp");
		}
	}

}