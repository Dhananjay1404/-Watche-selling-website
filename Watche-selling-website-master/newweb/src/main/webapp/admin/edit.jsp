<%@page import="com.entity.WatchBtls"%>
<%@page import="com.DAO.WatchDAoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Edit Watches</title>
<%@include file="allcss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="caontainer">
		<div class="row ">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Edit Watches</h4>
				
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
					<%
					int id=Integer.parseInt(request.getParameter("id"));
					 WatchDAoImpl dao= new WatchDAoImpl(Dbconnect1.getConn());
					 WatchBtls b=dao.getWatchById(id);
					%>
						<form action="../EditWatchServlet" method="post">
						<input type="hidden" name="id" value="<%=b.getWatchId() %>">
							<div class="form-group">
								<label for="exampleInputEmail1">Watches Name*</label> <input
									name="wname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getWatchName()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Model Name*</label> <input
									name="mname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getModel()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Price</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
							</div>
							


							<div class="form-group">
								<label for="exampleInputEmail1">Watch Status</label> <select
									id="inputState" name="status" class="form-control">
									<%
									if("Active".equals(b.getStatus()))
									{
									%>
						          <option value="Active">Active</option>								
									<option value="Active">Inactive</option>
									<%
									}else
									{
														
																	
									%>
								 <option value="Active">Active</option>	
									<option value="Active">Active</option>
									<%
									}
									%>
								</select>
							</div>
							
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>