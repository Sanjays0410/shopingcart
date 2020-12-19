package com.cruds.servlet;
import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.cruds.entity.Product;

/**
 * Servlet implementation class RemoveServlet
 */
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RemoveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session=request.getSession();


		List<Product> list= (List<Product>)session.getAttribute("list");

		System.out.println("list============"+list);

		
		int sum = 0;
		float totalsum = 0f;
		//disc is used to show discount value in int
		int disc=25;

		float discount=25;
		float dis=(100-discount);
		
		int tax=10;
		float ta=(100+tax);
		
		float finaltotalwithtax=0;
	
		list.remove(0);
		
		if(list.size()==0)
		{
			session.removeAttribute("list");
		}
		
		for(Product p1:list)
		{
			
			sum+=Integer.valueOf(p1.getItemprice());

			session.setAttribute("total",Integer.toString(sum));

			System.out.println("sum======"+sum);

			System.out.println( "discount==="+disc+"%");


			totalsum += dis*Integer.parseInt(p1.getItemprice())/100;
			//System.out.println("total==="+total);


			session.setAttribute("discount",String.valueOf(disc)+"%");
			
			session.setAttribute("Tax",String.valueOf(tax)+"%");

			session.setAttribute("Finaltotal",Float.toString(totalsum));
			
			finaltotalwithtax=(ta*totalsum)/100;
			System.out.println(ta);
			session.setAttribute("FINALTOTAL",String.valueOf(finaltotalwithtax));
			
			System.out.println("final total==="+finaltotalwithtax);
			
			
		}

		RequestDispatcher rs=request.getRequestDispatcher("cart.jsp");
		rs.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
