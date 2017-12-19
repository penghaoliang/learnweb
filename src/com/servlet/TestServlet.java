package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.QuestionsDao;
import com.model.Questions;

/**
 * Servlet implementation class testServlet
 */
@WebServlet(name = "TestServlet", urlPatterns = { "/student/TestServlet.do" })
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action != null && "viewtest".equals(action)) {
			this.viewtest(request, response);
		}else if("test".equals(action)) {
			this.test(request, response);
		}
	}
		protected void viewtest(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			QuestionsDao qdao=new QuestionsDao();
			int i=0;
			int grade=0;
			HttpSession session=request.getSession();
			session.setAttribute("i", i);
			session.setAttribute("grade", grade);
			List<Questions> list=qdao.getQuestionsList();
			request.setAttribute("questionList", list.get(i));
			request.getRequestDispatcher("/student/test.jsp").forward(request, response);
		}
		protected void test(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			QuestionsDao qdao=new QuestionsDao();
			HttpSession session=request.getSession();
			int grade=Integer.parseInt(session.getAttribute("grade").toString());
			String answer=request.getParameter("answer");
			String a=request.getParameter("x");
			if(a.equals(answer)) {
				grade+=20;
			}
			int i=Integer.parseInt(session.getAttribute("i").toString());
			i++;
			session.setAttribute("i", i);
			session.setAttribute("grade", grade);
			List<Questions> list=qdao.getQuestionsList();
			 if(i==5){
				request.getRequestDispatcher("/student/test1.jsp").forward(request, response);
			}else{
				request.setAttribute("questionList", list.get(i));
				request.getRequestDispatcher("/student/test.jsp").forward(request, response);
			}

		}
}
