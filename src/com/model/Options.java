package com.model;

public class Options {
	private int id;
	private String oNo;	
	private String oName;
	private Questions questions;
	public Options() {}

		public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getoNo() {
		return oNo;
	}


	public void setoNo(String oNo) {
		this.oNo = oNo;
	}


	public String getoName() {
		return oName;
	}


	public void setoName(String oName) {
		this.oName = oName;
	}


	public Questions getQuestions() {
		return questions;
	}


	public void setQuestions(Questions questions) {
		this.questions = questions;
	}
}
