<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All products website | store</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>




	<div class="container">

		<div class="navbar">
			<div class="logo">
				<a href="index.html"><img src="" width="69px"></a>
			</div>
			<nav>
				<ul id="menuItems">
					<li><a href="index.html">Home</a></li>
					<li><a href="products.jsp">Products</a></li>
					<li><a href=" About.html">About</a></li>
					<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
					<li><a href="login.jsp">SignIN/SignUp</a></li>
				</ul>
			</nav>
			<a href="cart.jsp"><img src="images/cart.png" width="30px"
				height="30px"></a> <img src="images/menu.png" class="menu"
				onclick="menutoggle()">
		</div>
	</div>

	<div class="small-cat single-product">
		<div class="row">
			<div class="col-2">
				<img src="images/product-2.jpg" width="100%" id="ProductImg">
				<div class="small-img-row"></div>

			</div>
			<div class="col-2">
				<p>Home / Shoes</p>
				<h1>HRX Shoes</h1>
				<h4>750</h4>
				<select>
					<option>Select Size</option>
					<option>Medium Size</option>
					<option>Long Size</option>
					<option>Small Size</option>
					<option>XL</option>
					<option>XXl</option>
				</select> <input type="number" value="1"> <a
					href="CartServlet?itemid=2&itemname=Shoes&itemprice=750&image src=images/product-2.jpg&quantity=1"
					class="btn" id="myButton1" onclick="change()">Add To Cart </a>
				<h3>
					Product Details <i class="fa fa-indent"></i>
				</h3>
				<br>
				<p>Porduct details fro t evqqkkaffvlajefbv</p>
			</div>
		</div>
	</div>


	<div class="small-cat">
		<div class="row row-2">
			<h2>Related Product</h2>
			<a href="products.jsp"><p class="new">View more</p></a>
		</div>
	</div>


	<div class="small-cat">

		<div class="row">
			<div class="col-4">
				<a href="Tshirt.jsp"> <img src="images/product-1.jpg"></a>
				<h4>Printed T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
						class="fa fa-star-o"></i>
				</div>
				<p>1000</p>
			</div>
			<div class="col-4">
				<a href="shoes.jsp"> <img src="images/product-2.jpg"></a>
				<h4>HRX Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star-o"></i>
				</div>
				<p>750</p>
			</div>
			<div class="col-4">
				<a href="pant.jsp"><img src="images/product-3.jpg"></a>
				<h4>Joggers Pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
						class="fa fa-star-o"></i>
				</div>
				<p>1500</p>
			</div>


			<div class="col-4">
				<a href="pumablue.jsp"><img src="images/product-4.jpg"></a>
				<h4>Puma T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star-o"></i>
				</div>
				<p>1500</p>
			</div>
		</div>


	</div>


	<div class="footer">
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
	</div>

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
	<script src="new.js"></script>
	<script>
		function change() // no ';' here
		{
			var elem = document.getElementById("myButton1");
			if (elem.value == "Add To Cart")
				elem.value = "Added";
			else
				elem.value = "Add To Cart";
		}
	</script>


</body>

</html>