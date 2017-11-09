package jspbook.ch07.LoginBean;

public class LoginBean {
	//Properties
	private String userid;
	private String passwd;
	
	final String _userid = "myuser";
	final String _passwd = "1234";
	
	//Setters and Getters
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUserid() {
		return userid;
	}
	public String getPasswd() {
		return passwd;
	}
	
	//Methods out of Beans structures
	public boolean checkUser() {
		if(userid.equals(_userid)&&passwd.equals(_passwd)) {
			return true;
		} else {
			return false;
		}
	}
	
}
