package zy;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="loginServlet",urlPatterns= {"/login.do"})
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		// TODO Auto-generated method stub
		ServletContext context=getServletContext();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession session=request.getSession(true);
		if(username!=null&&username.equals("hp")&&password!=null&&password.equals("0743")) {
			session.setAttribute("loggin",true);
			context.setAttribute("username", username);		
			response.setContentType("text/html;charset=UTF-8");
				
			response.sendRedirect("newliuyan.jsp");	
			return;
		}else {
			response.sendRedirect("error.jsp"); 
			//RequestDispatcher dispatcher=request.getRequestDispatcher("/login.jsp");
			//dispatcher.forward(request, response);
	}
	}
}
