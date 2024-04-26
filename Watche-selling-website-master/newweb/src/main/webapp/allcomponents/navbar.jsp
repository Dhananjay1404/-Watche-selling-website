<%@page import="java.sql.Connection"%>
<%@page import="com.DB.Dbconnect1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<div class="container-fluid"
style="height:10px;background-color:#303f9f"></div>


<div class="container-fluid p-3 bg-light ">
<div class="row justify-content-between" >
     <div class="col-mid-3 text-success">
        <h3><i class="fa-brands fa-joomla"></i>Ryzen</h3>
    </div>
<div class="col-mid-6">
<form class="form-inline my-2 my-lg-0 " action="search.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" name="ch"placeholder="Search" aria-label="Search">
      <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
    </div>
    <c:if test="${not empty userobj }">
     <div class="col-mid-3 ">
   <a href="checkout.jsp" class="mt-1"><i class="fas fa-cart-plus fa-2x mt-1"></i></a>
        <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-user-check ml-10"></i>${userobj.name}</a>
       <a href="logout" class="btn btn-primary"><i class=""><i class="fa-solid fa-right-to-bracket ml-2"></i></i>LogOut</a>
      </div>
    </c:if>
    
    <c:if test="${ empty userobj }">
     <div class="col-mid-3 ">
        <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket ml-2"></i> Login</a>
       <a href="Register.jsp" class="btn btn-primary"><i class="fa-solid fa-user-check ml-10"></i> Register</a>
      </div>
    </c:if>
   
</div></div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="index.jsp"><i class="fas fa-home"></i>Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">New Edition<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="iwatches.jsp"><i class="#"></i>Omega</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link " href="Rolex.jsp">Rolex</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link " href="Firebolt.jsp">Firebolts</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link " href="feedback.html">FeedBack</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="setting.jsp" class="btn btn-light my-2 my-sm-0 m1-1" type="submit"><i class="fa-solid fa-gear "></i> Setting</a>
          <a href="contant.html" class="btn btn-light my-2 my-sm-0 ml-2" type="submit"><i class="fa-solid fa-phone "></i> Contact Us</a>
        <!--   <%Connection conn=Dbconnect1.getConn();
          out.println(conn);%>--->
    </form>
  </div>
</nav>