// check MySql_Database_Queries.txt file to understand about table structure and information.
package org.newserver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class Database {

	public String readId() throws SQLException{
		String id = "FA000";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(fid) from f_id;");
			rs.next();
			int count = rs.getInt(1) + 1;
			id = id + count;
			if(count > 9) {
				id = "FA00" + count;
			}else if(count > 99) {
				id = "FA0" + count;
			}else if(count > 999) {
				id = "FA" + count;
			}
			con.close();
			return id;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public boolean readCheck(EntryCheck ec, int h) throws SQLException {
		
		boolean result = false;
		
		String query= "insert into error";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			if (h == 1) {
				query = "select * from f_id where fid = '" + ec.getUserid() + "';";
			} else if(h == 2){
				query = "select * from c_id where cid = '" + ec.getUserid() + "';";
			}
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			String us_id = rs.getString(1);
			String us_pass = rs.getString(2);
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
		String id = "CA500";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(cid) from c_id;");
			rs.next();
			int count = rs.getInt(1) + 1;
			id = id + count;
			if(count > 9) {
				id = "CA50" + count;
			}else if(count > 99) {
				id = "CA5" + count;
			}else if(count > 999) {
				count = count + 5000;
				id = "CA" + count;
			}
			return id;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public String[][] readTips() throws SQLException{
		String[][] tips = new String[4][];
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			String[] total = new String[1];
			
			ResultSet rstmt = stmt.executeQuery("select count(t_c) from A_Tips;");
			rstmt.next();
			int count = rstmt.getInt(1);
			total[0] = String.valueOf(count);
			String[] tip_data = new String[count];
			String[] tip_date = new String[count];
			String[] tip_time = new String[count];
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from A_Tips;");
			int i = 0;
			while(rs.next()) {
			tip_data[i] = rs.getString(2);
			tip_data[i] = tip_data[i].replaceAll(",", "\\$\\$\\$");
			Timestamp timestamp = rs.getTimestamp(3);
			String stamp = timestamp.toString();
			int split = stamp.indexOf(' ');
			int endsplit = stamp.lastIndexOf(':');
			tip_date[i] = stamp.substring(0, split);
			tip_time[i] = stamp.substring(split + 1,endsplit);
			i++;
			}
			con.close();
			tips[0] = total;
			tips[1] = tip_data;
			tips[2] = tip_date;
			tips[3] = tip_time;
			return tips;	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return tips;
	}
	
	public String[][] readYourProduct(String cond) throws SQLException {
		String[][] product = new String[8][];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(cmid) from sell_p where cmid = '" + cond + "';");
			rstmt.next();
			int count = rstmt.getInt(1);
			String[] total = new String[1];
			total[0] = String.valueOf(count);
			String[] productn = new String[count];
			String[] productid = new String[count];
			String[] productqty = new String[count];
			String[] productp = new String[count];
			String[] productsd = new String[count];
			String[] productex = new String[count];
			String[] productimg = new String[count];
			Statement st = con.createStatement();
			ResultSet rset = st.executeQuery("select * from sell_p where cmid = '" + cond + "';");
			int i = 0;
			while(rset.next()) {
				productn[i]	= rset.getString(1);
				productid[i] = String.valueOf(rset.getInt(2));
				productqty[i] = String.valueOf(rset.getInt(3));
				productp[i]	= String.valueOf(rset.getFloat(4));
				productsd[i] = rset.getString(5);
				productex[i] = rset.getString(6);
				productimg[i] = rset.getString(7);
				productimg[i] = productimg[i].replace("\\", "\\\\");
				i = i + 1;	
			}
			product[0] = total;
			product[1] = productn;
			product[2] = productid;
			product[3] = productqty;
			product[4] = productp;
			product[5] = productsd;
			product[6] = productex;
			product[7] = productimg;
			con.close();
			return product;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		}
		return product;
	}
	
	public String[][] readSchemes() throws SQLException{
		String[][] schemes = new String[4][];
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			String[] total = new String[1];
			
			ResultSet rstmt = stmt.executeQuery("select count(g_c) from g_scheme;");
			rstmt.next();
			int count = rstmt.getInt(1);
			total[0] = String.valueOf(count);
			String[] schemes_data = new String[count];
			String[] schemes_date = new String[count];
			String[] schemes_time = new String[count];
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from g_scheme;");
			int i = 0;
			while(rs.next()) {
			schemes_data[i] = rs.getString(2);
			schemes_data[i] = schemes_data[i].replaceAll(",", "\\$\\$\\$");
			Timestamp timestamp = rs.getTimestamp(3);
			String stamp = timestamp.toString();
			int split = stamp.indexOf(' ');
			int endsplit = stamp.lastIndexOf(':');
			schemes_date[i] = stamp.substring(0, split);
			schemes_time[i] = stamp.substring(split + 1,endsplit);
			i++;
			}
			con.close();
			schemes[0] = total;
			schemes[1] = schemes_data;
			schemes[2] = schemes_date;
			schemes[3] = schemes_time;
			return schemes;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return schemes;
	}

	public String[][] readCorner() throws SQLException{
		String[][] info = new String[4][];
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			String[] total = new String[1];
			
			ResultSet rstmt = stmt.executeQuery("select count(m_c) from m_corner;");
			rstmt.next();
			int count = rstmt.getInt(1);
			total[0] = String.valueOf(count);
			String[] info_data = new String[count];
			String[] info_date = new String[count];
			String[] info_time = new String[count];
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from m_corner;");
			int i = 0;
			while(rs.next()) {
			info_data[i] = rs.getString(2);
			info_data[i] = info_data[i].replaceAll(",", "\\$\\$\\$");
			Timestamp timestamp = rs.getTimestamp(3);
			String stamp = timestamp.toString();
			int split = stamp.indexOf(' ');
			int endsplit = stamp.lastIndexOf(':');
			info_date[i] = stamp.substring(0, split);
			info_time[i] = stamp.substring(split + 1,endsplit);
			i++;
			}
			con.close();
			info[0] = total;
			info[1] = info_data;
			info[2] = info_date;
			info[3] = info_time;
			return info;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return info;
	}
	
	public String[][] readSearchCountNew(String cond1, String cond2) throws SQLException {
		
		String[][] group = new String[15][];
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(p_id) from sell_p where p_location = '" + cond1 + "' AND p_name = '" + cond2 + "' AND p_quntity < 50;" );
			rstmt.next();
			int n = rstmt.getInt(1);
			String[] total = new String[2];
			total[0] = String.valueOf(n);
			String[] productn = new String[n];
			String[] productid = new String[n];
			String[] productqty = new String[n];
			String[] productp = new String[n];
			String[] productsd = new String[n];
			String[] productex = new String[n];
			String[] productimg = new String[n];
			
			ResultSet rs = stmt.executeQuery("select count(p_id) from sell_p where p_name = '" + cond2 + "' AND p_quntity >=50;" );
			rs.next();
			int num = rs.getInt(1);
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
			productp[i]	= String.valueOf(rset.getFloat(4));
			productsd[i] = rset.getString(5);
			productex[i] = rset.getString(6);
			productimg[i] = rset.getString(7);
			productimg[i] = productimg[i].replace("\\", "\\\\");
			i = i + 1;	
			
			}
			ResultSet set = stmt.executeQuery("select * from sell_p where p_name = '" + cond2 + "' AND p_quntity >= 50;" );
			int z = 0;
			while(set.next()) {
		
			
			namep[z]	= set.getString(1);
			idp[z] = String.valueOf(set.getInt(2));
			qtyp[z] = String.valueOf(set.getInt(3));
			pricep[z]	= String.valueOf(set.getFloat(4));
			sdp[z] = set.getString(5);
			exp[z] = set.getString(6);
			imgp[z] = set.getString(7);
			imgp[z] = imgp[z].replace("\\", "\\\\");
			z = z + 1;	
			}
			con.close();
			group[0] = total;
			group[1] = productn;
			
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
		String[] product = new String[7];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select * from sell_p where p_id = '" + productId + "';");
			rstmt.next();
			product[0]	= rstmt.getString(1);
			product[1] = String.valueOf(rstmt.getInt(2));
			product[2] = String.valueOf(rstmt.getInt(3));
			product[3]	= String.valueOf(rstmt.getFloat(4));
			product[4] = rstmt.getString(6);
			product[5] = rstmt.getString(7);
			product[5] = product[5].replace("\\", "\\\\");
			product[6] = rstmt.getString(9);
			return product;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return product;
	}
	
	public String[][] readCustomerOrders(String cmid) throws SQLException {
		
		String[][] group = new String[22][];
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(order_id) from Order_Status where c_cmid = '" + cmid + "';" );
			rstmt.next();
			int n = rstmt.getInt(1);
			String[] total = new String[1];
			total[0] = String.valueOf(n);
			String[] productname = new String[n];
			String[] productid = new String[n];
			String[] productqty = new String[n];
			String[] productprice = new String[n];
			String[] productex = new String[n];
			String[] productimg = new String[n];
			String[] cus_name = new String[n];
			String[] cus_mobile = new String[n];
			String[] cus_address = new String[n];
			String[] cus_pincode = new String[n];
			String[] cus_landmark = new String[n];
			String[] order_id = new String[n];
			String[] order_status = new String[n];
			String[] order_date = new String[n];
			String[] order_time = new String[n];
			String[] order_delivery = new String[n];
			String[] cus_otp = new String[n];
			String[] cus_reason = new String[n];
			String[] delivery_date = new String[n];
			String[] delivery_time = new String[n];
			String[] cus_district = new String[n];
			
			ResultSet rs = stmt.executeQuery("select * from Customer_Orders where c_cmid = '" + cmid +"';" );
			int c = 0;
			while(rs.next()) {
				order_id[c]	= rs.getString(1);
				productid[c] = String.valueOf(rs.getInt(2));
				cus_name[c] = rs.getString(3);
				cus_mobile[c]	= String.valueOf(rs.getLong(4));
				cus_address[c] = rs.getString(5);
				cus_address[c] = cus_address[c].replaceAll(",", "\\$\\$\\$");
				cus_district[c] = rs.getString(6);
				cus_pincode[c] = rs.getString(7);
				cus_landmark[c] = rs.getString(8);
				cus_landmark[c] = cus_landmark[c].replaceAll(",", "\\$\\$\\$");
				order_date[c] = rs.getDate(10).toString();
				order_time[c] = rs.getTime(11).toString();
				int split = order_time[c].lastIndexOf(':');
				order_time[c] = order_time[c].substring(0, split);
				c++;
			}
			
			ResultSet rset = stmt.executeQuery("select * from Order_Status where c_cmid = '" + cmid + "';" );
			int i = 0;
			while(rset.next()) {
				order_status[i] = rset.getString(4);
				cus_reason[i] = rset.getString(7);
				order_delivery[i]	= rset.getString(8);
				cus_otp[i] = String.valueOf(rset.getInt(9));
				delivery_date[i] = rset.getDate(11).toString();
				delivery_time[i] = rset.getTime(12).toString();
				int split = delivery_time[i].lastIndexOf(':');
				delivery_time[i] = delivery_time[i].substring(0, split);
				i = i + 1;	
			}
			for(int z=0;z<=productid.length-1;z++) {
				String product = productid[z];
				ResultSet set = stmt.executeQuery("select * from sell_p where p_id = '" + product + "';" );
				set.next();
				productname[z]	= set.getString(1);
				productqty[z] = String.valueOf(set.getInt(3));
				productprice[z]	= String.valueOf(set.getFloat(4));
				productex[z] = set.getString(6);
				productimg[z] = set.getString(7);
				productimg[z] = productimg[z].replace("\\", "\\\\");
			}
			con.close();
			group[0] = total;
			group[1] = productname;
			group[2] = productid;
			group[3] = productqty;
			group[4] = productprice;
			group[5] = productex;
			group[6] = productimg;
			group[7] = cus_name;
			group[8] = cus_mobile;
			group[9] = cus_address;
			group[10] = cus_pincode;
			group[11] = cus_landmark;
			group[12] = order_id;
			group[13] = order_status;
			group[14] = order_date;
			group[15] = order_time;
			group[16] = order_delivery;
			group[17] = cus_otp;
			group[18] = cus_reason;
			group[19] = delivery_date;
			group[20] = delivery_time;
			group[21] = cus_district;
			return group;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return group;
	}
	
	public String[][] readFarmerOrders(String cmid) throws SQLException {
		
		String[][] group = new String[22][];
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select count(order_id) from Order_Status where f_cmid = '" + cmid + "';" );
			rstmt.next();
			int n = rstmt.getInt(1);
			String[] total = new String[1];
			total[0] = String.valueOf(n);
			String[] productname = new String[n];
			String[] productid = new String[n];
			String[] productqty = new String[n];
			String[] productprice = new String[n];
			String[] productex = new String[n];
			String[] productimg = new String[n];
			String[] cus_name = new String[n];
			String[] cus_mobile = new String[n];
			String[] cus_address = new String[n];
			String[] cus_pincode = new String[n];
			String[] cus_landmark = new String[n];
			String[] order_id = new String[n];
			String[] order_status = new String[n];
			String[] order_date = new String[n];
			String[] order_time = new String[n];
			String[] order_delivery = new String[n];
			String[] cus_otp = new String[n];
			String[] cus_reason = new String[n];
			String[] delivery_date = new String[n];
			String[] delivery_time = new String[n];
			String[] cus_district = new String[n];
			
			ResultSet rset = stmt.executeQuery("select * from Order_Status where f_cmid = '" + cmid + "';" );
			int i = 0;
			while(rset.next()) {
				order_id[i]	= rset.getString(1);
				order_status[i] = rset.getString(4);
				cus_reason[i] = rset.getString(7);
				order_delivery[i]	= rset.getString(8);
				cus_otp[i] = String.valueOf(rset.getInt(9));
				delivery_date[i] = rset.getDate(11).toString();
				delivery_time[i] = rset.getTime(12).toString();
				int split = delivery_time[i].lastIndexOf(':');
				delivery_time[i] = delivery_time[i].substring(0, split);
				i = i + 1;	
			}
			
			for(int c=0;c<= order_id.length-1;c++) {
				String o_id = order_id[c];
				ResultSet rs = stmt.executeQuery("select * from Customer_Orders where order_id = '" + o_id +"';" );
				rs.next();
				productid[c] = String.valueOf(rs.getInt(2));
				cus_name[c] = rs.getString(3);
				cus_mobile[c]	= String.valueOf(rs.getLong(4));
				cus_address[c] = rs.getString(5);
				cus_address[c] = cus_address[c].replaceAll(",", "\\$\\$\\$");
				cus_district[c] = rs.getString(6);
				cus_pincode[c] = rs.getString(7);
				cus_landmark[c] = rs.getString(8);
				cus_landmark[c] = cus_landmark[c].replaceAll(",", "\\$\\$\\$");
				order_date[c] = rs.getDate(10).toString();
				order_time[c] = rs.getTime(11).toString();
				int split = order_time[c].lastIndexOf(':');
				order_time[c] = order_time[c].substring(0, split);
				
			}
			
			for(int z=0;z<=productid.length-1;z++) {
				String product = productid[z];
				ResultSet set = stmt.executeQuery("select * from sell_p where p_id = '" + product + "';" );
				set.next();
				productname[z]	= set.getString(1);
				productqty[z] = String.valueOf(set.getInt(3));
				productprice[z]	= String.valueOf(set.getFloat(4));
				productex[z] = set.getString(6);
				productimg[z] = set.getString(7);
				productimg[z] = productimg[z].replace("\\", "\\\\");
			}
			con.close();
			group[0] = total;
			group[1] = productname;
			group[2] = productid;
			group[3] = productqty;
			group[4] = productprice;
			group[5] = productex;
			group[6] = productimg;
			group[7] = cus_name;
			group[8] = cus_mobile;
			group[9] = cus_address;
			group[10] = cus_pincode;
			group[11] = cus_landmark;
			group[12] = order_id;
			group[13] = order_status;
			group[14] = order_date;
			group[15] = order_time;
			group[16] = order_delivery;
			group[17] = cus_otp;
			group[18] = cus_reason;
			group[19] = delivery_date;
			group[20] = delivery_time;
			group[21] = cus_district;
			return group;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return group;
	}
	
	public String[][] readCart(String cmid) throws SQLException {
		String[][] group = new String[8][];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement stmt = con.createStatement();
			Set<Integer> set = new LinkedHashSet<Integer>();
			ResultSet rstmt = stmt.executeQuery("select product_id from cart where cmid = '" + cmid + "';" );
			while(rstmt.next()) {
				set.add(rstmt.getInt(1));
			}
			int n = set.size();
			String[] total = new String[1];
			total[0] = String.valueOf(n);
			String[] productn = new String[n];
			String[] productid = new String[n];
			String[] productqty = new String[n];
			String[] productp = new String[n];
			String[] productsd = new String[n];
			String[] productex = new String[n];
			String[] productimg = new String[n];
			
			List<Integer> list = new LinkedList<Integer>(set);
			for(int s=0;s<=n-1;s++) {
				Integer product = list.get(s);
				ResultSet rset = stmt.executeQuery("select * from sell_p where p_id = '" + product + "';" );
				rset.next();
				productn[s]	= rset.getString(1);
				productid[s] = String.valueOf(rset.getInt(2));
				productqty[s] = String.valueOf(rset.getInt(3));
				productp[s]	= String.valueOf(rset.getFloat(4));
				productsd[s] = rset.getString(5);
				productex[s] = rset.getString(6);
				productimg[s] = rset.getString(7);
				productimg[s] = productimg[s].replace("\\", "\\\\");
			
			}
			
			con.close();
			group[0] = total;
			group[1] = productn;
			group[2] = productid;
			group[3] = productqty;
			group[4] = productp;
			group[5] = productsd;
			group[6] = productex;
			group[7] = productimg;
			return group;	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return group;
	}
	
}
