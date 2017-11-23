package com.test.dao;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.dao.PersonDao;
import com.dao.StudentDao;
import com.model.Person;
import com.model.Student;

public class PersonDaoTest {
	public final static String username="admin";
	public final static String password="admin";
	public final static String id="1";
	public final static int sf=3;
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		
		Person stu=new Person();
		PersonDao personDao=new PersonDao();
		stu=personDao.getPersonByUserName(username);
		assertEquals(username, stu.getUsername());
		assertEquals(password, stu.getPassword());
		assertEquals(id, stu.getId());
		assertEquals(sf, stu.getSf());
	}
}
