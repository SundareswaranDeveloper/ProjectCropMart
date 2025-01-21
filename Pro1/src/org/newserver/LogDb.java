// check MySql_Database_Queries.txt file to understand about table structure and information.
package org.newserver;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

public class LogDb {

	public boolean cus_insert(CusCheck c) throws SQLException {
		// TODO Auto-generated method stub
		boolean result = false;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			// com.mysql.jdbc.Driver
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			// jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024
			String query = "insert into cdata(c_name,c_ph,c_address) values (?,?,?);";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, c.getCname());
			ps.setLong(2,c.getPh());
			ps.setString(3, c.getCadd());
			

			int rs = ps.executeUpdate();
			if (rs > 0) {
				result = true;
			}
			// System.out.println("Numbers of rows affected : " + rs);

			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return result;
		}

		return result;
	}

	public int[] insert(LoginCheck lc) throws SQLException {

		int[] nums = new int[2];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// com.mysql.jdbc.Driver
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			// jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024
			String query = "insert into fdata(name,mobile,landno,landaddress,landlocation,houseaddress) values (?,?,?,?,?,?);";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, lc.getName());
			ps.setLong(2,lc.getMobile());
			ps.setString(3, lc.getLandno());
			ps.setString(4, lc.getLandadd());
			ps.setString(5, lc.getLandDist());
			ps.setString(6, lc.getAdd());
			
			
			int rs = ps.executeUpdate();
			
			nums[0] = rs;
			if (rs > 0) {
				String query2 = "select f_sno from fdata where mobile = '"+ lc.getMobile() + "';";
				Statement st = con.createStatement();
				ResultSet rset = st.executeQuery(query2);
				rset.next();
				nums[1] = rset.getInt(1);
			}
			// System.out.println("Numbers of rows affected : " + rs);

			con.close();
			return nums;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		}
		return nums;
	}
	
	public boolean id_insert(UserCheck uc,String a) throws SQLException {
		// TODO Auto-generated method stub
		boolean result = false;
		String b = "Farmer";
		String c = "Customer";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			String query = "insert into error";
			
			if (a.equals(b)) {
				query = "insert into f_id values (?,?,?);";
				
			} else {
				query = "insert into c_id values (?,?);";
			}

			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1, uc.getId());
			ps.setString(2, uc.getCheckpass());
			if(a.equals(b)) {
				ps.setInt(3, uc.getMapkey());
			}
			

			int rs = ps.executeUpdate();
			if (rs > 0) {
				result = true;
			}
			// System.out.println("Numbers of rows affected : " + rs);

			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return result;
		}

		return result;
	}
	
	public boolean sell_insert(SellCheck c) throws SQLException {
		// TODO Auto-generated method stub
		boolean result = false;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			// com.mysql.jdbc.Driver
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			// jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select fdata from f_id where fid ='" + c.getUserId() +"';");
			rs.next();
			int key = rs.getInt(1);
			
			Statement stmt = con.createStatement();
			ResultSet rset = st.executeQuery("select landlocation from fdata where f_sno = '" + key + "';");
			rset.next();
			String district = rset.getString(1);
			
			
			String query = "insert into sell_p(p_name,p_quntity, p_price, p_sales_ed, p_expiry_d,p_image,cmid,p_location ) values (?,?,?,?,?,?,?,?);";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, c.getProduct());
			ps.setInt(2,c.getQuantity());
			ps.setFloat(3,c.getPrice());
			ps.setString(4, c.getSalesend());
			ps.setString(5, c.getExpiry());
			ps.setString(6,c.getImage());
			ps.setString(7,c.getUserId());
			ps.setString(8, district);
			

			int row = ps.executeUpdate();
			if (row > 0) {
				result = true;
			}
			// System.out.println("Numbers of rows affected : " + rs);

			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return result;
		}

		return result;
	}

	public boolean order_insert(Integer product_id, String customer_name, Long phone_number, String address, String pincode, String landmark, String cmid) throws SQLException {
		// TODO Auto-generated method stub
		boolean result = false;
		LocalDate local_date = LocalDate.now();
		Date date = Date.valueOf(local_date);
		LocalTime local_time = LocalTime.now();
		Time time = Time.valueOf(local_time);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(product_id) from Customer_Orders;");
			rs.next();
			int key = rs.getInt(1);
			String order_id = "B";
			if(key == 0) {
				order_id = order_id + 1;
			}else {
				order_id = order_id + (key+1);
			}
			Statement stmt = con.createStatement();
			ResultSet rstmt = stmt.executeQuery("select cmid from sell_p where p_id = '" + product_id + "';");
			rstmt.next();
			String f_cmid = rstmt.getString(1);
			String query = "insert into Customer_Orders values (?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, order_id);
			ps.setInt(2, product_id);
			ps.setString(3, customer_name);
			ps.setFloat(4, phone_number);
			ps.setString(5, address);
			ps.setString(6, pincode);
			ps.setString(7, landmark);
			ps.setString(8, cmid);
			ps.setDate(9, date);
			ps.setTime(10, time);
			int row1 = ps.executeUpdate();
			String command = "insert into Order_Status(order_id,c_cmid,f_cmid) values (?,?,?);";
			PreparedStatement pstmt = con.prepareStatement(command);
			pstmt.setString(1, order_id);
			pstmt.setString(2, cmid);
			pstmt.setString(3, f_cmid);
			int row2 = pstmt.executeUpdate();
			if (row1 > 0 && row2 > 0) {
				result = true;
			}
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public boolean order_accept(String deliverydate, String orderid) throws SQLException {
		boolean result = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			String query = "update Order_Status set status = ?,ex_delivery_date = ? where order_id = '" + orderid + "';";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, "Accepted by Farmer");
			ps.setString(2,deliverydate);
			
			int rs = ps.executeUpdate();
			if (rs > 0) {
				result = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public boolean order_delivery(Integer otp, String orderid) throws SQLException {
		LocalDate local_date = LocalDate.now();
		Date date = Date.valueOf(local_date);
		LocalTime local_time = LocalTime.now();
		Time time = Time.valueOf(local_time);
		boolean result = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select c_otp from Order_Status where order_id = '"+ orderid +"';");
			rs.next();
			int cus_otp = rs.getInt(1);
			if(cus_otp == otp) {
				String query = "update Order_Status set status = ?,f_otp = ?,delivery_date = ?,delivery_time = ? where order_id = '" + orderid + "';";
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, "Delivery Successfull!");
				ps.setInt(2, otp);
				ps.setDate(3, date);
				ps.setTime(4, time);
				int rset = ps.executeUpdate();
				if (rset > 0) {
					result = true;
				}
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public boolean order_cancel(String reason, String orderid) throws SQLException {
		boolean result = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			String query = "update Order_Status set status = ?,f_cancel = ?,cancel_reason = ? where order_id = '" + orderid + "';";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, "Cancelled by Farmer");
			ps.setBoolean(2,true);
			ps.setString(3,reason);
			
			int rs = ps.executeUpdate();
			if (rs > 0) {
				result = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public boolean order_cancel_cus(String reason, String orderid) throws SQLException {
		boolean result = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "Sql@2024");
			String query = "update Order_Status set status = ?,c_cancel = ?,cancel_reason = ? where order_id = '" + orderid + "';";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, "Cancelled by Customer");
			ps.setBoolean(2,true);
			ps.setString(3,reason);
			
			int rs = ps.executeUpdate();
			if (rs > 0) {
				result = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
}
