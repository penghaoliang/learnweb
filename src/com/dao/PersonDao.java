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
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
            query = session.createQuery("from Person as u where u.username=:username");
            query.setString("username", username);
            list=query.list();
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		if(list.isEmpty())return null;
		return list.get(0);
	}	
}
