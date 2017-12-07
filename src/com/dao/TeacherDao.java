package com.dao;

import org.hibernate.Session;

import com.model.Student;
import com.model.Teacher;
import com.tools.HibernateUtils;

public class TeacherDao {
	public  void insertTeacher(Teacher teacher){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(teacher);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}
	
	public Teacher getTeacher(String id){	
		Session session = null;
		Teacher teacher = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			teacher=(Teacher)session.get(Teacher.class, id);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return teacher;
	}

}
