package com.model;

public class Person{
private String id;//学号或者工号
private String username;
private String name;
private String password;
private String email;
private int sf;//1代表学生 2代表老师
public Person(){}
public Person(String id, String username, String name, String password, String email, int sf) {
	super();
	this.id = id;
	this.username = username;
	this.name = name;
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
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
