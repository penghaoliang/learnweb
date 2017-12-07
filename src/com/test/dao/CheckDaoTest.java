package com.test.dao;

import static org.junit.Assert.assertEquals;


import org.junit.Test;

import com.dao.CheckDao;

public class CheckDaoTest {
	public final static String username="admin";
	public final static String password="admin";
	public final static String username1="1";
	public final static String password1="1";	
	CheckDao checkDao=new CheckDao() ;
    
	@Test
	public void test() {
		assertEquals(false,checkDao.checkNumber("2"));
		assertEquals(false,checkDao.checkUser(username1, password1));
		assertEquals(false,checkDao.checkUserName(username1));
		assertEquals(true,checkDao.checkUserName(username));
		assertEquals(true,checkDao.checkNumber("1"));
		assertEquals(true,checkDao.checkUser(username, password));
	}
}
