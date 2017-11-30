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
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();					//开启事物
			session.save(message);						//保存对象
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}	
	}
	
	public void deleteMessage(String id){	
		Session session = null;
		Message message = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			message=(Message)session.get(Message.class, id);
			session.delete(message);
			session.getTransaction().commit();			//提交事物
		} catch (Exception e) {
			e.printStackTrace();						//打印错误信息
			session.getTransaction().rollback();		//出错将回滚事物
		}finally{
			HibernateUtils.closeSession();		//关闭Session
		}
	}
	
	public List<Message> getMessages(){	
		Session session = null;
		List<Message> list = null;
		try {
			session = HibernateUtils.currentSession();		//获取Session
			session.beginTransaction();	
			String hql="from Message order by date desc";
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
	
	public List<Message> findPage(Page page) {
	    //1.获取session
	    Session session=HibernateUtils.currentSession();
	    
	    //2.定义查询最大记录数的hql
	    String hql="from Message order by date desc";
	    
	    //3.定义查询最大记录数的Query对象
	    Query querypage=session.createQuery(hql);
	    
	    //4.查询最大记录数的数据
	    querypage.setMaxResults(page.getPagesize());
	    
	    //5.确定查询起点
	    querypage.setFirstResult(page.getStartrow());
	    
	    //6.分页查询
	    List<Message> list=querypage.list();
	    
	    //7.关闭session
	    HibernateUtils.closeSession();
	    
	    return list;
	}
	public int getTotalCount() {
	    //1.获取session
	    Session session=HibernateUtils.currentSession();
	    
	    //2.定义查询总条数hql语句
	    String hqlcount="select count(*) from Message";
	    
	    //3.利用Session创建Query对象
	    Query querycount=session.createQuery(hqlcount);
	    
	    //4.获取总条数(返回单行数据uniqueResult())
	    Integer totalCount=Integer.parseInt(querycount.uniqueResult().toString());
	    //5.释放资源
	    HibernateUtils.closeSession();
	    return totalCount;
	}
	    

}
