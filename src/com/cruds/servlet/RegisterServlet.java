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
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		
		UserDAO dao=new UserDAO();
		User u=new User(name, password, email);
		HttpSession session=request.getSession(true);
		
		if(dao.Insert(u))
		{
			session.setAttribute("SIGNUP"," SignUp Success please SignIn ");
			
			RequestDispatcher rdq=request.getRequestDispatcher("login.jsp");
			rdq.forward(request, response);

		}
		else
		{
			request.setAttribute("MESSAGE","Invalid Credentials");
			RequestDispatcher rdq=request.getRequestDispatcher("signup.jsp");
			rdq.forward(request, response);

		}
	}

}
