<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.WatchBtls"%>
<%@page import="com.DAO.WatchDAoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Details</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
<%User u=(User)session.getAttribute("userobj"); %>
	<%@include file="allcomponents/navbar.jsp"%>

     <% 
      
      int bid= Integer.parseInt(request.getParameter("bid"));
       WatchDAoImpl dao=new WatchDAoImpl(Dbconnect1.getConn());	
       WatchBtls b= dao.getWatchById(bid);
   %>
     
	
	<div class="container p-3">
	
	
		<div class="row">
			<div class="col-md-6 text-center p-5 boder bg white">
				<img src="watchimg/<%=b.getPhotoName() %>" style="height: 150px; width: 150px"><br>
				<h4 class="mt-3">Watch Name:<span class="text-success"><%=b.getWatchName() %></span></h4>
				<h4>Model Name:<span class="text-success"><%=b.getModel() %></span></h4>
				<h4>Category:<span class="text-success"><%=b.getWatchCategory() %></span></h4>

			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getWatchName() %></h2>
				<div class="row ">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-money-bill-wave fa-3x"></i>
						<p> Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-undo-alt fa-3x"></i>
					<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
					<i class="fas fa-truck-moving fa-3x"></i>
					<p>Free Shipping</p>
					</div>

				</div>
				<div class="text-center p-3">
				<%if(u==null)
							{%>
							<a href="login.jsp" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
							
							<%}else{
							%>
								<a href="Cart?wid=<%=b.getWatchId() %>&&uid=<%=u.getId()%>" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
							 <%
							 }%>
				
				<!-- - <a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>Add Cart</a>-->
				<a href="" class="btn btn-danger"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
				</div>
			</div>
		</div>
	</div>
</body>

</html>