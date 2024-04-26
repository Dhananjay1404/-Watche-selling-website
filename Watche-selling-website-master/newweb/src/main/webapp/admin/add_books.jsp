<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Add Watches</title>
<%@include file="allcss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="caontainer">
		<div class="row ">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Add Watches</h4>
					<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg }</p>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg }</p>					
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
						<form action="../add_books" method="post"
						enctype="multipart/form-data" >
							<div class="form-group">
								<label for="exampleInputEmail1">Watches Name*</label> <input
									name="wname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Model Name*</label> <input
									name="mname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Price</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Watch Categories</label> <select
									id="inputState" name="btype" class="form-control">
									<option selected>---Select---</option>
									<option value="Rolex">Rolex</option>
									<option value="Firebolt">Firebolt</option>
									<option value="Omega">Omega</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Watch Status</label> <select
									id="inputState" name="status" class="form-control">
									<option selected>---Select---</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>