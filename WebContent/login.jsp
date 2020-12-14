<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Shopping cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All products website | store</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Mono&family=Spectral+SC:wght@700&display=swap"
	rel="stylesheet">

<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
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
					<li><a href="About.html">About</a></li>
					<li><a href=" http://www.crudsinfotech.com/">Contact</a></li>
					<li><a href="login.jsp">SignIN/SignUp</a></li>
				</ul>
			</nav>
			<a href="cart.jsp"><img src="images/cart.png" width="30px"
				height="30px"></a> <img src="images/menu.png" class="menu"
				onclick="menutoggle()">
		</div>
	</div>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>



				<form class="login100-form validate-form" action="LoginServlet"
					method="post">
					<span class="login100-form-title"> Sign In </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Email"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Sign In</button>
					</div>




					<div class="text-center p-t-12">
						<span class="txt1"> Forgot </span> <a class="txt2" href="#">
							Username / Password? </a>
					</div>

					<style>
h1 {
	font-family: 'Roboto Mono', monospace;
	font-family: 'Spectral SC', serif;
	color: green;
}
</style>



					<%
						String name = (String) request.getAttribute("MESS");
						if (name != null) {
					%>
					<h1>
						<%=name%></h1>


					<%
						}
					%>


					<%
						String msg = (String) request.getAttribute("MESSAGE");
						if (msg != null) {
					%>


					<br>


					<h1>
						<%=msg%>


					</h1>

					<%
						}
					%>
					
					
					<%
						String signup = (String) session.getAttribute("SIGNUP");
						if (signup != null) {
					%>

					<h1>
						<%=signup%>

					</h1>

					<%
						}
					%>


					<div class="text-center p-t-136">
						<a class="txt2" href="signup.jsp"> Create your Account <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>




				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>











	<!-- <div class="footer">
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
	<a href="#" ><p class="copyright"></p></a>
    
</div>-->

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

</body>
</html>