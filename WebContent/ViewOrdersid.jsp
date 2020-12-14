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
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
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
	text-align: center;
}
</style>
<style>

h2 {


	color: #800040;
	text-align: center;

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
	
	
	

	<div class="container">

		<div class="navbar">
			<div class="logo">
				<a href=""><img src="" width="69px"></a>
			</div>
			<nav>
			<ul id="menuItems">
				<li><a href="index.html">Home</a></li>
				<li><a href="products.jsp">Products</a></li>
				<li><a href="About.html">About</a></li>
				<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
				<li><a href="login.jsp">SignIN/SignUp</a></li>
				<li><a href="ViewAllOrdersServlet">View Orders</a></li>
			</ul>
			</nav>
			<img src="images/cart.png" width="30px" height="30px"> <img
				src="images/menu.png" class="menu" onclick="menutoggle()">
		</div>
	</div>

<br>
<br>
<!-- <style>

h1 {
	/* font-family: 'Cookie', cursive;
        font-size: "30px";
        color:#800040 ;*/
	font-family: 'Sacramento', cursive;
	font-size: "35px";
	color: #800040;
}
</style> -->

 <%
		User msg = (User) session.getAttribute("MESS");

		if (msg != null) {
	%>

	<h1>
		<%=msg%>

	</h1>
	<%
		}
	%> 
	
	<br>
	
	
	<% String  msg1=(String)session.getAttribute("MESSAGE");
	if(msg1!=null){
	%>
	<h2>
	<%=msg1 %>
	
	</h2>
	<%
	}
	%>
	

	<%-- <%
	 String name=(String)session.getAttribute("itemname");
	 
	 %>
	 <h1>
	
	<%=name %>
 </h1> --%>




</body>
</html>