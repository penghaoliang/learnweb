package com.model;

public class Confirm {
private String id;
private String student_id;
private String student_name;
private int coursenum;
private String teacher_id;
public Confirm(){}



public String getTeacher_id() {
	return teacher_id;
}



public void setTeacher_id(String teacher_id) {
	this.teacher_id = teacher_id;
}



public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getStudent_id() {
	return student_id;
}
public void setStudent_id(String student_id) {
	this.student_id = student_id;
}
public String getStudent_name() {
	return student_name;
}
public void setStudent_name(String student_name) {
	this.student_name = student_name;
}



public int getCoursenum() {
	return coursenum;
}



public void setCoursenum(int coursenum) {
	this.coursenum = coursenum;
}


}
