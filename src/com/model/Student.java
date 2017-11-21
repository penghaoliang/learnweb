package com.model;

public class Student extends Person{
private String number;//Ñ§ºÅ
private String classnum;//°à¼¶
private Grade grade;

public Student() {
}
public Student(String number, String classnum, Grade grade) {
	super();
	this.number = number;
	this.classnum = classnum;
	this.grade = grade;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getClassnum() {
	return classnum;
}
public void setClassnum(String classnum) {
	this.classnum = classnum;
}
public Grade getGrade() {
	return grade;
}
public void setGrade(Grade grade) {
	this.grade = grade;
}

}
