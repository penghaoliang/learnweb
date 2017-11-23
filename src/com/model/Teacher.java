package com.model;

import java.util.HashSet;
import java.util.Set;

public class Teacher extends Person{
private Set<Course> courses= new HashSet<Course>();
private String url;
public Teacher(){}

public Teacher(Set<Course> courses, String url) {
	super();
	this.courses = courses;
	this.url = url;
}

public Set<Course> getCourses() {
	return courses;
}

public void setCourses(Set<Course> courses) {
	this.courses = courses;
}

public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}

}
