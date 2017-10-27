<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div class="page-header">
<br>
</div>
<div class="row">
<div class="col-md-6">
<div class="panel with-nav-tabs panel-primary">
<div class="panel-heading">
<ul class="nav nav-tabs">
<li class="active"><a href="#tab1prime" data-toggle="tab">Category</a></li>
<li><a href="#tab2prime" data-toggle="tab">Supplier</a></li>
<li><a href="#tab3prime" data-toggle="tab">Products</a></li>
</ul>
</div>
<div class="panel-body">
<div class="tab-content">
<div class="tab-pane fade in active" id="tab1prime">
<form method="post" action="<c:url value="/admin/savecat"/>" class="form-signin">
<span id="reuth-email" class="reyth-email"></span>
<h3 class="input-title">Category Name</h3>
<input class="form-control" type="number" name="cid" required/>
<h3 class="input-title">Category Name</h3>
<input class="form-control" type="text" name="cname" required/>
<button class="btn btn-lg btn-primary" type="submit ">Save</button>
<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
</form>
<div class="tab-pane fade in active" id="tab2prime">
<form method="post" action="<c:url value="/admin/saveSupp"/>" class="form-signin">
<span id="reuth-email" class="reyth-email"></span>
<h3 class="input-title">Supplier ID</h3>
<input class="form-control" type="number" name="sid" required/>
<h3 class="input-title">Supplier Name</h3>
<input class="form-control" type="text" name="sname" required/>
<button class="btn btn-lg btn-primary" type="submit ">Save</button>
<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
</form>
<div class="tab-pane fade in active" id="tab3prime">
<form method="post" action="<c:url value="/admin/saveprod"/>" class="form-signin" enctype="multipart/form-data">
<span id="reuth-email" class="reyth-email"></span>
<h3 class="input-title">Product Name</h3>
<input type="text" name=pName" required/><br>
<h3 class="input-title">Product Stock</h3>
<input type="text" name=pStock" required/>
<h3 class="input-title">Product Desciption</h3>
<input type="text" name=pdescription" required/>
<h3 class="input-title">Product Price</h3>
<input type="text" name=pPrice" required/>

<div class="form-group">
<h4>Select Category</h4><br>
<select class="form-control" name="pCat" required>
<option value="">--------Category choices---------</option>
<c:forEach items=${catlist}" var="cat">
<option value=${cat.cid}">${cat.cname}</option></c:forEach>
</select>
</div>

<div class="form-group">
<h4>Select Category</h4><br>
<select class="form-control" name="pCat" required>
<option value="">--------Supplier choices---------</option>
<c:forEach items=${supplist}" var="cat">
<option value=${sup.sid}">${sup.sname}</option></c:forEach>
</select>
</div>
<br><br>

<div class="fileinput fileinput-nav" data-provides="fileinput">
<tr>
<td>Image</td>
<td><Input class="form-control" type="file" name="file" accept="image/"></td>
</tr>
</div>


<button class="btn btn-lg btn-primary" type="submit ">Save</button>
<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
</form>

</div>



</div>
</div>




</div>
</div>
</div>



</div>

</body>
</html>