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
 * Servlet implementation class McServlet
 */
@WebServlet("/McServlet")
public class McServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public McServlet() {
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
		System.out.println("welcome");
		String tip = "Loading..Data...";
		Database d = new Database();
		List<Object> listMc = new ArrayList<Object>();
		String id = (String)request.getAttribute("crtid");
		request.setAttribute("crtid",id);
		request.setAttribute("data1",tip);
		request.setAttribute("data2",tip);
		request.setAttribute("data3",tip);
		request.setAttribute("data4",tip);
		request.setAttribute("data5",tip);
		
		try {
			listMc = d.readMc();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer c = (Integer) listMc.get(0);
		request.setAttribute("count",c);
		if (c>=1) {
			request.setAttribute("data1",listMc.get(1));
			if (c>=2) {
				request.setAttribute("data2",listMc.get(2));
				if (c>=3) {
					request.setAttribute("data3",listMc.get(3));
					if (c>=4) {
						request.setAttribute("data4",listMc.get(4));
						if (c>=5) {
							request.setAttribute("data5",listMc.get(5));

						}
					}
				}
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("Farmer2.jsp");
	    dispatcher.forward(request, response);
		}else {
			System.out.println("ERROR");
		}
		
	}

}
