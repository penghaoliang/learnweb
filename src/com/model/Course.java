package com.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Course{
private String id; 
private int coursenum; 
private Date date;
private Teacher teacher;
private Set<Student> students=new HashSet<Student>();
public Course(){}

public Course(String id, int coursenum, Date date, Teacher teacher, Set<Student> students) {
	super();
	this.id = id;
	this.coursenum = coursenum;
	this.date = date;
	this.teacher = teacher;
	this.students = students;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getCoursenum() {
	return coursenum;
}
public void setCoursenum(int coursenum) {
	this.coursenum = coursenum;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Teacher getTeacher() {
	return teacher;
}
public void setTeacher(Teacher teacher) {
	this.teacher = teacher;
}

public Set<Student> getStudents() {
	return students;
}

public void setStudents(Set<Student> students) {
	this.students = students;
}

}
