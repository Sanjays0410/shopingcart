
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cruds.classes.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>All products website | store</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="jav.js">
	<title>Insert title here</title>
</head>
<body>
<%-- <%
				Product p=(Product)request.getAttribute("PROD_LIST");
 				
					
			%>
 --%>

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
				<li><a href=" http://www.crudsinfotech.com/">Contact</a></li>
				<li><a href="login.jsp">SignIN/SignUp</a></li>
			</ul>
		</nav>
		<a href="cart.jsp"><img src="images/cart.png" width="30px" height="30px"></a>
		<img src="images/menu.png" class="menu" onclick="menutoggle()">
	</div>
	</div>

	<div class="small-cat">
		<div class="row row-2">
			<h2>All Products</h2>
			<select>
				<option>Default Shorting</option>
				<option>Short by Prize</option>
				<option>Short by Rating</option>
				<option>Short by Trend</option>
				<option>Short by Sale</option>
			</select>
		</div>
		
		
		<div class="row">
			<div class="col-4">
			
			
		<%-- onclick="setData(<%=p.getItemid()%>);" --%>
					
			
				<a href="Tshirt.jsp"><img src="images/product-1.jpg"></a>
				<h4>Printed T-Shirt</h4>
				
				
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			
		
			<div class="col-4">
                <a href="shoes.jsp"><img src="images/product-2.jpg"></a>
				<h4>HRX Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
			<a href="pant.jsp"><img src="images/product-3.jpg"></a>
				<h4>Jogger pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<a href="pumablue.jsp"><img src="images/product-4.jpg"></a>
				<h4>Puma T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-5.jpg">
				<h4>Sneaker Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-12.jpg">
				<h4>Addidas Pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-4">
				<img src="images/product-6.jpg">
				<h4>Puma T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-7.jpg">
				<h4>HRX Socks</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-8.jpg">
				<h4>Watch</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
		</div>
	<div class="row">
			<div class="col-4">
				<img src="images/product-9.jpg">
				<h4>Watch</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-10.jpg">
				<h4>Sparkx Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-11.jpg">
				<h4>lofers shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-1.jpg">
				<h4>Sneakers</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-2.jpg">
				<h4>Sneaker</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-3.jpg">
				<h4>addidas pullover</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<a href="miband.jsp"><img src="images/exclusive.png"></a>
				<h4>MI Band</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
		</div>

		<div class="page-btn">
			<a href="products.jsp"><span>1</span></a>
			<a href="products.jsp"><span>2</span></a>
			<a href="products.jsp"><span>3</span></a>
			
			<a href="products.jsp"><span>&#8594;</span></a>
		</div>

</div>

<div class="footer">
	<div class="cat">
		<div class="row">
			
			<div class="footer-col-1">
				<h3>Download our App</h3>
				<p>Download App for Andriod and ios mobile phone.</p>
				<div class="applogo">
					<img src="images/play-store.png">
					<img src="images/app-store.png">

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
	<p class="copyright"></p>
</div>

<script type="text/javascript">
	var menuItems = document.grtElementById("menuItems");
	menuItems.style.maxHeight = "0px";

	function menutoggle(){
		if(menuItems.style.maxHeight == "0px"){
			menuItems.style.maxHeight = "200px"
		}
		else{
			menuItems.style.maxHeight = "0px"
		}
	
	}
</script>


</body>
</html>
