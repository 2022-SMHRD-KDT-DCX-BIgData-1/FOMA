package com.foma_java_mvc_folder.domain;

public class Member {
	
//	private String username ="";
//	private String userpw= "";
//	private String useremail = "";
//	
//	private double userage =  0;
//	private double userheight = 0;
//	private double userweight = 0;
//	private String userdiabetes ="";
//	private String userhbp ="";
//	
//	private double userbmi=0;
	
	private String username;
	private String userpw;
	private String useremail;
	
	private double userage ;
	private double userheight ;
	private double userweight;
	private String userdiabetes ;
	private String userhbp ;
	
	private double userbmi;
	

	public Member(String username, String userpw, String useremail, double userage, double userheight,
			double userweight, String userdiabetes, String userhbp, double userbmi) {
		super();
		this.username = username;
		this.userpw = userpw;
		this.useremail = useremail;
		this.userage = userage;
		this.userheight = userheight;
		this.userweight = userweight;
		this.userdiabetes = userdiabetes;
		this.userhbp = userhbp;
		this.userbmi = userbmi;
	}

	
	

	public Member(String username, String userpw) {
		super();
		this.username = username;
		this.userpw = userpw;
	}



	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return useremail;
	}
	public void setEmail(String email) {
		this.useremail = email;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public double getUserage() {
		return userage;
	}
	public void setUserage(double userage) {
		this.userage = userage;
	}
	public double getUserheight() {
		return userheight;
	}
	public void setUserheight(double userheight) {
		this.userheight = userheight;
	}
	public double getUserweight() {
		return userweight;
	}
	public void setUserweight(double userweight) {
		this.userweight = userweight;
	}
	public String getUserdiabetes() {
		return userdiabetes;
	}
	public void setUserdiabetes(String userdiabetes) {
		this.userdiabetes = userdiabetes;
	}
	public String getUserhbp() {
		return userhbp;
	}
	public void setUserhbp(String userhbp) {
		this.userhbp = userhbp;
	}

	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public double getUserbmi() {
		return userbmi;
	}
	public void setUserbmi(double userbmi) {
		this.userbmi = userbmi;
	}

	

}
