package com.cruds.servlet;

import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.db.OrderListDAO;
import com.cruds.db.ProductDAO;
import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;

/**
 * Servlet implementation class ProductServlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());


		HttpSession session=request.getSession(true);

		//int item=1;


		/*String it=String.valueOf(1);


		List<Product> p=new ProductDAO().getall(it);


		request.setAttribute("PROD_LIST",p);
		request.setAttribute("MESSAGE","Success");

		RequestDispatcher rdq=request.getRequestDispatcher("Tshirt.jsp");
		rdq.forward(request, response);


		RequestDispatcher rd=request.getRequestDispatcher("Index.jsp");
		rd.forward(request, response);*/
		
		
		String orderid=(String) session.getAttribute("orderid");
		
		List<Orderitem> list1=(List<Orderitem>) new OrderListDAO().Fetchproduct(orderid);
		session.setAttribute("PRODUCT_LIST", list1);
		
		RequestDispatcher rd=request.getRequestDispatcher("viewbasedorderid.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}

