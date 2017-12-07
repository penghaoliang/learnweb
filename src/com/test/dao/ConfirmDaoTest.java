package com.test.dao;

import org.junit.Before;
import org.junit.Test;

import com.dao.ConfirmDao;
import com.model.Confirm;

public class ConfirmDaoTest {
	public final static String teacher_id="11111111";
	public final static String student_id="2";
	public final static String student_name="1";
	public final static int coursenum=3;
	Confirm confirm=new Confirm();
	ConfirmDao dao=new ConfirmDao();
	@Before
	public void setUp() throws Exception {
		confirm.setCoursenum(coursenum);
		confirm.setStudent_id(student_id);
		confirm.setTeacher_id(teacher_id);
		confirm.setStudent_name(student_name);
	}

	@Test
	public void test() {	
		dao.insertConfirm(confirm);
	}

}
