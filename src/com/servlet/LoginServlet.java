package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CheckDao;
import com.dao.PersonDao;
import com.dao.StudentDao;
import com.dao.TeacherDao;
import com.model.Person;
import com.model.Student;
import com.model.Teacher;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginServlet.do" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action!=null&&"verifyUser".equals(action)) {
			this.verifyUser(request, response);
		} else if ("verifyNumber".equals(action)) {
			this.verifyNumber(request, response);
		} else if ("registerUser".equals(action)) {
			this.registerUser(request, response);
		} else if ("login".equals(action)) {
		     this.login(request, response);
	}else if ("quit".equals(action)) {
	     this.quit(request, response);
}
	}
	 private void quit(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
           HttpSession session=request.getSession();
           session.removeAttribute("name");
           session.removeAttribute("userName");
           session.removeAttribute("mail");
           session.removeAttribute("id");
           session.removeAttribute("sf");
           response.sendRedirect("index.jsp");
		}
	   private void login(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String username = request.getParameter("username");
			String pwd = request.getParameter("pwd");
			PersonDao personDao = new PersonDao();
			String value;
			Person person=personDao.getPersonByUserName(username);
			if (person != null&&person.getPassword().equals(pwd)) {
				HttpSession session = request.getSession();
				session.setAttribute("name", person.getName());
				session.setAttribute("mail", person.getEmail());
				session.setAttribute("id", person.getId());
				session.setAttribute("userName", username);
				session.setAttribute("sf", person.getSf());
				value = "true";
				response.getWriter().write(value);
			} else {
				value = "false";
				response.getWriter().write(value);
			}
		}
	private void registerUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao studentDao=new StudentDao();
		TeacherDao teacherDao=new TeacherDao();
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd1");
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String identity = request.getParameter("identity");
		if(identity!=null&&identity.equals("1")){
			Student stu=new Student();
			stu.setEmail(email);
			stu.setId(number);
            stu.setName(name);
            stu.setPassword(pwd);
            stu.setSf(Integer.parseInt(identity));
            stu.setUsername(user);
            studentDao.insertStudent(stu);        
		}else if(identity!=null&&identity.equals("2")){	
			Teacher teacher=new Teacher();
			teacher.setEmail(email);
			teacher.setId(number);
            teacher.setName(name);
            teacher.setPassword(pwd);
            teacher.setSf(Integer.parseInt(identity));
            teacher.setUsername(user);
            teacherDao.insertTeacher(teacher);   			
		}
		response.sendRedirect("index.jsp");
	}

	private void verifyUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("user");
		CheckDao checkDao = new CheckDao();
		response.setContentType("text/html");
		String value;
		if (checkDao.checkUserName(user) == true) {
			value = "false";
			response.getWriter().write(value);
		} else {
			value = "true";
			response.getWriter().write(value);
		}
	}

	private void verifyNumber(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String number = request.getParameter("number");
		CheckDao checkDao = new CheckDao();
		response.setContentType("text/html");
		String value;
		if (checkDao.checkNumber(number) == true) {
			value = "false";
			response.getWriter().write(value);
		} else {
			value = "true";
			response.getWriter().write(value);
		}
	}
}
