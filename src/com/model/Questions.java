package com.model;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class Questions {
	private int id;
	private String qName;
	private String qAnswer;
	private Set<Options> options = new HashSet<Options>();
	public Questions() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getqName() {
		return qName;
	}
	public void setqName(String qName) {
		this.qName = qName;
	}

	public String getqAnswer() {
		return qAnswer;
	}
	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}
	public Set<Options> getOptions() {
		return options;
	}
	public void setOptions(Set<Options> options) {
		this.options = options;
	}

}
