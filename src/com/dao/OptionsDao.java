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
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(options);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}
	public void deleteOptions(int id) {
		Session session = null;
		Options options = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			options=(Options)session.get(Options.class, id);
			session.delete(options);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
	}
	public List getOptionsList() {
		Session session = null;
		List<Options> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Options";
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
}
