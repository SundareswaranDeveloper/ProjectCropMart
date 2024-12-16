package org.newserver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewUser
 */
@WebServlet("/NewUser")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewUser() {
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
		String cid = request.getParameter("u_id");
		String c = "Customer";
		String f = "Farmer";
		
		Integer connect = Integer.parseInt(request.getParameter("key"));
		String user = request.getParameter("account");
		String pcheck = request.getParameter("pcheck");
		String checkp = request.getParameter("checkp");
		UserCheck uc = new UserCheck(cid, checkp, connect);
		LogDb db = new LogDb();
		if (user.equals(c)) {
			if (pcheck.equals(checkp)) {
				try {
					if (db.id_insert(uc,user)) {
						response.sendRedirect("Log.jsp");
					} else {
						response.sendRedirect("Demo1.jsp");
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		} else if (user.equals(f)) {
			if (pcheck.equals(checkp)) {
				try {
					if (db.id_insert(uc,user)) {
						response.sendRedirect("Log.jsp");
					} else {
						response.sendRedirect("Index.jsp");
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}

	}

}
