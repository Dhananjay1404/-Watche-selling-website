<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.WatchBtls"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.WatchDAoImpl"%>
<html>
<title>E-Commerce</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/3046105.jpg");
	height: 65vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #f7f7f7;
}
.carousel-caption {
position:absolute;
top:0;
left:10;
background-color:rgba(0,0,0,0.1);
padding:10px;
color:white;
	
}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  
</head>
<body style=" background-color: #f7f7f7;">
<%User u=(User)session.getAttribute("userobj"); %>
	<%@include file="allcomponents/navbar.jsp"%>
	<!---<div class="container-fluid back-img">
		<h1 class="text-center text-danger">Rolex Premuim Watches</h1>
	</div>--->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active back-img">
   <img src="img/23344.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h4 class="text-left">Premium Watches</h4>
        <p class="text-left">Some representative placeholder content for the first slide.</p>
        <p><a href="#" class="btn btn-warning float-left mt-3" >Learn More</a></p>
      </div>
    </div>
      
    <div class="carousel-item  back-img">
      <img  src="img/456.jpg" class="d-block w-100" alt="Second slide">
        <div class="carousel-caption d-none d-md-block">
        <h4 class="text-left">Premium Watches</h4>
        <p class="text-left">Some representative placeholder content for the first slide.</p>
        <p><a href="#" class="btn btn-warning float-left mt-3">Learn More</a></p>
      </div>
    </div>
    <div class="carousel-item back-img">
      <img  src="img/3444.jpg"   class="d-block w-100" alt="Third slide" >
      <div class="carousel-caption d-none d-md-block">
    <h4 class="text-left">ATHLONE PARIS</h4>
    <p class="text-left">THE MOST LUXURIOUS WATCH BRAND INT THE WORLD</p>
     <p><a href="#" class="btn btn-warning float-left mt-3">Learn More</a></p>
    </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    	
  
    	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
    	
    	
    	
    	
    	
    	

	<!-- Start -->
	<div class="container ">
		<h3 class="text-center">New Edition Launching soon</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/2.jpg" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p>Fire-Boltt Legacy</p>
						<p>AMOLED Bluetooth Calling with First Ever Wireless Charging
						</p>
						<p>Categories:Watches</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href="view_watch.jsp"
								class="btn btn-Success btn-sm ">View details</a> <a href=""
								class="btn btn-danger btn-sm ">4999</a>
						</div>
					</div>
				</div>

			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/2.jpg" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p>Fire-Boltt Legacy</p>
						<p>AMOLED Bluetooth Calling with First Ever Wireless Charging
						</p>
						<p>Categories:Watches</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-Success btn-sm">View details</a> <a href=""
								class="btn btn-danger btn-sm ">4999</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/2.jpg" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p>Fire-Boltt Legacy</p>
						<p>AMOLED Bluetooth Calling with First Ever Wireless Charging
						</p>
						<p>Categories:Watches</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-Success btn-sm ">View details</a> <a href=""
								class="btn btn-danger btn-sm ">4999</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/2.jpg" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p>Fire-Boltt Legacy</p>
						<p>AMOLED Bluetooth Calling with First Ever Wireless Charging
						</p>
						<p>Categories:Watches</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
								class="btn btn-Success btn-sm ">View details</a> <a href=""
								class="btn btn-danger btn-sm ">4999</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center mt-1">
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
	</div>
	<!-- End Phase -->



	<!-- Start Rolex-->
	<div class="container ">
		<h3 class="text-center">Rolex Watches</h3>
		<div class="row">
		<%
		 WatchDAoImpl dao= new WatchDAoImpl(Dbconnect1.getConn());
		List<WatchBtls> list=dao.getRolexWatch();
		for(WatchBtls b:list)
		{%>
		
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="watchimg/<%=b.getPhotoName() %>" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p><%=b.getWatchName() %></p>
						<p><%=b.getModel() %>
						</p>
						<p>Categories:<%=b.getWatchCategory() %></p>
						<div class="row ">
						<%if(u==null)
							{%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							
							<%}else{
							%>
								<a href="Cart?wid=<%=b.getWatchId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							 <%
							 }%>
						
					   
								<a href="view_watch.jsp?bid=<%=b.getWatchId()%>"class="btn btn-Success btn-sm ">View details</a> <a href=""
								class="btn btn-danger btn-sm "><%=b.getPrice() %></a>
						</div>
					</div>
				</div>
		</div>
	<% 	}%>
	</div>
	<div class="text-center mt-1">
		<a href="Rolex.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>
	</div>
	
	
		<!-- End Phase -->



		<!-- Start -->
		<div class="container ">
			<h3 class="text-center">--FireBolt--</h3>
			<div class="row">
			<%
		 WatchDAoImpl DAo= new WatchDAoImpl(Dbconnect1.getConn());
		List<WatchBtls> l=dao.getFireboltWatch();
		for(WatchBtls b:l)
		{%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="watchimg/<%=b.getPhotoName() %>" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p><%=b.getWatchName() %></p>
						<p><%=b.getModel() %>
						</p>
						<p>Categories:<%=b.getWatchCategory() %></p>
						<div class="row ">
						<%if(u==null)
							{%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							
							<%}else{
							%>
								<a href="Cart?wid=<%=b.getWatchId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ">Add Cart</a>
							 <%
							 }%>
						
					   
								<a href="view_watch.jsp?bid=<%=b.getWatchId()%>"class="btn btn-Success btn-sm ml-1">View details</a> <a href=""
								class="btn btn-danger btn-sm "><%=b.getPrice() %></a>
						</div>
					</div>
				</div>
		</div>
	<% 	}%>
	</div>
		<div class="text-center mt-1">
			<a href="Firebolt.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
		</div>
		<!-- End Phase -->
		
			

	<!-- Start -->
	<div class="container ">
			<h3 class="text-center">--OMEGA WATCHES--</h3>
			<div class="row">
			<%
		 WatchDAoImpl DAO= new WatchDAoImpl(Dbconnect1.getConn());
		List<WatchBtls> l1=dao.getOmega();
		for(WatchBtls b:l1)
		{%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="watchimg/<%=b.getPhotoName() %>" style="width: 100px; height: 100px"
							class="img-thumblin">
						<p><%=b.getWatchName() %></p>
						<p><%=b.getModel() %>
						</p>
						<p>Categories:<%=b.getWatchCategory() %></p>
						<div class="row ">
						<%if(u==null)
							{%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							
							<%}else{
							%>
								<a href="Cart?wid=<%=b.getWatchId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ">Add Cart</a>
							 <%
							 }%>
						
					   
								<a href="view_watch.jsp?bid=<%=b.getWatchId()%>"class="btn btn-Success btn-sm ml-1">View details</a> <a href=""
								class="btn btn-danger btn-sm "><%=b.getPrice() %></a>
						</div>
					</div>
				</div>
		</div>
	<% 	}%>
	</div>
		<div class="text-center mt-1">
			<a href="iwatches.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
		</div>
	
</body>
</html>
