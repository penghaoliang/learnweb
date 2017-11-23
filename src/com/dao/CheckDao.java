package com.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.tools.HibernateUtils;

public class CheckDao {
	public  boolean checkUserName(String username){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
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
        if(list.size()==0) return false;
        else return true;
	}
	public  boolean checkNumber(String number){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
            query = session.createQuery("from Person as u where u.id=:number");
            query.setString("number", number);
            list=query.list(); 
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
        if(list.isEmpty()) return false;
        else return true;
	}
	public  boolean checkUser(String username,String password){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
            query = session.createQuery("from Person as u where u.username=:username and u.password=:password");
            query.setString("username", username);  
            query.setString("password", password);
            list=query.list();
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
        if(list.isEmpty()) return false;
        else return true;
	}
}
