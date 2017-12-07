package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GradeDao;
import com.dao.StudentDao;
import com.model.Grade;
import com.model.Student;
import com.tools.Email;

/**
 * Servlet implementation class GradeServlet
 */
@WebServlet(name = "GradeServlet", urlPatterns = { "/teacher/GradeServlet.do" })
public class GradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GradeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && "gradedaoru".equals(action)) {
			this.gradedaoru(request, response);
		}else if ("daoru".equals(action)) {
			this.daoru(request, response);
		}else if ("gradefenxi".equals(action)) {
			this.gradefenxi(request, response);
		}else if ("gradeyujing".equals(action)) {
			this.gradeyujing(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void gradedaoru(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        StudentDao studentDao=new StudentDao();
        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Student> list=studentDao.getStudents();
        for(int j=0;j<list.size();j++){
        	Student i=list.get(j);
        	if(i.getCourse()==null){
        		list.remove(i);
        		j--;
        		continue;
        	}
        	if(i.getGrade()!=null){
        		list.remove(i);
        		j--;
        		continue;
        	}
        	if(!i.getCourse().getTeacher().getId().equals(id)){
        		list.remove(i);
        		j--;
        	}
        }
		request.setAttribute("student_list", list);
		request.getRequestDispatcher("/teacher/gradedaoru.jsp").forward(request, response);
	}
	protected void gradeyujing(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int judge=0;
		String name=request.getParameter("name");
		String i=request.getParameter("i");
        String usual_Grade=request.getParameter("usual_Grade");
        String mid_Grade=request.getParameter("mid_Grade");
        String final_Grade=request.getParameter("final_Grade");
        String experiment_Grade=request.getParameter("experiment_Grade");
        String email=request.getParameter("email");
        String context="你好"+name+"<br>你的平时成绩是："+usual_Grade+"你的期中成绩是："+mid_Grade+"你的期末成绩是："+final_Grade+"你的实验成绩是："+experiment_Grade;
        if(i.equals("2")){
        	context+="<br>你成绩不合格，请准备补考。";
        }
        try {
			Email.sendEmail(email, context);
		} catch (Exception e) {
			judge=1;
			e.printStackTrace();
		}
        String basePath=(String)request.getAttribute("basePath");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if(judge==0)
        out.print("<script language='javascript'>alert('发送成功');window.location.href='"+basePath+"/teacher/viewgradefenxi.jsp';</script>");
        else
        out.print("<script language='javascript'>alert('发送失败');window.location.href='"+basePath+"/teacher/viewgradefenxi.jsp';</script>");	
	}
	protected void daoru(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] student_id=request.getParameterValues("student_id");
        String[] usual_Grade=request.getParameterValues("usual_Grade");
        String[] mid_Grade=request.getParameterValues("mid_Grade");
        String[] final_Grade=request.getParameterValues("final_Grade");
        String[] experiment_Grade=request.getParameterValues("experiment_Grade");
        Grade grade=new Grade();
        Student student=new Student();
        GradeDao gradeDao=new GradeDao();
        StudentDao studentDao=new StudentDao();
		for(int i=0;i<student_id.length;i++){
			if(usual_Grade[i].trim()!=""&&mid_Grade[i].trim()!=""&&final_Grade[i].trim()!=""&&experiment_Grade[i].trim()!=""){
				student=studentDao.getStudent(student_id[i]);
				grade.setExperiment_Grade(Integer.valueOf(experiment_Grade[i]));
				grade.setFinal_Grade(Integer.valueOf(final_Grade[i]));
				grade.setId(student_id[i]);
				grade.setMid_Grade(Integer.valueOf(mid_Grade[i]));
				grade.setUsual_Grade(Integer.valueOf(usual_Grade[i]));
				grade.setStudent(student);
				student.setGrade(grade);
				gradeDao.insertGrade(grade);
			}
		}
        request.getRequestDispatcher("/teacher/viewgradedaoru.jsp").forward(request, response);
	}
	protected void gradefenxi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        StudentDao studentDao=new StudentDao();
        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Student> list=studentDao.getStudents();
        for(int j=0;j<list.size();j++){
        	Student i=list.get(j);
        	if(i.getCourse()==null){
        		list.remove(i);
        		j--;
        		continue;
        	}
        	if(i.getGrade()==null){
        		list.remove(i);
        		j--;
        		continue;
        	}
        	if(!i.getCourse().getTeacher().getId().equals(id)){
        		list.remove(i);
        		j--;
        	}
        }
        int[] a = {0,0,0,0,0};
        double b;
        for(Student s:list){
        	b=s.getGrade().getUsual_Grade()*0.1+s.getGrade().getFinal_Grade()*0.6+s.getGrade().getMid_Grade()*0.1+s.getGrade().getExperiment_Grade()*0.2;
            if(b>90)a[4]++;
            else if(b>80)a[3]++;
            else if(b>70)a[2]++;
            else if(b>60)a[1]++;
            else a[0]++;        
        }
		request.setAttribute("student1_list", list); 
		session.setAttribute("a", a);
        request.getRequestDispatcher("/teacher/gradefenxi.jsp").forward(request, response);
	}
}
