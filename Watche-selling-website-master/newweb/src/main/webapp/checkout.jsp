<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.CartDAOimpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

	<%@include file="allcomponents/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your selected Item</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Watch Name</th>
									<th scope="col">Model</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
						<!--<th scope="col">Quantity</th>
									<th scope="col">Action</th>-->
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOimpl dao = new CartDAOimpl(Dbconnect1.getConn());
								List<Cart> cart = dao.getWatchByUser(u.getId());
								// Cart =new Cart();
							    
							 double totalPrice = 0;

								for (Cart c : cart)
			
								{
									   
									totalPrice=c.getTotalPrice();
								%>
								<tr>
									<th scope="row"><%=c.getWatcname()%></th>
									<td><%=c.getModel()%></td>
									<td><%=c.getPrice()%></td>
									<td><a href="remove_watch?wid=<%=c.getWid()%>&&uid=<%=c.getUserId() %>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>

								<%
								}
								%>
								<tr>
									<td>Total Price</td>
									<td></td>
									<td>
										<%=totalPrice%>
									</td>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>

				</div>
			</div>
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<form action="order" method="post">
						<input type="hidden" value="${userobj.id}" name="id">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text" name="username"
										class="form-control" id="inputEmail4" value="${userobj.name}">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email" name="email"
										class="form-control" id="inputPassword4" value="${userobj.email }">
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone No</label> <input type="number" name="phno"
										class="form-control" id="inputEmail4" value="${userobj.phoneno }">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4"></label>Address<input type="text" name="address"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">landmark</label> <input type="text" name="landmark"
										class="form-control" id="inputEmail4" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text" name="city"
										class="form-control" id="inputPassword4"  required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text" name="state"
										class="form-control" id="inputEmail4"  required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Pincode</label> <input type="text" name="pincode"
									class="form-control" id="inputPassword4"  required>
								</div>
							</div>
							<div class="form-group ">
								<label>Payment Mode</label> <select class="form-control" name="paymentype">
									<option value="noselect">--Select--</option>
									<option value="COD">--Cash On Delivery--</option>
								</select>
							</div>
							<div class="text-center">
							  <button class="btn btn-warning">Order Now</button>
								<button class="btn btn-success">Continue shopping</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>