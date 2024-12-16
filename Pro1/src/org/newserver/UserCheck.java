package org.newserver;

public class UserCheck {
	String id;

	String user;
	
	String passcheck;
	String checkpass;
	int mapkey;
	public int getMapkey() {
		return mapkey;
	}

	public void setMapkey(int mapkey) {
		this.mapkey = mapkey;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPasscheck() {
		return passcheck;
	}

	public void setPasscheck(String passcheck) {
		this.passcheck = passcheck;
	}

	public String getCheckpass() {
		return checkpass;
	}

	public void setCheckpass(String checkpass) {
		this.checkpass = checkpass;
	}
	public UserCheck(String id, String checkpass, int mapkey) {
		// TODO Auto-generated constructor stub
		this.mapkey = mapkey;
		this.id = id;
		this.checkpass = checkpass;
	}
}
