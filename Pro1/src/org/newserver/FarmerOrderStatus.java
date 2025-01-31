package org.newserver;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FarmerOrderStatus")
public class FarmerOrderStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmid = (String) request.getParameter("cropmartid");
		String orderid = (String) request.getParameter("order-id-demo");
		String guide = (String) request.getParameter("clue");
		int way = 0;
		if(guide.equals("4")) {
			guide = "2";
		}
		LogDb db = new LogDb();
		boolean result = false;
		switch(guide) {
		case "1" :
			String deliverydate = (String) request.getParameter("deliverydate");
			try {
				result = db.order_accept(deliverydate, orderid);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "2" :
			String reason = (String) request.getParameter("cancelreason");
			try {
				result = db.order_cancel(reason, orderid);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "3" :
			Integer otp = Integer.parseInt(request.getParameter("deliveryotp"));
			try {
				result = db.order_delivery(otp, orderid);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "5" :
			String cancelreason = (String) request.getParameter("cancelreason");
			try {
				result = db.order_cancel_cus(cancelreason, orderid);
			} catch (Exception e) {
				e.printStackTrace();
			}
			way++;
			break;
		}
		if(result) {
			request.setAttribute("cropmart",cmid);
			if(way>0) {
				request.setAttribute("clue",6);
			}else {
				request.setAttribute("clue",8);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("FarmContol");
		    dispatcher.forward(request, response);
		}
	}

}
