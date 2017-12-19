package com.tools;



import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;


public class DateTools {
	
	 /**
       * ���ڸ�ʽ��Ϊyyyy-MM-dd  Ҳ������Ϊ yyyy-MM-dd HH:mm:ss
       * @return
       */
	  public String getCurrentDate()
	    {
		    Date  da = new Date(System.currentTimeMillis());
	        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	        return sf.format(da);
	    }
	  public String getCurretYearMonth(){
		  Date date = new Date(System.currentTimeMillis());
		  SimpleDateFormat sf = new SimpleDateFormat("yyyyMM");
		  return sf.format(date);
	  }
	 
	  public String getCurrentTime()
	    {
		    Date  da = new Date(System.currentTimeMillis());
	        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	        return sf.format(da);
	    }
	  /**
	   * ��ʽ�������ڸ�ʽΪyyyy-MM-dd HH:mm
	   * @param date
	   * @return
	   */
	  public String formatDatetostring(Date date){
		  SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		 return sf.format(date);
	  }
	  /**
	   * ��ʽ�������ڸ�ʽΪyyyy-MM-dd HH:mm
	   * @param date
	   * @return
	   */
	  public String formatDatetostringDay(Date date){
		  SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		 return sf.format(date);
	  }
	  
	  /**
	   * �ַ������͵�����ת��Ϊutil����Date���͵�����
	   * @param date
	   * @return
	   */
	  public Date formatStringtoDate(String date){
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		  Date datetime=new Date();
		  try {
		  datetime=sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return datetime;
	  }
	  
	  public Date formatStringtoDate2(String date){
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		  Date datetime=new Date();
		  try {
		  datetime=sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return datetime;
	  }	  
	  
	  /**
	   * ���ִ�ת��Ϊ���ڸ�ʽ
	   * modified by ������
	   */
	  public static Date convertStringtoDate(String date){
		  SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  SimpleDateFormat sdfCalendar = new SimpleDateFormat("yyyy-MM-dd");
		  Date datetime=new Date();
		  try {
				if(date.length()>10){
					datetime = sdfDate.parse(date);
					
				}else{
					datetime = sdfCalendar.parse(date);
				}
				
		 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return datetime;
	  }
	  
	  /**
	   * ���ִ�ת��Ϊ���ڸ�ʽ
	   * modified by ������
	   */
	  public static Date convertStringtoDate(String date,String mask){
		  SimpleDateFormat sdf = new SimpleDateFormat(mask);
		  Date datetime=new Date();
		  try {
		  datetime=sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return datetime;
	  }
	  
	  /**
	   * ������ת��Ϊ�ִ���ʽ
	   * modified by ������
	   */
	  public static String convertDateToString(Date date,String mask){
		  SimpleDateFormat sdf = new SimpleDateFormat(mask);

		  return sdf.format(date);
				
	  }	  
	  
	
	  /**
	   * @param days ���ָ������������ڣ�������ʾ������ǰ������
	   * @param isStart true��ʾ����ʼ���ڣ���Ҫ��ʱ������Ϊ0,false���ı�ʱ����
	   * @return ��ǰ������
	   */
	  public Date getDateAfter(int days,boolean isStart){
		  Calendar calendar = new GregorianCalendar(); 
		  calendar.add(Calendar.DAY_OF_YEAR, days);
		  if (isStart){
			  int year = calendar.get(Calendar.YEAR);
		      int month = calendar.get(Calendar.MONTH);
		      int day = calendar.get(Calendar.DAY_OF_MONTH);
		      calendar.set(year, month, day, 0, 0, 0);
		  }
		  return calendar.getTime();
	  }
	  
}
