package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Options;
import com.model.Questions;
import com.tools.HibernateUtils;

public class OptionsDao {
	public void insertOptions(Options options){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(options);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}	
	}
	public void deleteOptions(int id) {
		Session session = null;
		Options options = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			options=(Options)session.get(Options.class, id);
			session.delete(options);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
	}
	public List getOptionsList() {
		Session session = null;
		List<Options> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from Options";
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
