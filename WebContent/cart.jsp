<%@page import="sun.net.www.content.text.plain"%>
<%@page import="com.cruds.entity.Cart"%>
<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.cruds.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All products website | store</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap"
	rel="stylesheet">
</head>
<body>

	<style>
h1 {
	/* font-family: 'Cookie', cursive;
        font-size: "30px";
        color:#800040 ;*/
	font-family: 'Sacramento', cursive;
	font-size: "35px";
	color: #800040;
}
</style>
	<br>
	<div></div>

	<%-- <%
		User msg = (User) session.getAttribute("MESSAGE");

		if (msg != null) {
	%>

	<h1>
		<%=msg%>

	</h1>
	<%
		}
	%> --%>


	<%-- <% String ms=(String)session.getAttribute("NULL");
	if(ms!=null){%>
	
	<h1>
	
	<%=ms %></h1>
	
	<%} %>  --%>
	
	<%String ms=(String) session.getAttribute("mess");
	
%>

	<div class="container">

		<div class="navbar">
			<div class="logo">
				<a href="index.html"><img src="" width="69px"></a>
			</div>
			<nav>
			<ul id="menuItems">
				<li><a href="index.html">Home</a></li>
				<li><a href="products.jsp">Products</a></li>
				<li><a href="About.html">About</a></li>
				<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
				<li><a href="login.jsp">SignIN/SignUp</a></li>

			</ul>
			</nav>
			<img src="images/cart.png" width="30px" height="30px"> <img
				src="images/menu.png" class="menu" onclick="menutoggle()">
		</div>
	</div>

	<div class="small-cat cart-page">

		<table>

			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Total</th>
			</tr>
			
			<%
				List<Product> list = (List<Product>) session.getAttribute("list");
				if (list != null) {
			%>

			<%
				for (Product p : list) {
			%>

			<tr>
				<td>
					<div class="cartinfo">
						<img
							src=<%-- <%String image =(String) session.getAttribute("image src");

			if (image != null) {%>
							<%=image%> <%}%> 
							 --%>
							 <%String image = p.getImage();
					if (image != null) {%>
							<%=image%> <%}%>>
						<div>

							<p>
								<%-- <%
									String name = (String) session.getAttribute("itemname");
									if (name != null) {
								%>

								<%=name%>

								<%
									}
								%> --%>
								<%
									String name = p.getItemname();
											if (name != null) {
								%>
								<%=name%>
								<%
									}
								%>
							</p>

							<small> <%-- <%
 	String prize = (String) session.getAttribute("itemprize");
 	if (prize != null) {
 %> <%=prize%> <%
 	}
 %> --%> <%
 	String price = p.getItemprice();
 			if (price != null) {
 %> <%=price%> <%
 	}
 %>

							</small> <br> <a href="RemoveServlet">Remove</a>

						</div>
					</div>
				</td>
				<td><input type="number" id="quantity" name="quantity"
					value=<%String quantity = p.getQty();
					if (quantity != null) {%>
					<%=quantity%> <%}%>></td>
				<td>
					<%-- <%
						String prize1 = (String) session.getAttribute("itemprize");
						if (prize1 != null) {
					%> <%=prize1%> <%
 	}
 %> --%> <%
 	String price1 = p.getItemprice();
 			if (price1 != null) {
 %> <%=price1%> <%
 	}
 %>

				</td>
			</tr>
			
			
			 <%
		}
	%> 
			
		</table>

		<div class="total-price">

			<table>

				<%--  <%
					List<Product> plist = (List<Product>) session.getAttribute("list");
					if (plist != null) {
				%> --%>
 
				<tr>
					<td class="value-button" id="decrease" onclick="decreaseValue()">SubTotal</td>
					<td>
						<%
							String price2 = (String) session.getAttribute("total");
								if (price2 != null) {
						%> <%=price2%> <%
 	}
 %>

					</td>

				</tr>
				<tr>
					<td>Discount</td>
					<td>
						<%
							String dis = (String) session.getAttribute("discount");
								if (dis != null) {
						%> <%=dis%> <%
 	}
 %>
					</td>
					</tr>
					
				<tr>
					<td class="value-button" id="increase" onclick="increaseValue()">Total</td>
					<td>
						<%
							String total = (String) session.getAttribute("Finaltotal");
								if (total != null) {
						%> <%=total%> <%
 	}
 %>

					</td>
					
					<tr>
					<td>Tax</td>
					<td>
						<%
							String tax = (String) session.getAttribute("Tax");
								if (tax != null) {
						%> <%=tax%> <%
 	}
 %>
					</td>
				</tr>
				
				<tr>
					<td class="value-button" id="increase" onclick="increaseValue()"> Final Total</td>
					<td>
						<%
							String finto = (String) session.getAttribute("FINALTOTAL");
								if (finto != null) {
						%> <%=finto%> <%
 	}
 %>
 
 

					</td>
				</tr>

			</table>

		</div>

		<a href="login.jsp"><button name="Action" type="submit"
				class="btn-2" value="BuyNow">Buy Now</button></a>

	</div>

	
	<%
				}
			%>
  
			
    <%--   <%} %> --%>
          
          
	<!-- <div class="footer">
		<div class="cat">
			<div class="row">

				<div class="footer-col-1">
					<h3>Download our App</h3>
					<p>Download App for Andriod and ios mobile phone.</p>
					<div class="applogo">
						<img src="images/play-store.png"> <img
							src="images/app-store.png">

					</div>
				</div>
				<div class="footer-col-2">
					<img src="">
					<p>different lines.</p>
				</div>

				<div class="footer-col-1">
					<h3>Useful links</h3>
					<ul>
						<li>Coupons</li>
						<li>Blog Post</li>
						<li>Return Policy</li>
						<li>Join Affiliate</li>
					</ul>

				</div>

				<div class="footer-col-1">
					<h3>Follow us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>YouTube</li>
					</ul>

				</div>

			</div>
		</div>
		<hr>
		<p class="copyright">Sprith</p>
	</div> -->

	<script src="new.js"></script>

	<script type="text/javascript">
		var menuItems = document.getElementById("menuItems");
		menuItems.style.maxHeight = "0px";

		function menutoggle() {
			if (menuItems.style.maxHeight == "0px") {
				menuItems.style.maxHeight = "200px"
			} else {
				menuItems.style.maxHeight = "0px"
			}

		}
	</script>
</body>
</html>
