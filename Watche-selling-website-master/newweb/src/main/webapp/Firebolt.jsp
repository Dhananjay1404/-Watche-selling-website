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
<title>All FireBolt watches</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-coloe: #fcf7f7;
}
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}






</style>
</head>
<body>
<%User u=(User)session.getAttribute("userobj"); %>

<c:if test="${not empty addCart }">
<div id="toast">${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
</c:if>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="container-fluid">
	<h3 class="text-center">FireBolt | Ignite the fire in you</h3>
		<div class="row p-3">
			<%
			WatchDAoImpl dao = new WatchDAoImpl(Dbconnect1.getConn());
			List<WatchBtls> list = dao.getallFireboltWatch();
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