<%@page import="com.entity.Watch_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.WatchOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order History</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
  
	<%@include file="allcomponents/navbar.jsp"%>
	
	
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp">
		</c:redirect>
	</c:if>
	<h2 class="text-center">Order History</h2>
	<div class="container p-1">
	<h3 class="text-center text-primary"></h3>
		<table class="table table-striped mt-5">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Watch Name</th>
      <th scope="col">Model Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Mode</th>
       
      
    </tr>
  </thead>
  <tbody>
  <%
    User u=(User)session.getAttribute("userobj");
    WatchOrderImpl dao=new WatchOrderImpl(Dbconnect1.getConn());
   List<Watch_Order> blist=dao.getwatch(u.getEmail());
    for(Watch_Order b:blist)
    {
    %>
    <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUsername()%></td>
      <td><%=b.getWatchName() %></td>
      <td><%=b.getModel() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
    </tr>
    <% 
    }
  %>
    
    
  </tbody>
</table>
	</div>
</body>
</html>