  package com.cruds.servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.db.UserDAO;
import com.cruds.entity.User;

/**
 * Servlet implementation class LoginServlet
 */
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
		doGet(request, response);
		HttpSession session=request.getSession(true);
		String email=(String)request.getParameter("email");
		String password=request.getParameter("pass");
		
		 session.setAttribute("email", email);
		
		UserDAO dao=new UserDAO();
		User u=new User(email,password);
		
		if(dao.Login(u))
		{
			
			User name=dao.getname(email);

			session.setAttribute("MESS",name);

			RequestDispatcher rdq=request.getRequestDispatcher("cart2.jsp");
			rdq.forward(request, response);
			
		
		}
			/*PrintWriter out= response.getWriter();
			 out.println("LOGIN Sucess" );*/
			 
			//request.setAttribute("MESSAGE", "valid Login");
		else
		{
			/*PrintWriter out= response.getWriter();
			 out.println("LOGIN Error" );*/
			 
			request.setAttribute("MESSAGE","Invalid Credentials");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			/*RequestDispatcher rs=request.getRequestDispatcher("cart.jsp");
			rs.forward(request, response);*/

		}

	}

}
