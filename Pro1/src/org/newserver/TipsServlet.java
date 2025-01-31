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
 * Servlet implementation class TipsServlet
 */
@WebServlet("/TipsServlet")
public class TipsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String[][] tips = new String[4][];
		Database db = new Database();
		String id = (String)request.getAttribute("crtid");
		try {
			tips = db.readTips();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid",id);
		request.setAttribute("count",tips[0][0]);
		request.setAttribute("data-tip",tips[1]);
		request.setAttribute("date-tip",tips[2]);
		request.setAttribute("time-tip",tips[3]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Tips.jsp");
	    dispatcher.forward(request, response);
		
		}
	
	
	}
