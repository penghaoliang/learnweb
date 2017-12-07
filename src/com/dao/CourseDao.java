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
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Course order by coursenum desc";
			Query q=session.createQuery(hql);
			list=q.list();
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return list;
	}
	public Course getCourseBynum(int num){	
		Session session = null;
		List<Course> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Course c where c.coursenum=?";
			Query q=session.createQuery(hql);
			q.setInteger(0, num);
			list=q.list();
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return list.get(0);
	}
}
