package com.model;


import java.util.HashSet;
import java.util.Set;

public class Course{
private String id; 
private int coursenum; 
private String date;
private Teacher teacher;
private Set<Student> students=new HashSet<Student>();
public Course(){}
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
public String getDate() {
	return date;
}
public void setDate(String date) {
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
