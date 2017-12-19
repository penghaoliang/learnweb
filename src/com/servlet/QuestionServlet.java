package com.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

import com.dao.OptionsDao;
import com.dao.QuestionsDao;
import com.dao.TestPaperDao;
import com.model.Options;
import com.model.Questions;
import com.model.TestPaper;
import com.model.message.Message;
import com.tools.DateTools;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet(name ="viewquestion", urlPatterns = { "/teacher/viewquestion.do" })
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action != null && "addtest".equals(action)) {
			this.addtest(request, response);
		} else if ("addquestion".equals(action)) {
			this.addquestion(request, response);
		} else if ("viewtest".equals(action)) {
			this.viewtest(request, response);
		} else if ("resultTest".equals(action)) {
			this.resulttest(request, response);
		}else if ("viewquestion".equals(action)) {
			this.viewquestion(request, response);
		}
	}
	protected void addtest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		TestPaper t=new TestPaper();
		TestPaperDao tdao=new TestPaperDao();
		String tname=request.getParameter("tName");
		t.settName(tname);
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		Date starttime=new Date();
		try{
			starttime=df.parse((String)request.getParameter("startTime"));
			}
			catch(Exception e){
			}
		t.setStartTime(starttime);
		Date endtime=new Date();
		try{
			endtime=df.parse((String)request.getParameter("startTime"));
			}
			catch(Exception e){
			}
		t.setEndTime(endtime);
		Questions q=new Questions();
		QuestionsDao qdao=new QuestionsDao();
		String qname=request.getParameter("qName");
		String qanswer=request.getParameter("qAnwser");
		t.getQuestionsSet().add(q);
		tdao.insertTestPaper(t);
		session.setAttribute("t", t);
		session.setAttribute("q", q);
		request.getRequestDispatcher("/teacher/viewtest.jsp").forward(request, response);
	}
	protected void viewtest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		List list = (List)request.getAttribute("list");
		DateTools dateTools = new DateTools();
		for(int i=0;i<list.size();i++){
			  TestPaper testPaper = (TestPaper)list.get(i);
			  boolean editable = true;//判断当试卷是否可编辑
			  if(testPaper.getEndTime().getTime()<System.currentTimeMillis()||//考过的
					  (testPaper.getStartTime().getTime()<System.currentTimeMillis()&&testPaper.getEndTime().getTime()>System.currentTimeMillis()))//正在考的
					  {
				  editable  = false;
					  }
			  if(editable){
				  String d=testPaper.gettName();
			  int a =testPaper.getId();
			  String b = dateTools.convertDateToString(testPaper.getStartTime(), "yyyy-MM-dd HH:mm");
			  String c= dateTools.convertDateToString(testPaper.getEndTime(), "yyyy-MM-dd HH:mm");
			  session.setAttribute("a", a);
			  session.setAttribute("b", b);
			  session.setAttribute("c", c);
			  session.setAttribute("d", d);
			  request.getRequestDispatcher("/teacher/viewtest.jsp").forward(request, response);
		}		
	}
	}
	protected void addquestion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 Questions q=new Questions();
		 QuestionsDao qdao=new QuestionsDao();
		 HttpSession session=request.getSession();
		 String qname=request.getParameter("qName");
		 String qanswer=request.getParameter("qAnwser");
		 String[] ono= request.getParameterValues("oNo");
		 String[] oname=request.getParameterValues("oName");
		 OptionsDao odao=new OptionsDao();
		 q.setqName(qname);
		 q.setqAnswer(qanswer);
		 for(int i=0;i<4;i++) {
			 Options o=new Options();
			 o.setoName(oname[i]);
			 o.setoNo(ono[i]);
			 o.setQuestions(q);
			 q.getOptions().add(o);
		 }
		 qdao.insertQuestions(q);
		 request.getRequestDispatcher("/teacher/tiaozhuan.jsp").forward(request, response);
	}
	protected void viewquestion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QuestionsDao qdao=new QuestionsDao();
		List<Questions> list=qdao.getQuestionsList();
		request.setAttribute("questionList", list);
		request.getRequestDispatcher("/teacher/viewquestions.jsp").forward(request, response);
		
	}
	protected void resulttest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
	}
}
