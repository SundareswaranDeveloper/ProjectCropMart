package org.newserver;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String cmid = request.getParameter("cid");
		String Location = request.getParameter("cond1");
		String Product = request.getParameter("cond2");
		Database db = new Database();
		
		List cuslist = new ArrayList();
		try {
			cuslist = db.readSearch(Location, Product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(cuslist);
		request.setAttribute("crtid", cmid);
		request.setAttribute("sproduct", Product);
		request.setAttribute("slocation", Location);
		request.setAttribute("p1n", cuslist.get(1));
		request.setAttribute("p1id", cuslist.get(2));
		request.setAttribute("p1q", cuslist.get(3));
		request.setAttribute("p1p", cuslist.get(4));
		request.setAttribute("p1s", cuslist.get(5));
		request.setAttribute("p1e", cuslist.get(6));
		request.setAttribute("p1i", cuslist.get(7));
		RequestDispatcher dispatcher = request.getRequestDispatcher("CusPage.jsp");
	    dispatcher.forward(request, response);
	}
*/	
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String cmid = request.getParameter("cid");
		String Location = request.getParameter("cond1");
		String Product = request.getParameter("cond2");
		Database db = new Database();
		List[] values = new List[15];
		String[][] info = new String[15][];
		//List cuslist = new ArrayList();
		try {
			values = db.readSearchCount(Location, Product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			info = db.readSearchCountNew(Location, Product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int c1 = (int) values[0].get(0);
		int c2 = (int) values[0].get(1);
		//System.out.println(cuslist);
		request.setAttribute("crtid", cmid);
		request.setAttribute("sproduct", Product);
		request.setAttribute("slocation", Location);
		request.setAttribute("slocation1", Location);
		System.out.println(values[1].get(0));
		for(String[] j: info) {
			for(String k : j) {
				System.out.println(k);
			}
		}
		String[] str = new String[3];
		str[0] = "str";
		str[1] = "tr";
		str[2] = "train";
		request.setAttribute("stars", info[1]);
		
		request.setAttribute("data", values);
		
		request.setAttribute("total1", c1);
		request.setAttribute("total2", c2);
		System.out.println(c1);
		/*
		request.setAttribute("p1n", values[1].get(0)); //
		request.setAttribute("p1id", values[2].get(0));
		request.setAttribute("p1q", values[3].get(0));
		request.setAttribute("p1p", values[4].get(0));
		request.setAttribute("p1s", values[5].get(0));
		request.setAttribute("p1e", values[6].get(0));
		request.setAttribute("p1i", values[7].get(0));
		request.setAttribute("ap1n", values[8].get(0)); //
		request.setAttribute("ap1id", values[9].get(0));
		request.setAttribute("ap1q", values[10].get(0));
		request.setAttribute("ap1p", values[11].get(0));
		request.setAttribute("ap1s", values[12].get(0));
		request.setAttribute("ap1e", values[13].get(0));
		request.setAttribute("ap1i", values[14].get(0));*/
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("CheckTrail.jsp");
	    dispatcher.forward(request, response);
	}*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String cmid = request.getParameter("cid");
		String Location = request.getParameter("cond1");
		String Product = request.getParameter("cond2");
		Database db = new Database();
		
		String[][] info = new String[15][];
		
		try {
			info = db.readSearchCountNew(Location, Product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("crtid", cmid);
		request.setAttribute("sproduct", Product);
		request.setAttribute("slocation", Location);
	
		
		for(String[] j: info) {
			for(String k : j) {
				System.out.println(k);
			}
		}
		
		request.setAttribute("productname", info[1]);
		request.setAttribute("productid", info[2]);
		request.setAttribute("productqty", info[3]);
		request.setAttribute("productprice", info[4]);
		request.setAttribute("productsales", info[5]);
		request.setAttribute("productexpiry", info[6]);
		request.setAttribute("productimg", info[7]);
		
		
		request.setAttribute("stockname", info[8]);
		request.setAttribute("stockid", info[9]);
		request.setAttribute("stockqty", info[10]);
		request.setAttribute("stockprice", info[11]);
		request.setAttribute("stocksales", info[12]);
		request.setAttribute("stockexpiry", info[13]);
		request.setAttribute("stockimg", info[14]);
		//request.setAttribute("stars", info[15]);
		/* group[2] = productid;
			group[3] = productqty;
			group[4] = productp;
			group[5] = productsd;
			group[6] = productex;
			group[7] = productimg;
			group[8] = namep;
			group[9] = idp;
			group[10] = qtyp;
			group[11] = pricep;
			group[12] = sdp;
			group[13] = exp;
			group[14] = imgp;*/
		request.setAttribute("total1", info[0][0]);
		request.setAttribute("total2", info[0][1]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("CheckTrail.jsp");
	    dispatcher.forward(request, response);
	}


}
