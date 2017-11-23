package com.tools;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
/**
 * Hibernate�����࣬���ڻ�ȡSessionFactory��Session
 * @author lyq
 */
public class HibernateUtils {
	 public static final SessionFactory sessionFactory;  
	  //����sessionFactory  
	  static  
	  {  
	      try  
	      {  
	          // ����Ĭ�ϵ�hibernate.cfg.xml������һ��Configuration��ʵ��  
	    	  Configuration config=new Configuration().configure();
	          ServiceRegistry serviceRegistry =new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
	          sessionFactory=config.buildSessionFactory(serviceRegistry);  
	      }  
	      catch (Throwable ex)  
	      {  
	          System.err.println("Initial SessionFactory creation failed." + ex);  
	          throw new ExceptionInInitializerError(ex);  
	      }  
	  }  

	  // ThreadLocal���Ը������̵߳����ݹ�����˲�����Ҫ���߳�ͬ��  
	  public static final ThreadLocal<Session> session  
	      = new ThreadLocal<Session>();  
	  //����Session  
	  public static Session currentSession()  
	      throws HibernateException  
	  {  
	      //ͨ���̶߳���.get()������ȫ����Session  
	      Session s = session.get();  
	      // ������̻߳�û��Session,�򴴽�һ���µ�Session  
	      if (s == null)  
	      {  
	          s = sessionFactory.openSession();  
	          // ����õ�Session�����洢��ThreadLocal����session��  
	          session.set(s);  
	      }  
	      return s;  
	  }  
	  //�ر�Session  
	  public static void closeSession()  
	      throws HibernateException  
	  {  
	      Session s = session.get();  
	      if (s != null)  
	          s.close();  
	      session.set(null);  
	  }  
}
