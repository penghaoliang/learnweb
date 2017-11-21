package com.tools;


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
	private static SessionFactory factory;	//����Session����
	//��̬������ʵ����Session����
	static{
		Configuration cfg = new Configuration().configure();
        ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();
        factory = cfg.buildSessionFactory(serviceRegistry);
	}
	/**
	 * ��ȡSession����
	 * @return SessionFactory
	 */
	public static SessionFactory getSessionFactory(){
		return factory;
	}
	/**
	 * ��ȡSession
	 * @return Session
	 */
	public static Session getSession(){
		return factory.openSession();
	}
	/**
	 * �ر�Session�ͷ���Դ
	 * @param session
	 */
	public static void closeSession(Session session){
		if(session != null){
			if(session.isOpen()){
				session.close();
			}
		}
	}
}
