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
 * Servlet implementation class GovernmentServlet
 */
@WebServlet("/GovernmentServlet")
public class GovernmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[][] schemes = new String[4][];
		Database db = new Database();
		String id = (String)request.getAttribute("crtid");
		try {
			schemes = db.readSchemes();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid",id);
		request.setAttribute("count",schemes[0][0]);
		request.setAttribute("data-scheme",schemes[1]);
		request.setAttribute("date-scheme",schemes[2]);
		request.setAttribute("time-scheme",schemes[3]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Schemes.jsp");
	    dispatcher.forward(request, response);
		
		}
		
	}


