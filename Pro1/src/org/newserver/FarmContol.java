package org.newserver;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FarmContol
 */
@WebServlet("/FarmContol")
public class FarmContol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FarmContol() {
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
		int a = Integer.parseInt(request.getParameter("avalue"));
		String id = request.getParameter("secret");
		if (a==1) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SellProduct.jsp");
		    dispatcher.forward(request, response); 	
		}else if(a==2){
		    	request.setAttribute("crtid",id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("YourProductServlet");
			    dispatcher.forward(request, response);
		}else if(a==3){
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("McServlet");
		    dispatcher.forward(request, response);
		}else if(a==4){
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("TipsServlet");
		    dispatcher.forward(request, response);
		}else if(a==5) {
			request.setAttribute("crtid",id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("GovernmentServlet");
		    dispatcher.forward(request, response);		}else {
			response.sendRedirect("Index.jsp");
		}
	}

}
