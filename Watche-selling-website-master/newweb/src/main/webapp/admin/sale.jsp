<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
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
<title>Admin:Home</title>
<%@include file="allcss.jsp"%>

<style type="text/css">
.MyImage
{
 margin-left: 18%; 
 height: 50%;
 width: 30%;
}

</style>
</head>

<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	
	
	<div class="container">
		<div class="row p-4">
			<div class="col-md-4">
				
					<div class="card">
						<div class="card-body text-center">
							<h5>Total Sale</h5>
							<h4>
							<%
							Connection con = Dbconnect1.getConn();
							String sql ="Select price from orderhistory";
							Statement ps = con.createStatement();
							ResultSet rs = ps.executeQuery(sql);
							
							double count=0;
							while(rs.next())
							{
								count +=Double.parseDouble(rs.getString("price"));
							}
							
							out.print(""+count);
							
							
							
							
							%>
							
							</h4>
							--------------------
						</div>
					</div>
					
			</div>
			<div class="col-md-4">
					<div class="card">
						<div class="card-body text-center">
							<h5>GST Amount</h5>
							<h4>
							<%
							float count1=0;
							
							double per = (count*18)/100;
							
							
							out.print(""+per);
							
							
							%></h4>
							--------------------
						</div>
					</div>
			</div>
			<div class="col-md-4">
					<div class="card">
						<div class="card-body text-center">
							<h5>Net Profit Sale</h5>
							<h4>
							<%
							ResultSet rs1 = ps.executeQuery("select price from orderhistory");
							ArrayList<Double> a1 = new ArrayList<>();
							double count2 = 0;
							while(rs1.next())
							{
								double sample = Double.parseDouble(rs1.getString("price"))*18;
								a1.add(sample/100);
								count2 += (int)sample/100;
								
							}
							out.print(" "+count2);
							
							
							%></h4>
							--------------------
						</div>
					</div>	
			</div>
			
			
			</div>
			</div>
			<div class="container">
		<div class="row p-4">
			<div class="col-md-4">
			<i class="fa-solid fa-chart-pie fa-7x"></i>
				
					<div class="card">
						<div class="card-body text-center">
					  
						</div>
					</div>
					
			</div>
			<div class="col-md-7">
			    <img class="MyImage"src="icons8-increase.png">
					
						<div class="card-body text-center">
					  
						</div>
					</div>
		
		</div>
</div>



</body>
</html>