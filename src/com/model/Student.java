package com.model;

public class Student extends Person{
private Course course;
private Grade grade;
public Student() {
}

public Student(Course course, Grade grade) {
	super();
	this.course = course;
	this.grade = grade;
}

public Course getCourse() {
	return course;
}
public void setCourse(Course course) {
	this.course = course;
}
public Grade getGrade() {
	return grade;
}
public void setGrade(Grade grade) {
	this.grade = grade;
}


}
