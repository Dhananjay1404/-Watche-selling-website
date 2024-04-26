<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="allcss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a.hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	
	<div class="container">
		<div class="row p-4">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Watches</h4>
							--------------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_watches.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-dumpster fa-3x text-danger "></i><br>
							<h4>All Watches</h4>
							--------------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center  ">
							<i class="fas fa-box-open fa-3x text-warning"></i><br>
							<h4>Order</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center  ">
							<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
							<h4>LogOut</h4>
							-------------

						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mt-5">
				<a href="sale.jsp">
					<div class="card">
						<div class="card-body text-center  ">
							<i class="fa-solid fa-chart-simple fa-3x text-success"></i><br>
							<h4>Sale Analytics</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mt-5">
				<a href="#">
					<div class="card">
						<div class="card-body text-center  ">
							<i class="fa-solid fa-users fa-3x text-primary"></i><br>
							<h4>Total Users
							<%
							    Connection con=Dbconnect1.getConn();
							String sql="select count(*) from user1";
							   Statement stmt=con.createStatement();
							   ResultSet rs=stmt.executeQuery(sql);
							   int count=0;
							   while(rs.next())
							   {
								   count+=Integer.parseInt(rs.getString((1)));
							   }
							out.print("  :"+count);
							%></h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mt-5">
				<a href="#">
					<div class="card">
						<div class="card-body text-center  ">
							<i class="fa-solid fa-box-archive fa-3x text-warning"></i><br>
							<h4>Total Products Sale
						<%
						Connection conn=Dbconnect1.getConn();
						String sq="select count(*) from watches";
						   Statement smt=con.createStatement();
						  ResultSet rs1=stmt.executeQuery(sq);
						 int countt=0;
						  while(rs1.next())
						 {
							  countt+=Integer.parseInt(rs1.getString((1)));
						  }
						out.print("  :"+countt);
						
						
						
						
						
						
						%></h4>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do you want to logout</h4>

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button" class="btn btn-primary">Logout</a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
			
		</div>
	</div>


</body>
</html>