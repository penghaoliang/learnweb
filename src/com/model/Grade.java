package com.model;

public class Grade{
private String id;
private int usual_Grade;
private int mid_Grade;
private int final_Grade;
private int experiment_Grade;
private Student student;
public Grade(){}

public Grade(String id, int usual_Grade, int mid_Grade, int final_Grade, int experiment_Grade, Student student) {
	super();
	this.id = id;
	this.usual_Grade = usual_Grade;
	this.mid_Grade = mid_Grade;
	this.final_Grade = final_Grade;
	this.experiment_Grade = experiment_Grade;
	this.student = student;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getUsual_Grade() {
	return usual_Grade;
}
public void setUsual_Grade(int usual_Grade) {
	this.usual_Grade = usual_Grade;
}
public int getMid_Grade() {
	return mid_Grade;
}
public void setMid_Grade(int mid_Grade) {
	this.mid_Grade = mid_Grade;
}
public int getFinal_Grade() {
	return final_Grade;
}
public void setFinal_Grade(int final_Grade) {
	this.final_Grade = final_Grade;
}
public int getExperiment_Grade() {
	return experiment_Grade;
}
public void setExperiment_Grade(int experiment_Grade) {
	this.experiment_Grade = experiment_Grade;
}
public Student getStudent() {
	return student;
}
public void setStudent(Student student) {
	this.student = student;
}


}
