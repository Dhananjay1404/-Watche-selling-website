<%@page import="com.entity.Watch_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.WatchOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:All Watches </title>
<%@include file="allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h1 class="text-center">Hello Admin!</h1>
	<div class="container">
		<table class="table table-striped ">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Phone No</th>
					<th scope="col">Watches Name</th>
					<th scope="col">Model Name</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
					
					
				</tr>
			</thead>
			<tbody>
			<%
			    WatchOrderImpl dao= new WatchOrderImpl(Dbconnect1.getConn());
			    List<Watch_Order> blist=dao.getAllOrder();
			    for(Watch_Order b:blist)
			    {%>
			    
				<tr>
					<th scope="row"><%=b.getOrderId()%></th>
					<td><%=b.getUsername()%></td>
					<td><%=b.getEmail()%></td>
					<td><%=b.getFulladd()%></td>
					<td><%=b.getPhno()%></td>
					<td><%=b.getWatchName()%></td>
					<td><%=b.getModel()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getPaymentType()%></td>
					
				</tr>
			    	
			    <% }
			    %>
			
			

			</tbody>
		</table>





	</div>




</body>
</html>