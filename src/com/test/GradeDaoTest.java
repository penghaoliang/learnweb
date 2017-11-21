package com.test;


import org.junit.Before;
import org.junit.Test;

import com.dao.GradeDao;
import com.model.Grade;

public class GradeDaoTest {
	  public final static int usual_Grade=90;
	    public final static int mid_Grade=90;
	    public final static int final_Grade=90;
	    public final static int experiment_Grade=90;
	    Grade grade;
	    GradeDao gradeDao=new GradeDao();
		@Before
		public void setUp() throws Exception {
			 grade=new Grade(usual_Grade,mid_Grade,final_Grade,experiment_Grade);
		}
		

	@Test
	public void testInsertGrade() {
		gradeDao.insertGrade(grade);
	}

}
