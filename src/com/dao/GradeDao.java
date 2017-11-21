package com.dao;

import org.hibernate.Session;

import com.model.Grade;
import com.tools.HibernateUtils;

public class GradeDao {
	
public  void insertGrade(Grade grade){
	Session session = null;
	try {
		session = HibernateUtils.getSession();		//获取Session
		session.beginTransaction();					//开启事物
		session.save(grade);						//保存对象
		session.getTransaction().commit();			//提交事物
	} catch (Exception e) {
		e.printStackTrace();						//打印错误信息
		session.getTransaction().rollback();		//出错将回滚事物
	}finally{
		HibernateUtils.closeSession(session);		//关闭Session
	}	
}
}
