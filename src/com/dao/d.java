package com.dao;

import com.model.Grade;

public class d {
	  public final static int usual_Grade=90;
	    public final static int mid_Grade=90;
	    public final static int final_Grade=90;
	    public final static int experiment_Grade=90;
	public static void main(String[] args) {
		    Grade grade = new Grade();
		    GradeDao gradeDao=new GradeDao();
			 grade.setUsual_Grade(usual_Grade);
			 grade.setMid_Grade(mid_Grade);
			 grade.setFinal_Grade(final_Grade);
			 grade.setExperiment_Grade(experiment_Grade);
		    gradeDao.insertGrade(grade);
	}

}
