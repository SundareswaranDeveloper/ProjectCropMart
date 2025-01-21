package org.newserver;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FarmerOrderServlet
 */
@WebServlet("/FarmerOrderServlet")
public class FarmerOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmid = (String) request.getAttribute("crtid");
		Database db = new Database();
		String[][] orders = new String[21][];
		try {
			orders = db.readFarmerOrders(cmid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("crtid", cmid);
		request.setAttribute("productcount", orders[0]);
		request.setAttribute("productname", orders[1]);
		request.setAttribute("productid", orders[2]);
		request.setAttribute("productqty", orders[3]);
		request.setAttribute("productprice", orders[4]);
		request.setAttribute("productexpiry", orders[5]);
		request.setAttribute("productimage", orders[6]);
		request.setAttribute("cus_name", orders[7]);
		request.setAttribute("cus_mobile", orders[8]);
		request.setAttribute("cus_address", orders[9]);
		request.setAttribute("cus_pincode", orders[10]);
		request.setAttribute("cus_landmark", orders[11]);
		request.setAttribute("order_id", orders[12]);
		request.setAttribute("order_status", orders[13]);
		request.setAttribute("order_date", orders[14]);
		request.setAttribute("order_time", orders[15]);
		request.setAttribute("order_delivery", orders[16]);
		request.setAttribute("cus_otp", orders[17]);
		request.setAttribute("cus_reason", orders[18]);
		request.setAttribute("delivery_date", orders[19]);
		request.setAttribute("delivery_time", orders[20]);
		RequestDispatcher dispatcher = request.getRequestDispatcher("FarmerOrders.jsp");
	    dispatcher.forward(request, response);
	}

}
