package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ConfirmDao;
import com.dao.CourseDao;
import com.dao.StudentDao;
import com.model.Confirm;
import com.model.Course;
import com.model.Student;

/**
 * Servlet implementation class TeacherServlet
 */
@WebServlet(name = "TeacherServlet", urlPatterns = { "/teacher/TeacherServlet.do" })
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && "queren".equals(action)) {
			this.queren(request, response);
		}else if ("delete".equals(action)) {
			this.delete(request, response);
		}else if ( "confirm".equals(action)) {
			this.confirm(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void queren(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ConfirmDao dao = new ConfirmDao();
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		List<Confirm> list = dao.getConfirms();
		for(int j=0;j<list.size();j++){
			Confirm i=list.get(j);
			if(!i.getTeacher_id().equals(id)){
				list.remove(i);
				j--;
			}
		}
		request.setAttribute("confirm_list", list);
		request.getRequestDispatcher("/teacher/queren.jsp").forward(request, response);
	}
	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("id");
		ConfirmDao dao = new ConfirmDao();
		dao.deleteConfirm(id);
		request.getRequestDispatcher("/teacher/viewqueren.jsp").forward(request, response);
	}
	protected void confirm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("id");
		int num=Integer.valueOf(request.getParameter("num"));
		Confirm confirm;
		Student student;
		Course course;
		ConfirmDao dao = new ConfirmDao();
		confirm=dao.deleteConfirm(id);
		StudentDao studentDao =new StudentDao();
		CourseDao courseDao =new CourseDao();
		course=courseDao.getCourseBynum(num);
		student=studentDao.getStudent(confirm.getStudent_id());
		student.setCourse(course);
		studentDao.updateStudent(student);
		request.getRequestDispatcher("/teacher/viewqueren.jsp").forward(request, response);
	}
}
