package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Student;
import com.model.message.Message;
import com.model.tool.Page;
import com.tools.HibernateUtils;

public class MessageDao {
	
	public  void insertMessage(Message message){
		Session session = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();					//��������
			session.save(message);						//�������
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}	
	}
	
	public void deleteMessage(String id){	
		Session session = null;
		Message message = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			message=(Message)session.get(Message.class, id);
			session.delete(message);
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
	}
	
	public List<Message> getMessages(){	
		Session session = null;
		List<Message> list = null;
		try {
			session = HibernateUtils.currentSession();		//��ȡSession
			session.beginTransaction();	
			String hql="from Message order by date desc";
			Query q=session.createQuery(hql);
			list=q.list();
			session.getTransaction().commit();			//�ύ����
		} catch (Exception e) {
			e.printStackTrace();						//��ӡ������Ϣ
			session.getTransaction().rollback();		//�����ع�����
		}finally{
			HibernateUtils.closeSession();		//�ر�Session
		}
		return list;
	}
	
	public List<Message> findPage(Page page) {
	    //1.��ȡsession
	    Session session=HibernateUtils.currentSession();
	    
	    //2.�����ѯ����¼����hql
	    String hql="from Message order by date desc";
	    
	    //3.�����ѯ����¼����Query����
	    Query querypage=session.createQuery(hql);
	    
	    //4.��ѯ����¼��������
	    querypage.setMaxResults(page.getPagesize());
	    
	    //5.ȷ����ѯ���
	    querypage.setFirstResult(page.getStartrow());
	    
	    //6.��ҳ��ѯ
	    List<Message> list=querypage.list();
	    
	    //7.�ر�session
	    HibernateUtils.closeSession();
	    
	    return list;
	}
	public int getTotalCount() {
	    //1.��ȡsession
	    Session session=HibernateUtils.currentSession();
	    
	    //2.�����ѯ������hql���
	    String hqlcount="select count(*) from Message";
	    
	    //3.����Session����Query����
	    Query querycount=session.createQuery(hqlcount);
	    
	    //4.��ȡ������(���ص�������uniqueResult())
	    Integer totalCount=Integer.parseInt(querycount.uniqueResult().toString());
	    //5.�ͷ���Դ
	    HibernateUtils.closeSession();
	    return totalCount;
	}
	    

}
