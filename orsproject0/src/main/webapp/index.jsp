<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>


<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'/>
	
<meta name="viewport" content="width=device-width" />



<!-- bootstrap library -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	
	
	
<style type="text/css">

body {
	background-image:
		url('http://localhost:8080/orsproject0/resources/img/download.jpg');
		background-repeat: no-repeat;
		background-size: 100%;
		
}

.p1 {
	padding-top: 300px;
}

.btn {
	background: #ffc61a;
	border-radius: 100px;
	padding: 5px 10px;
	color: #fff;
	text-decoration: none;
	font-size: 0.75em;
	margin: 0 15px;
}


 .btn {
  background-color: #ffc61a;
  border: none;
  transition: 0.3s;
}


</style>

</head>

<body>


<div class="img">

	<div class="p1">
	 	
	 	<h1 align="Center">
			<img src="resources/img/img4.png" width="300" height="150" border="0">
		</h1>
		
		<h1 align="Center">
			<a href='<c:url value="/Welcome"></c:url>' class="btn btn-lg ">Online Result System</a>
		</h1>
		
	</div>
	
</div>


</body>

</html>
