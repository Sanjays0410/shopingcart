package com.cruds.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.db.UserDAO;
import com.cruds.entity.Cart;
import com.cruds.entity.Product;
import com.cruds.entity.User;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		
		String id=request.getParameter("itemid");
		String name=request.getParameter("itemname");
		String price=request.getParameter("itemprice");
		String quantity=request.getParameter("quantity");
		String image=request.getParameter("image src");

		HttpSession session=request.getSession(true);


		//session.setAttribute("LIST_CART",cart); 

		session.setAttribute("itemid", id);
		session.setAttribute("itemname",name);
		session.setAttribute("itemprice",price); 
		session.setAttribute("image src",image);
		session.setAttribute("quantity", quantity);


		/*Cart cart=(Cart)session.getAttribute("CART");
		if(cart==null)
		{
			cart=new Cart();
		}
		else
		{
			Product p=new Product(id,name,prize,image);
			cart.addtocart(p);
			session.setAttribute("cart", cart);
			System.out.println("bag info===="+cart);	
		}*/

		List<Product> list= (List<Product>) session.getAttribute("list");


		
		/*if(list==null)
		{

			list =new ArrayList<>();
		}

		Product p=new Product(id, name, prize, image, quantity);

		System.out.println(p);
		
		list.add(p);
		session.setAttribute("list",list);
		*/
		 
		Product p=new Product(id, name, price, image, quantity);
		
		Cart c=new Cart(p);
		
		list= c.addtocart(list,p);
		
		session.setAttribute("list",list);

		System.out.println("list======"+list);

		////////// in case of tax////////////
		//tax=100+tax;

		int sum = 0;
		float totalsum = 0f;
		//disc is used to show discount value in int
		int disc=25;

		float discount=25;
		float dis=(100-discount);
		
		int tax=10;
		float ta=(100+tax);
		
		float finaltotalwithtax=0;

		
		
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
			
		RequestDispatcher rs=request.getRequestDispatcher("products.jsp");
		rs.forward(request, response);


	}

}
