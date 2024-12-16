package org.newserver;

public class EntryCheck {
	
	String userid;
	String password;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public EntryCheck(String userid, String password) {
		// TODO Auto-generated constructor stub
		//super();
		this.userid = userid;
		this.password = password;
		
	}
}
