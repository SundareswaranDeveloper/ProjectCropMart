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
 * Servlet implementation class TipsServlet
 */
@WebServlet("/TipsServlet")
public class TipsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TipsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		/*System.out.println("welcome");
		Database d = new Database();
		String id = (String)request.getAttribute("crtid");
		String tip = "Loading...";
		try {
			tip = d.readTips();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("tips is " + tip);
		request.setAttribute("crtid",id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Tips.jsp");
	    dispatcher.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		/*Database d = new Database();
		String tip = "Loading...";
		try {
			tip = d.readTips();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("Tips.jsp?paramName= " + tip);
		*/
		System.out.println("welcome");
		String tip = "Loading...";
		Database d = new Database();
		List<Object> list = new ArrayList<Object>();
		String id = (String)request.getAttribute("crtid");
		request.setAttribute("crtid",id);
		request.setAttribute("tip1",tip);
		request.setAttribute("tip2",tip);
		request.setAttribute("tip3",tip);
		request.setAttribute("tip4",tip);
		request.setAttribute("tip5",tip);
		
		try {
			list = d.readTips();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer c = (Integer) list.get(0);
		request.setAttribute("count",c);
		if (c>=1) {
			request.setAttribute("tip1",list.get(1));
			if (c>=2) {
				request.setAttribute("tip2",list.get(2));
				if (c>=3) {
					request.setAttribute("tip3",list.get(3));
					if (c>=4) {
						request.setAttribute("tip4",list.get(4));
						if (c>=5) {
							request.setAttribute("tip5",list.get(5));

						}
					}
				}
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("Tips.jsp");
	    dispatcher.forward(request, response);
		}else {
			System.out.println("ERROR");
		}
		
		}
	}
