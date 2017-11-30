package com.dao;

import org.hibernate.Session;

import com.model.message.Reply;
import com.tools.HibernateUtils;

public class ReplyDao {
	public  void insertReply(Reply reply){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(reply);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}
	
}
