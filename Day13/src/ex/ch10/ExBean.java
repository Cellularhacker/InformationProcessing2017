package ex.ch10;

public class ExBean {
	//Properties
	private String id;
	private String passwd;
	private String number;
	
	//Setters and Getters;
	public void setId(String id) {
		this.id = id;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getId() {
		return id;
	}
	public String getPasswd() {
		return passwd;
	}
	public String getNumber() {
		return number;
	}
}
