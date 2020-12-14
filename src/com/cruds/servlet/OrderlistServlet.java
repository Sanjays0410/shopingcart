package com.cruds.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.date.Dateutil;
import com.cruds.db.OrderListDAO;
import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;

/**
 * Servlet implementation class orderlist
 */
public class OrderlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderlistServlet() {
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


		String email=(String)session.getAttribute("email");


		OrderListDAO dao=new OrderListDAO();


		List<Product> list= (List<Product>) session.getAttribute("list");


		String total=(String) session.getAttribute("FINALTOTAL");
		String status="Packed ready to shipping";
		
		Orderitem ol=new Orderitem(email, total,Dateutil.getCurrentDate(),status);

		
			if((dao.finalorder(list,ol)))

			{
				/*List<OrderList> o=(List<OrderList>) dao.orders(email);
				System.out.println( "orderssssssssssssssssssssssssssssssssssssssssss"+o);*/
				Orderitem orderid=dao.fetchorderid(email);
				session.setAttribute("MESSAGE","Yours order is placed order id is --> "+orderid);
				RequestDispatcher rs=request.getRequestDispatcher("ViewOrdersid.jsp");
				rs.forward(request, response);
				
			}

			else  
			{
				request.setAttribute("MESSAGE","Error");
			}
			
			
		}
	}


