// check MySql_Database_Queries.txt file to understand about table structure and information.
package org.newserver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Database {

	public String readId() throws SQLException{
		String id = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from id_sf;");
			rs.next();
			id = rs.getString(1);
			String query = "delete from id_sf where fn = '" + id + "' ;";
			Statement ps = con.createStatement();
			ps.executeUpdate(query);
			con.close();
			return id;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	public boolean readCheck(EntryCheck ec, int h) throws SQLException {
		System.out.println(ec.getUserid() + " , " + ec.getPassword());
		boolean result = false;
		
		String query= "insert into error";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			if (h == 1) {
				query = "select * from f_id where fid = '" + ec.getUserid() + "';";
				System.out.println(query);
			} else if(h == 2){
				query = "select * from c_id where cid = '" + ec.getUserid() + "';";
			}
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			String us_id = rs.getString(1);
			System.out.println(us_id);
			String us_pass = rs.getString(2);
			System.out.println(us_pass);
			if(us_id.equals(ec.getUserid()) && us_pass.equals(ec.getPassword())) {
				result = true;
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public String readCusId() throws SQLException{
		String id = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from id_sc;");
			rs.next();
			id = rs.getString(1);
			String query = "delete from id_sc where cn = '" + id + "' ;";
			Statement ps = con.createStatement();
			ps.executeUpdate(query);
			con.close();
			return id;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	
	public List readTips() throws SQLException{
		String id = "Loading...";
		System.out.println(id);
		List<Object> list = new ArrayList<Object>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(t_c) from A_Tips;");
			rstmt.next();
			int count = rstmt.getInt(1);
			list.add(count);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from A_Tips;");
			while(rs.next()) {
			list.add(rs.getString(2));
			}
			con.close();
			return list;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	//@SuppressWarnings({ "unchecked", "rawtypes" })
	public List readYour(String cond) throws SQLException {
		// TODO Auto-generated method stub
		
		List<Object> li = new ArrayList<Object>();
		System.out.println("hii");
		System.out.println(li);
		System.out.println("hii");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(cmid) from sell_p where cmid = '" + cond + "';");
			rstmt.next();
			int count = rstmt.getInt(1);
			li.add(count);
			System.out.println(li);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from sell_p where cmid = '" + cond + "';");
			while(rs.next()) {
			li.add(rs.getString(1));
			li.add(rs.getInt(3));
			li.add(rs.getFloat(4));
			li.add(rs.getString(7));
			System.out.println(li);
			}
			con.close();
			return li;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		}
		return li;
	}
	
	public List readGschemes() throws SQLException{
		String id = "Loading...";
		System.out.println(id);
		List<Object> glist = new ArrayList<Object>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(g_c) from g_scheme;");
			rstmt.next();
			int count = rstmt.getInt(1);
			glist.add(count);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from g_scheme;");
			while(rs.next()) {
			glist.add(rs.getString(2));
			}
			con.close();
			return glist;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return glist;
	}
	public List readMc() throws SQLException {
		String id = "Loading...";
		System.out.println(id);
		List<Object> list = new ArrayList<Object>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(m_c) from m_corner;");
			rstmt.next();
			int count = rstmt.getInt(1);
			list.add(count);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from m_corner;");
			while(rs.next()) {
			list.add(rs.getString(2));
			}
			con.close();
			return list;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public List readSearch(String cond1, String cond2) throws SQLException {
		String id = "Loading...";
		System.out.println(id);
		
		List<Object> list = new ArrayList<Object>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "';" );
			rstmt.next();
			int count = rstmt.getInt(1);
			list.add(count);
			
			ResultSet rs = stmt.executeQuery("select * from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "';" );
			while(rs.next()) {
			list.add(rs.getString(1));
			list.add(rs.getInt(2));
			list.add(rs.getInt(3));
			list.add(rs.getFloat(4));
			list.add(rs.getString(5));
			list.add(rs.getString(6));
			list.add(rs.getString(7));

			}
			con.close();
			return list;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List[] readSearchCount(String cond1, String cond2) throws SQLException {
		String id = "Loading...";
		System.out.println(id);
		List[] product = new List[15];
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			List<Integer> count = new ArrayList<Integer>();
			List<String> np_name = new ArrayList<String>();
			List<Integer> np_id = new ArrayList<Integer>();
			List<Integer> np_qty = new ArrayList<Integer>();
			List<Float> np_price = new ArrayList<Float>();
			List<String> np_sa = new ArrayList<String>();
			List<String> np_ex = new ArrayList<String>();
			List<String> np_img = new ArrayList<String>();
			List<String> p_name = new ArrayList<String>();
			List<Integer> p_id = new ArrayList<Integer>();
			List<Integer> p_qty = new ArrayList<Integer>();
			List<Float> p_price = new ArrayList<Float>();
			List<String> p_sa = new ArrayList<String>();
			List<String> p_ex = new ArrayList<String>();
			List<String> p_img = new ArrayList<String>();
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity < 50;" );
			rstmt.next();
			count.add(rstmt.getInt(1));
			
			ResultSet rs = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity >=50;" );
			rs.next();
			count.add(rs.getInt(1));
			product[0] = count;
			//int total = rstmt.getInt(1) + rs.getInt(1);
			ResultSet rset = stmt.executeQuery("select * from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity < 50;" );
			while(rset.next()) {
			np_name.add(rset.getString(1));
			np_id.add(rset.getInt(2));
			np_qty.add(rset.getInt(3));
			np_price.add(rset.getFloat(4));
			np_sa.add(rset.getString(5));
			np_ex.add(rset.getString(6));
			np_img.add(rset.getString(7));
			}
			ResultSet set = stmt.executeQuery("select * from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity >= 50;" );
			while(set.next()) {
			p_name.add(set.getString(1));
			p_id.add(set.getInt(2));
			p_qty.add(set.getInt(3));
			String na =  String.valueOf(set.getInt(3));
			System.out.println(na);
			p_price.add(set.getFloat(4));
			p_sa.add(set.getString(5));
			p_ex.add(set.getString(6));
			p_img.add(set.getString(7));
			}
			con.close();
			product[1] = np_name;
			product[2] = np_id;
			product[3] = np_qty;
			product[4] = np_price;
			product[5] = np_sa;
			product[6] = np_ex;
			product[7] = np_img;
			product[8] = p_name;
			product[9] = p_id;
			product[10] = p_qty;
			product[11] = p_price;
			product[12] = p_sa;
			product[13] = p_ex;
			product[14] = p_img;
			return product;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}
	
	
	public String[][] readSearchCountNew(String cond1, String cond2) throws SQLException {
		String id = "Loading...";
		System.out.println(id);
		List[] product = new List[15];
		String[][] group = new String[15][];
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity < 50;" );
			rstmt.next();
			System.out.println("h5 " + rstmt.getInt(1));
			int n = rstmt.getInt(1);
			System.out.println("h5 --> " + n);
			String[] total = new String[2];
			total[0] = String.valueOf(n);
			String[] productn = new String[n];
			String[] productid = new String[n];
			String[] productqty = new String[n];
			String[] productp = new String[n];
			String[] productsd = new String[n];
			String[] productex = new String[n];
			String[] productimg = new String[n];
			
			ResultSet rs = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity >=50;" );
			rs.next();
			System.out.println("h1 " + rs.getInt(1));
			int num = rs.getInt(1);
			System.out.println("h1 --> " + num);
			total[1] = String.valueOf(num);
			String[] namep = new String[num];
			String[] idp = new String[num];
			
			String[] qtyp = new String[num];
			String[] pricep = new String[num];
			String[] sdp = new String[num];
			String[] exp = new String[num];
			String[] imgp = new String[num];
			ResultSet rset = stmt.executeQuery("select * from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity < 50;" );
			int i = 0;
			while(rset.next()) {
			
			productn[i]	= rset.getString(1);
			productid[i] = String.valueOf(rset.getInt(2));
			productqty[i] = String.valueOf(rset.getInt(3));
			productp[i]	= String.valueOf(rset.getInt(4));
			productsd[i] = rset.getString(5);
			productex[i] = rset.getString(6);
			productimg[i] = rset.getString(7);
			productimg[i] = productimg[i].replace("\\", "\\\\");
			i = i + 1;	
			
			}
			ResultSet set = stmt.executeQuery("select * from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity >= 50;" );
			int z = 0;
			while(set.next()) {
		
			
			namep[z]	= set.getString(1);
			idp[z] = String.valueOf(set.getInt(2));
			qtyp[z] = String.valueOf(set.getInt(3));
			pricep[z]	= String.valueOf(set.getInt(4));
			sdp[z] = set.getString(5);
			exp[z] = set.getString(6);
			imgp[z] = set.getString(7);
			imgp[z] = imgp[z].replace("\\", "\\\\");
			z = z + 1;	
			}
			con.close();
			group[0] = total;
			group[1] = productn;
			for(String o:productn) {
				System.out.println("===> "+ o);
			}
			group[2] = productid;
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
			group[14] = imgp;
			return group;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return group;
	}
	public String[] readSearchProduct(String productId) throws SQLException {
		String[] product = new String[6];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select * from sell_p where p_id = '" + productId + "';");
			rstmt.next();
			product[0]	= rstmt.getString(1);
			product[1] = String.valueOf(rstmt.getInt(2));
			product[2] = String.valueOf(rstmt.getInt(3));
			product[3]	= String.valueOf(rstmt.getInt(4));
			product[4] = rstmt.getString(6);
			product[5] = rstmt.getString(7);
			product[5] = product[5].replace("\\", "\\\\");
			return product;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return product;
	}
	
}
