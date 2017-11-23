package com.dao;

import org.hibernate.Session;

import com.model.Teacher;
import com.tools.HibernateUtils;

public class TeacherDao {
	public  void insertTeacher(Teacher teacher){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(teacher);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}	
	}

}
