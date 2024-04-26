<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a.hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="allcomponents/navbar.jsp"%>
	
	
	<div class="conatiner">
		<h3 class="text-center">Hello,Raj</h3>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="Edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-success">
								<i class="fas fa-edit fa-2x"></i>
							</div>
							<h3>Login & security(edit Profile)</h3>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-6 ">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fas fa-map-marker-alt fa-2x"></i>
							</div>
							<h4>Your Address</h4>
							<p>Edit Address</p>
						</div>
					</div>
				</a>
			</div>
			
			    
			<div class="col-md-4">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fas fa-box-open fa-3x"></i>
							</div>
							<h3>My Order</h3>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			
			 
			<div class="col-md-4">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>
							<h3>Help Center</h3>
							<p>24*7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
		
	</div>
</body>
</html>