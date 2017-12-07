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

import com.dao.ConfirmDao;
import com.dao.CourseDao;
import com.model.Confirm;
import com.model.Course;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet(name = "StudentServlet", urlPatterns = { "/student/StudentServlet.do" })
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && "takeCourse".equals(action)) {
			this.takeCourse(request, response);
		} else if ("zbqueren".equals(action)) {
			this.zbqueren(request, response);
		} else if ("xuankelist".equals(action)) {
			this.xuankelist(request, response);
		}
	}

	protected void takeCourse(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CourseDao dao = new CourseDao();
		List<Course> list = dao.getCourses();
		request.setAttribute("course_list", list);
		request.getRequestDispatcher("/student/takeCourse.jsp").forward(request, response);
	}

	protected void zbqueren(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int coursenum = Integer.valueOf(request.getParameter("num"));
		String teacher_id = request.getParameter("teacher_id");
		HttpSession session = request.getSession();
		ConfirmDao dao = new ConfirmDao();
		Confirm c = new Confirm();
		c.setStudent_id((String) session.getAttribute("id"));
		c.setStudent_name((String) session.getAttribute("name"));
		c.setTeacher_id(teacher_id);
		c.setCoursenum(coursenum);
		dao.insertConfirm(c);
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('此用户名已存在,请换名注册');");
		out.println("</script>");
		request.getRequestDispatcher("StudentServlet.do?action=xuankelist").forward(request, response);
	}

	protected void xuankelist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ConfirmDao dao = new ConfirmDao();
		List<Confirm> list = dao.getConfirms();
		request.setAttribute("confirm_list", list);
		request.getRequestDispatcher("/student/xuankelist.jsp").forward(request, response);
	}
}
