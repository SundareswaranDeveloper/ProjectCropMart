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
 * Servlet implementation class CustomerMyOrders
 */
@WebServlet("/CustomerMyOrders")
public class CustomerMyOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerMyOrders() {
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
		String cmid = (String) request.getParameter("cropmart_id");
		try {
		cmid = request.getAttribute("crtid").toString();
		}catch(Exception e) {
			cmid = (String) request.getParameter("cropmart_id");
		}
		System.out.println(cmid);
		Database db = new Database();
		String[][] Order = new String[21][];
		try {
			Order = db.readCustomerOrders(cmid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("cropmart_id", cmid);
		request.setAttribute("productcount", Order[0]);
		request.setAttribute("productname", Order[1]);
		request.setAttribute("productid", Order[2]);
		request.setAttribute("productqty", Order[3]);
		request.setAttribute("productprice", Order[4]);
		request.setAttribute("productexpiry", Order[5]);
		request.setAttribute("productimage", Order[6]);
		request.setAttribute("cus_name", Order[7]);
		request.setAttribute("cus_mobile", Order[8]);
		request.setAttribute("cus_address", Order[9]);
		request.setAttribute("cus_pincode", Order[10]);
		request.setAttribute("cus_landmark", Order[11]);
		request.setAttribute("order_id", Order[12]);
		request.setAttribute("order_status", Order[13]);
		request.setAttribute("order_date", Order[14]);
		request.setAttribute("order_time", Order[15]);
		request.setAttribute("order_delivery", Order[16]);
		request.setAttribute("cus_otp", Order[17]);
		request.setAttribute("cus_reason", Order[18]);
		request.setAttribute("delivery_date", Order[19]);
		request.setAttribute("delivery_time", Order[20]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerMyOrderPage.jsp");
	    dispatcher.forward(request, response);
	}

}
