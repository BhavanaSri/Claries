 <!--  
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
		
		<div class="collapse navbar-collapse"id=bs-example-nav>
			<a class="navbar-brand" href="#">Claries</a>
			
				<ul class="nav navbar-nav navbar-right">
					
					  <sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="registration">Register </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 <li role="presentation"><a href="cart">cart</a></li>
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	  	
	  	<div class="container-fluid">
     <div >
        <div class="row">
     <c:forEach items="${plist}" var="product">
            <div class="col-md-4 col-sm-3">
                <div class="thumbnail"><img src="/Claries/myImage/imageDisplay?id=${product.productId}" alt="" width="298" height="398" />
                <div class="caption">
                        <h3>${product.productName}</h3>
                        <ul>
                        <li>Price: Rs.<Strong>${product.price}</Strong></li>
                    		<form:form action="addToCart/${product.productId}">
                                <button type="submit" value="Add to Cart" class="btn btn-primary btn-lg btn-cart"><span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart </button>
                                 
          </form:form>
          <div>                 
                                <button class="btn btn-primary btn-lg btn-cart" data-toggle="modal" data-target="#${product.productId}" type="button">More details</button>
    							   
    							<div class="modal fade" id="${product.productId}" role="dialog" tabindex="-1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    
    							   
                    <h4 class="modal-title">${product.productName}</h4></div>
                <div class="modal-body">
             		
                <div class="thumbnail"><img src="/Claries/myImage/imageDisplay?id=${product.productId}" alt="" width="200" height="300" />
                     <ul>
               
                  <p>${product.productDesc}</p>
                    <li>Price: Rs.<Strong>${product.price}</Strong></li>
                                  	</ul>
                  <div class="col-xs-offset-2 col-xs-12">
               </div>                    
        </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                    <form:form action="addToCart/${product.productId}">
                     <button type="submit" value="Add to Cart" class="btn btn-primary btn-lg btn-cart"><span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart </button>
              		</form:form>
                </div>
            </div>
        </div>
   </div>   
                   </ul>
                    </div>
                </div>
               
            </div>
            
         </c:forEach>
                </div>
            </div>
        </div>
        
	  	
	  	
	  	
	  	
	</body>
</html> -->
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>

		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>Claries</title>
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
		
			<div class="collapse navbar-collapse"id=bs-example-nav>
			<a class="navbar-brand" href="#">Claries</a>
			
				<ul class="nav navbar-nav navbar-right">
					
					  <sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="registration">Register </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 <li role="presentation"><a href="cart">cart</a></li>
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	 <!--  	======================== -->
	  	
	  	
	  	
	<c:forEach items="${pList}" var="product">
   
    <div class="container">
        <div class="row product">
            <div class="col-md-5 col-md-offset-0">
            <img src="/GreenAvenueFrontEnd/myImage/imageDisplay?id=${product.productId}" alt="" width="300" height="200" /></div>
            <div class="col-md-7">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Specifications </th>
                                <th>Details </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> Name</td>
                                <td>${product.productName}</td>
                            </tr>
                            <tr>
                                <td>Price </td>
                                <td>${product.price} </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>${product.productDesc} </td>
                            </tr>
                            <tr>
                                <td>colourS </td>
                                <td>Orange,Black,White </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form:form action="addToCart/${product.productId}" method="POST">
                <button class="btn btn-default" type="submit">Add to cart</button>
                </form:form>
            </div>
        </div>
        
        <div class="media">
            <div class="media-body"></div>
        </div>
        <div class="media">
            <div class="media-body"></div>
        </div>
    </div>
    </c:forEach>  
	  
	  
	   <!--  	======================== -->
		
	  	
	</body>
</html> -->