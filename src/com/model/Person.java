package com.model;

public class Person{
	private String id;
private String username;
private String password;
private String email;
private int sf;//1代表学生 2代表老师
public Person(){}
public Person( String username, String password, String email, int sf) {
	super();
	this.username = username;
	this.password = password;
	this.email = email;
	this.sf = sf;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getSf() {
	return sf;
}
public void setSf(int sf) {
	this.sf = sf;
}

}
