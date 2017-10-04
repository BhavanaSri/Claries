<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container">
<h2><i>Claries</i></h2>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
 <!-- Indicators -->
 <ol class="carousel-indicators">
   <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
   <li data-target="#myCarousel" data-slide-to="1"></li>
   <li data-target="#myCarousel" data-slide-to="2"></li>
 </ol>

 <!-- Wrapper for slides -->
 <div class="carousel-inner">
   <div class="item active">
     <img class="img-rounded" class="img-responsive center-block"
     src="resources/image1.jpg/" style="width:100%">
   </div>

   <div class="item">
   <img class="img-rounded" class="img-responsive center-block"
     src="resources/image2.jpg/" style="width:100%">
   </div>

   <div class="item">
   <img class="img-rounded" class="img-responsive center-block"
     src="resources/image3.jpg/" style="width:100%">
   </div>

 </div>

 <!-- Left and right controls -->
 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
   <span class="glyphicon glyphicon-chevron-left"></span>
   <span class="sr-only">Previous</span>
 </a>
 <a class="right carousel-control" href="#myCarousel" data-slide="next">
   <span class="glyphicon glyphicon-chevron-right"></span>
   <span class="sr-only">Next</span>
 </a>
</div>




</body>
</html>

