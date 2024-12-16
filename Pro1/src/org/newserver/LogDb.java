package org.newserver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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

}
