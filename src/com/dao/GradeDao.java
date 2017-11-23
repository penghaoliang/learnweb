package com.dao;

import org.hibernate.Session;

import com.model.Grade;
import com.tools.HibernateUtils;

public class GradeDao {
	
public  void insertGrade(Grade grade){
	Session session = null;
	try {
		session = HibernateUtils.currentSession();		//��ȡSession
		session.beginTransaction();					//��������
		session.save(grade);						//�������
		session.getTransaction().commit();			//�ύ����
	} catch (Exception e) {
		e.printStackTrace();						//��ӡ������Ϣ
		session.getTransaction().rollback();		//�����ع�����
	}finally{
		HibernateUtils.closeSession();		//�ر�Session
	}	
}
}
