package com.dao;

import org.hibernate.Session;

import com.model.Student;
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
	
	public Teacher getTeacher(String id){	
		Session session = null;
		Teacher teacher = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			teacher=(Teacher)session.get(Teacher.class, id);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return teacher;
	}

}
