package com.test.dao;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.dao.StudentDao;
import com.model.Student;

public class StudentDaoTest {
	public final static String username="admin";
	public final static String password="admin";
	public final static String id="1";
	public final static int sf=3;
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Student stu=new Student();
		StudentDao studentDao=new StudentDao();
		stu=studentDao.getStudent(id);
		assertEquals(username, stu.getUsername());
		assertEquals(password, stu.getPassword());
		assertEquals(id, stu.getId());
		assertEquals(sf, stu.getSf());
	}

}
