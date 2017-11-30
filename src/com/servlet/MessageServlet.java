package com.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MessageDao;
import com.dao.ReplyDao;
import com.model.message.Message;
import com.model.message.Reply;
import com.model.tool.Page;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet(name = "MessageServlet", urlPatterns = { "/message/MessageServlet.do" })
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MessageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && "pageMessage".equals(action)) {
			this.pageMessage(request, response);
		} else if ("addMessage".equals(action)) {
			this.addMessage(request, response);
		} else if ("replyMessage".equals(action)) {
			this.replyMessage(request, response);
		}
	}

	protected void pageMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String no = request.getParameter("pageNo");
		// 3.业务处理
		MessageDao service = new MessageDao();
		int pageSize = 3; // 页面大小
		int pageNo = 1; // 默认的pageNo为1
		if (no != null && no != "") {
			pageNo = Integer.valueOf(no);
		}
		// 获取总条数
		int totalCount = service.getTotalCount();
		Page page = new Page(pageSize, pageNo, totalCount);
		List<Message> list = service.findPage(page);
		if (list != null) {
			System.out.println("find All page success");
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getRequestDispatcher("/message/message.jsp").forward(request, response);
		} else {
			System.out.println("find All page fail!");
		}
	}

	protected void addMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Date date = new Date();
		DateFormat df2 = DateFormat.getDateTimeInstance();
		df2.format(date);
        String mes=request.getParameter("message");
        HttpSession session=request.getSession();
        Message message=new Message();
        MessageDao messageDao=new MessageDao();
        message.setAuthor((String)session.getAttribute("name"));
        message.setContent(mes);
        message.setDate(date);
        messageDao.insertMessage(message);
        request.getRequestDispatcher("/message/viewmessage.jsp").forward(request, response);
	}
	protected void replyMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Date date = new Date();
		DateFormat df2 = DateFormat.getDateTimeInstance();
		df2.format(date);
        String mes=request.getParameter("message1").trim();
        String message_id=request.getParameter("message_id");
        HttpSession session=request.getSession();
        Reply reply=new Reply();
        ReplyDao replyDao=new ReplyDao();
        if(mes!=""){
        reply.setAuthor((String)session.getAttribute("name"));
        reply.setContent(mes);
        reply.setMessage_id(message_id);
        reply.setDate(date);
        replyDao.insertReply(reply);
        }
        request.getRequestDispatcher("/message/viewmessage.jsp").forward(request, response);
	}
}
