package com.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.tools.HibernateUtils;

public class CheckDao {
	public  boolean checkUserName(String username){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
            query = session.createQuery("from Person as u where u.username=:username");
            query.setString("username", username);
            list=query.list(); 
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
        if(list.size()==0) return false;
        else return true;
	}
	public  boolean checkNumber(String number){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
            query = session.createQuery("from Person as u where u.id=:number");
            query.setString("number", number);
            list=query.list(); 
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
        if(list.isEmpty()) return false;
        else return true;
	}
	public  boolean checkUser(String username,String password){
		Session session = null;
		Query query = null;
		List list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
            query = session.createQuery("from Person as u where u.username=:username and u.password=:password");
            query.setString("username", username);  
            query.setString("password", password);
            list=query.list();
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
        if(list.isEmpty()) return false;
        else return true;
	}
}
