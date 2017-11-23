package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Person;
import com.tools.HibernateUtils;

public class PersonDao {
	public Person getPersonByUserName(String username){	
		Session session = null;
		Query query = null;
		List<Person> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
            query = session.createQuery("from Person as u where u.username=:username");
            query.setString("username", username);
            list=query.list();
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		if(list.isEmpty())return null;
		return list.get(0);
	}	
}
