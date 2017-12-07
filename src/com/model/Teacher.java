package com.model;

import java.util.HashSet;
import java.util.Set;

public class Teacher extends Person{
private Set<Course> courses= new HashSet<Course>();
private Set<Confirm> confirm= new HashSet<Confirm>();
private String url;
public Teacher(){}


public Set<Confirm> getConfirm() {
	return confirm;
}


public void setConfirm(Set<Confirm> confirm) {
	this.confirm = confirm;
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
