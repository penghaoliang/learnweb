package com.model;

import java.util.*;

public class TestPaper {
    private int id;	
	private String tName;
	private Date startTime;
	private Date endTime;
	private Set<Questions> questionsSet = new HashSet<Questions>();	
	public TestPaper(){
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Set<Questions> getQuestionsSet() {
		return questionsSet;
	}
	public void setQuestionsSet(Set<Questions> questionsSet) {
		this.questionsSet = questionsSet;
	}

}
