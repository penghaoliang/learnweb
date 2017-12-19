package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import com.model.TestPaper;
import com.tools.HibernateUtils;

public class TestPaperDao {
	public  void insertTestPaper(TestPaper testpaper){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(testpaper);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
	}
	public TestPaper updateTestPaper(TestPaper testpaper){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
            session.update(testpaper);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return testpaper;
	}
	public List<TestPaper> getTestPaper(String tName){	
		Session session = null;
		List<TestPaper> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from testpaper where tName like '%"+tName+"%'";
			Query q=session.createQuery(hql);
			list=q.list();
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return list;
	}
}
