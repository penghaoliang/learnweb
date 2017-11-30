package com.dao;

import org.hibernate.Session;

import com.model.message.Reply;
import com.tools.HibernateUtils;

public class ReplyDao {
	public  void insertReply(Reply reply){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(reply);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}	
	}
	
}
