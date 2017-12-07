package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Confirm;
import com.model.Course;
import com.model.Student;
import com.tools.HibernateUtils;

public class ConfirmDao {
	public  void insertConfirm(Confirm confirm){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(confirm);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}	
	public List<Confirm> getConfirms(){	
		Session session = null;
		List<Confirm> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Confirm";
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
	public Confirm deleteConfirm(String id){	
		Session session = null;
		Confirm confirm = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			confirm=(Confirm)session.get(Confirm.class, id);
			session.delete(confirm);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return confirm;
	}
}
