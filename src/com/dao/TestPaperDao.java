package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import com.model.TestPaper;
import com.tools.HibernateUtils;

public class TestPaperDao {
	public  void insertTestPaper(TestPaper testpaper){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(testpaper);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
	}
	public TestPaper updateTestPaper(TestPaper testpaper){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
            session.update(testpaper);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return testpaper;
	}
	public List<TestPaper> getTestPaper(String tName){	
		Session session = null;
		List<TestPaper> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from testpaper where tName like '%"+tName+"%'";
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
