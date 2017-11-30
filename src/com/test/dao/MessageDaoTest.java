package com.test.dao;


import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.dao.MessageDao;
import com.model.message.Message;
import com.model.message.Reply;

public class MessageDaoTest {
	java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
	Date date = new Date();
	DateFormat df2 = DateFormat.getDateTimeInstance();
	public final static String author="admin";
	public final static String content="admin";
	Message message=new Message();
	Reply reply=new Reply();
	MessageDao messageDao=new MessageDao();
	@Before
	public void setUp() throws Exception {
		df2.format(date);
		message.setContent(content);
		message.setDate(date);
		message.setAuthor(author);
	}

	@Test
	public void testInsertMessage() {
		df2.format(date);
		System.out.println(date);
		//messageDao.insertMessage(message);
		//messageDao.deleteMessage(id);
		List<Message> list=null;
		list=messageDao.getMessages();
		for(int i=0;i<4;i++){
		Iterator<Reply>   it =  list.get(i).getReplys().iterator();
		while (it.hasNext()) {  
			Date date1=it.next().getDate();
			df2.format(date1);
            System.out.println(date1);  
        }   
	} 
	}

}
