package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Questions;
import com.model.Student;
import com.model.Teacher;
import com.model.message.Message;
import com.model.Course;
import com.tools.HibernateUtils;

public class QuestionsDao {
	public void insertQuestions(Questions questions){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(questions);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}
	public Questions updateQuestions(Questions questions){	
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
            session.update(questions);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return questions;
	}
	public void deleteQuestions(int id) {
		Session session = null;
		Questions questions = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			questions=(Questions)session.get(Questions.class, id);
			session.delete(questions);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
	}
	public List<Questions> getQuestionsList() {
		Session session = null;
		List<Questions> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Questions ";//q left join options o on q.id=o.qId where q.qName like ?";
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
	public Questions getQuestions(int id){	
		Session session = null;
		Questions q = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			q=(Questions)session.get(Questions.class, id);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
		return q;
	}
	
	
}
