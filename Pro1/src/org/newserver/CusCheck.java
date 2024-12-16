package org.newserver;

public class CusCheck {

	String cname;
	long ph;

	String cadd;

	public long getPh() {
		return ph;
	}

	public void setPh(long ph) {
		this.ph = ph;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCadd() {
		return cadd;
	}

	public void setCadd(String cadd) {
		this.cadd = cadd;
	}

	public CusCheck(String cname,long ph, String cadd) {
		super();
		this.ph = ph;
		this.cname = cname;
		this.cadd = cadd;
	}

}
