<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

		<head>
		
    
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>CLARIES</title>
  			<style type="text/css">
  			@import url(http://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { width: 100%; display:block; }

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:100%;  }
  			
  			body { 
    width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
   
}

input { 
	width: 100%; 
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
	
  			</style>
		</head>
</head>
<nav id ="navbar-red" class="navbar-inverse"role="navigation">
			
			<div class="container-fluid">
				<ul="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse"data target="bs-example-nav">
						<span class="sr-only">toggle navigation</span>
						<span class="icon_bar"></span>
		
						<span class="icon_bar"></span>
					</button>
				</ul>
				
			</div>
		
			<div class="collapse navbar-collapse"id=bs-example-nav>
			<a class="navbar-brand" href="home">Claries</a>
			
				<ul class="nav navbar-nav navbar-right">
					
					<!--  <li><a href="home">Home</a></li>-->
					
			        <sec:authorize access="isAuthenticated()">
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
              
                  </sec:authorize>
	
						
				</ul>
	  		</div>
	  	</nav>

<body>
<div id="wrap">
<div id="main" class="container clear-top">
<div class = "row">
      <div class = "col-xs-8 jumbotron">
      	<div class = "col-xs-5">
      		<p>Shipping Address:</p><br>
      		 ${address.name}<br/>
      		${address.address1}
      		<br/>${address.address2}
      		<br/>${address.landmark}
      		 <br>${address.city} &nbsp; ${address.state}
      		 <br/> Pincode : ${address.pincode}
      		<br/> Mobile: <c:choose>
      		<c:when test="${address.phone eq 0}">${sessionScope.user.phone}</c:when>
      		<c:when test="${not empty address.phone}">${address.phone}</c:when>
      		</c:choose>
      	</div>
      	<div class = "col-xs-4">
      	 <p>Payment Method</p>
      	 <br>${paymentChoice}
      	</div>
      </div>
      
      <div class= "col-xs-4">
      
      	 <div class ="jumbotron">
      	 <a class="btn btn-warning btn-block" href="${pageContext.request.contextPath}/processOrder">Place Order</a><br><br/>
      	 <p>Order Summary</p>
      	 <h5> Items Subtotal :<span class="fa fa-inr"></span> ${cartTotalAmount}</h5>
      	 <h5> Delivery Charges:<span class="fa fa-inr"></span>   50.0 </h5>
      	 <hr/>
      	 <c:set var="ordertot" value="${cartTotalAmount + 50.0}"></c:set>
      	 <p>OrderTotal: <span class="fa fa-inr"></span> ${ordertot}</p>
      
      	 </div>
      </div>
  </div>
  
  <div class="row">
	 <div class="col-sm-12 col-md-10 col-md-offset-1">
	 <table class="table table-hover table-condensed">
	 <thead>
			<tr>
			<th>Product</th>
			<th></th>
			<th></th>
			<th class="text-center">Expected Delivery</th>
			<th class="text-center">Quantity</th>
			
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${cartList}" var ="cart">
			<tr>
			 <td class="col-sm-8 col-md-6">
			<div class="media">
			 <a class="thumbnail pull-left" href=""><img class="media-object" src="/Claries/myImage/imageDisplay?id=${cart.productId}" class="img-thumbnail" width="72px" height="72px"/></a>
					
			<div class="media-body">
			<c:forEach items="${productList}" var="product">	
				<c:if test="${product.productId == cart.productId}">
			<h4 class="media-heading"><a href="">${product.productName}</a></h4>
                                <h5 class="media-heading"></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                 </c:if>
              </c:forEach>
               <td class="col-sm-1 col-md-1 text-center"></td>
			 <td class="col-sm-1 col-md-1 text-center"></td>
             <td class="col-sm-1 col-md-1">
             With in 7 working days
 			 </td>
			 <td class="col-sm-1 col-md-1" style="text-align: center">
			
			${cart.productQuantity}
			
			</td>
			
			
				
		</tr>
		
		</c:forEach>
		<tr>
			<td>  </td>
			<td>  </td>
			<td>  </td>
			<td></td>
			<td class="text-right"><h5><a class="btn btn-sm btn-warning"  href="${pageContext.request.contextPath}/cart">Edit Order</a></h5></td>
		</tr>
		
		
		</tbody>
		
	</table>
	
		</div>
	</div>
  </div>
  </div>
</body>
<jsp:include page="footer.jsp" /> 
</html>