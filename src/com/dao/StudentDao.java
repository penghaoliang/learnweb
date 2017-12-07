package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Student;
import com.tools.HibernateUtils;

public class StudentDao {
	
	public  void insertStudent(Student student){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(student);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}	
	}
	
	public Student getStudent(String id){	
		Session session = null;
		Student student = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			student=(Student)session.get(Student.class, id);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return student;
	}
	public Student deleteStudent(String id){	
		Session session = null;
		Student student = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			student=(Student)session.get(Student.class, id);
			session.delete(student);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return student;
	}
	public Student updateStudent(Student student){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
            session.update(student);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return student;
	}
	public List<Student> getStudents(){	
		Session session = null;
		List<Student> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from Student where sf=1";
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
