<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>CLARIES</title>
		</head>

	<body>
	  
	  	<nav id ="navbar-red" class="navbar-inverse"role="navigation">
			
			<div class="container-fluid">
				<ul="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse"data target="bs-example-nav">
						<span class="sr-only">toggle navigation</span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
		
						<span class="icon_bar"></span>
					</button>
				</ul>
				
			</div>
		
			<div class="collapse navbar-collapse" id="bs-example-nav">
   <ul class="nav navbar-nav ">
		<li><a href="home"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li></ul>
		
		<ul class="nav navbar-nav navbar-right">
		
		<li><a href="category">Category </a></li>
		<li><a href="supplier">Supplier </a></li>
		<li><a href="product">Product </a></li>
		 
		 
		  <sec:authorize access="isAuthenticated()">
                <li><a href="<c:url value="j_spring_security_logout" />"><i class="fa fa-sign-out" aria-hidden="true"/>Logout</a></li>
           </sec:authorize>
           </ul>
		
	
</div>
	  	</nav>
	</body>
</html>