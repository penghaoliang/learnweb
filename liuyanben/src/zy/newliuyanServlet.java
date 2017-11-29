package zy;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="/newliuyanServlet",urlPatterns= {"/newliuyan.do"})
public class newliuyanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newliuyanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Liuyan liuyan=new Liuyan();
		liuyan.setname(request.getParameter("Name"));
		liuyan.setemail(request.getParameter("Email"));
		liuyan.setsubject(request.getParameter("Subject"));
		liuyan.setmemo(request.getParameter("Memo"));
		//String Name;
		String Email;
	//	String Subject;
	//	String Memo;
	//	Name = request.getParameter("Name");
		Email = request.getParameter("Email");
	//	Subject = request.getParameter("Subject");
	//	Memo = request.getParameter("Memo");
		String Line1;
		Line1 = "留言人：" + liuyan.getname();
		Line1 = Line1 + " "; 
		Email = "<a href=mailto:" + Email + ">" + Email + "</a>";
		Line1 = Line1 + "Email:" + Email + "<br>"+"主 题：" + liuyan.getsubject() + "<br>";
		String Line2;
		//Line2 = "<TABLE BORDER=0 BGCOLOR=#00FFFF><TR><TD>";
		Line2 =  liuyan.getmemo() + "<br>";
		String Line3;
		Date currTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd a hh:mm:ss",Locale.US);
		Line3 = "时 间："+ formatter.format(currTime);
		String Line4 ="";
		if(session.getAttribute("d")!=null) 
		Line4=(String) session.getAttribute("d");
		Line4+=Line1+Line2+Line3+"<br>";
	    if(Line4!=null)
		session.setAttribute("d", Line4);
	    String Line5="";
	    if(session.getAttribute("e")!=null) 
			Line5=(String) session.getAttribute("e");
		    Line5+="标题: "+liuyan.getsubject()+"<br>";
		    if(Line5!=null)
			session.setAttribute("e", Line5);
		//List<String> d=new ArrayList<String>();
		//d.add(Line4);
        //session.setAttribute("d",d);		
		request.getRequestDispatcher("newliuyan.jsp").forward(request, response);
	}

}
