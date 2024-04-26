<%@page import="com.entity.User"%>
<%@page import="com.entity.WatchBtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.WatchDAoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Rolex watches</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-coloe: #fcf7f7;
}


</style>
</head>
<body>
    <%User u=(User)session.getAttribute("userobj"); %>

	<%@include file="allcomponents/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			<%
			String ch=request.getParameter("ch");
			WatchDAoImpl dao = new WatchDAoImpl(Dbconnect1.getConn());
			List<WatchBtls> list = dao.getWatchBySearch(ch);
			for (WatchBtls b : list) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="watchimg/<%=b.getPhotoName()%>"
							style="width: 100px; height: 100px" class="img-thumblin">
						<p><%=b.getWatchName()%></p>
						<p><%=b.getModel()%>
						</p>
						<p>
							Categories:<%=b.getWatchCategory()%></p>
						<div class="row ">
                              <%if(u==null)
							{%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							
							<%}else{
							%>
								<a href="Cart?wid=<%=b.getWatchId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							 <%
							 }%>
							<a href="view_watch.jsp" class="btn btn-success btn-sm ml-1">View
								details</a> <a href="" class="btn btn-danger btn-sm "><%=b.getPrice()%></a>
								
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>


	</div>

</body>
</html>