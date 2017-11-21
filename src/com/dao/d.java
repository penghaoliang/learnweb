package com.dao;

import com.model.Grade;

public class d {
	  public final static int usual_Grade=90;
	    public final static int mid_Grade=90;
	    public final static int final_Grade=90;
	    public final static int experiment_Grade=90;
	public static void main(String[] args) {
		    Grade grade;
		    GradeDao gradeDao=new GradeDao();
		    grade=new Grade(usual_Grade,mid_Grade,final_Grade,experiment_Grade);
		    gradeDao.insertGrade(grade);
	}

}
