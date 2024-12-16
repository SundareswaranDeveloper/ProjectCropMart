package org.newserver;

public class LoginCheck {
	String name;
	String landno;
	long mobile;
	String landadd;
	String landDist;
	String add;

	public String getLandDist() {
		return landDist;
	}

	public void setLandDist(String landDist) {
		this.landDist = landDist;
	}

	public LoginCheck(String name, long mobile, String landno, String landadd, String landDist, String add) {

		this.name = name;
		this.mobile = mobile;
		this.landno = landno;
		this.landadd = landadd;
		this.landDist = landDist;
		this.add = add;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getLandno() {
		return landno;
	}

	public void setLandno(String landno) {
		this.landno = landno;
	}

	public String getLandadd() {
		return landadd;
	}

	public void setLandadd(String landadd) {
		this.landadd = landadd;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

}
