package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Course;
import com.model.Student;
import com.tools.HibernateUtils;

public class CourseDao {
	
	public List<Course> getCourses(){	
		Session session = null;
		List<Course> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from Course order by coursenum desc";
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
	public Course getCourseBynum(int num){	
		Session session = null;
		List<Course> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from Course c where c.coursenum=?";
			Query q=session.createQuery(hql);
			q.setInteger(0, num);
			list=q.list();
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return list.get(0);
	}
}
