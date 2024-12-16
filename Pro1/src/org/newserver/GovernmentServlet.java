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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GovernmentServlet() {
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
		String tip = "Loading...";
		Database d = new Database();
		List<Object> store = new ArrayList<Object>();
		String id = (String)request.getAttribute("crtid");
		request.setAttribute("crtid",id);
		request.setAttribute("Scheme1",tip);
		request.setAttribute("Scheme2",tip);
		request.setAttribute("Scheme3",tip);
		request.setAttribute("Scheme4",tip);
		request.setAttribute("Scheme5",tip);
		
		try {
			store = d.readGschemes();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer c = (Integer) store.get(0);
		request.setAttribute("count",c);
		if (c>=1) {
			request.setAttribute("Scheme1",store.get(1));
			if (c>=2) {
				request.setAttribute("Scheme2",store.get(2));
				if (c>=3) {
					request.setAttribute("Scheme3",store.get(3));
					if (c>=4) {
						request.setAttribute("Scheme4",store.get(4));
						if (c>=5) {
							request.setAttribute("Scheme5",store.get(5));

						}
					}
				}
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("Schemes.jsp");
	    dispatcher.forward(request, response);
		}else {
			System.out.println("ERROR");
		}
		
		}
		
	}


