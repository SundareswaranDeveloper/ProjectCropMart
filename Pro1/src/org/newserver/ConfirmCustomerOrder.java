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
 * Servlet implementation class ConfirmCustomerOrder
 */
@WebServlet("/ConfirmCustomerOrder")
public class ConfirmCustomerOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmCustomerOrder() {
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
		String cmid = request.getParameter("cropmart_id");
		String condition = request.getParameter("ref_condition");
		if(condition.isEmpty()) {
			request.setAttribute("crtid", cmid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("CusMain.jsp");
		    dispatcher.forward(request, response);
		}else {
			Integer product_id = Integer.parseInt(request.getParameter("p_id"));
			String Customer_name = request.getParameter("customer_name");
			Long phone_number = Long.parseLong(request.getParameter("mobile_number"));
			String address = request.getParameter("address");
			String pincode = request.getParameter("Pincode");
			String landmark = request.getParameter("landmark");
			LogDb db = new LogDb();
			boolean upload = false;
			try {
				upload = db.order_insert(product_id,Customer_name,phone_number,address,pincode,landmark,cmid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(upload) {
				request.setAttribute("crtid", cmid);
				RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerMyOrders");
			    dispatcher.forward(request, response);
			}
		}
		
	}
	

}
