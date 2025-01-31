package org.newserver;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/McServlet")
public class McServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[][] info = new String[4][];
		Database db = new Database();
		String id = (String)request.getAttribute("crtid");
		try {
			info = db.readCorner();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid",id);
		request.setAttribute("count",info[0][0]);
		request.setAttribute("data-info",info[1]);
		request.setAttribute("date-info",info[2]);
		request.setAttribute("time-info",info[3]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Farmer2.jsp");
	    dispatcher.forward(request, response);
		
		}
	}
