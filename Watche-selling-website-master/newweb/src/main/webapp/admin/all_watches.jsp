<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.WatchDAoImpl"%>
<%@page import="com.entity.WatchBtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add:All Watches</title>
<%@include file="allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h1 class="text-center">Hello Admin!</h1>
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<div class="container">
		<table class="table table-striped ">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Image</th>
					<th scope="col">Watch Name</th>
					<th scope="col">Model Name</th>
					<th scope="col">Price</th>
					<th scope="col">Categories</th>
					<th scope="col">Status</th>
					
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				WatchDAoImpl dao = new WatchDAoImpl(Dbconnect1.getConn());
				List<WatchBtls> l = dao.getAllWatches();
				for (WatchBtls b : l) {
				%>
				<tr>
					<td><%=b.getWatchId()%></td>
					<td><img src="../watchimg/<%=b.getPhotoName()%>"
						style="width: 50px; height: 50px"></td>
					<td><%=b.getWatchName()%></td>
					<td><%=b.getModel()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getWatchCategory()%></td>
					<td><%=b.getStatus()%></td>
					<td><a href="edit.jsp?id=<%=b.getWatchId()%>"
						class="btn btn-sm btn-primary">Edit</a> 
						<a href="../delete?id=<%=b.getWatchId() %>"class="btn btn-sm btn-danger">Delete</a></td>
				</tr>

				<%
				}
				%>


			</tbody>
		</table>





	</div>




</body>
</html>