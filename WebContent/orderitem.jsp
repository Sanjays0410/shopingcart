<%@page import="com.cruds.entity.Orderitem"%>
<%@page import="java.util.List"%>
<%@page import="com.cruds.entity.User"%>
<%@page import="com.cruds.entity.Orderitem"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Cart</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jav.js">
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
</head>
<body>

	<div class="container">

		<div class="navbar">
			<div class="logo"></div>
			<nav>
				<ul id="menuItems">
					<li><a href="index.html">Home</a></li>
					<li><a href="products.jsp">Products</a></li>
					<li><a href=" About.html">About</a></li>
					<li><a href=" http://www.crudsinfotech.com/">Contact</a></li>
					<li><a href="login.jsp">SignIN/SignUp</a></li>
				</ul>
			</nav>
			<a href=""><img src="images/cart.png" width="30px" height="30px"></a>
			<img src="images/menu.png" class="menu" onclick="menutoggle()">
		</div>
	</div>

	

	<div></div>
<br>
<br>

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
	
	
	<div class="row">
				<marquee class="margin">
					Here its all yours Orders :)
				</marquee>
				</div>
	



	<%-- <% String  msg1=(String)session.getAttribute("MESSAGE");
	if(msg1!=null){
	%>
	<h1>
	<%=msg1 %>
	
	</h1>
	<%
	}
	%> --%>


	<div></div>
	
	
	
	
	

	<form action="OrderlistServlet" method="post"></form>

	<%
		List<Orderitem> plist = (List<Orderitem>) session.getAttribute("ORDER_LIST");
	%>


	<div class="small-cat cart-page">
	
	<style>
	
	td,th{
  text-align: center;
}
	</style>

		<table border="1">
			<thead>
				<tr>
					<!-- <th> Item Image</th> -->
					<th>Item Name</th>
					<th>Order id</th>
					<th>Item Price</th> 
					<th>Item Quantity</th>
					<th>Order Date(yyyy/mm/dd)</th>
					<th>Order Status</th>
					
				</tr>
			</thead>

			<tbody>
				<%
					if (plist != null) {
						for (Orderitem o : plist) {
				%>
				<tr>
					<%-- <td><%=o.getImage()%></td> --%>
					<td><%=o.getName()%></td>
					<td><%=o.getOrderid()%></td>
					<td><%=o.getPrice()%></td>
					<td><%=o.getQty()%></td>
					<td><%=o.getOrder_date() %></td>
					<td><%=o.getStatus() %></td>
					
				
				</tr>
					<%
					}
					}
				%>
			</tbody>
		</table>
	</div>


	<%-- <%
	 String name=(String)session.getAttribute("itemname");
	 
	 %>
	 <h1>
	
	<%=name %>
 </h1> --%>


</body>
</html>