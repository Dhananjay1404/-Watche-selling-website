<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.Dbconnect1"%>
<div class="container-fluid"
	style="height: 10px; background-color: #303f9f"></div>


<div class="container-fluid p-3 bg-light">
	<div class="row justify-content-between">
		<div class="col-mid-3 text-success">
			<h3>
				<i class="fa-brands fa-joomla"></i>Ryzen
			</h3>
		</div>
		<div class="col-mid-6">
			<form class="form-inline my-2 my-lg-0">
				
				
			</form>
		</div>
		<div class="col-mid-3">
			<c:if test="${not empty userobj }">
				<a  class="btn btn-success text-white"><i
					class="fa-solid fa-right-to-bracket ml-2"></i>${userobj.name}</a>
				<a  data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white"><i
					class="fas fa-sign-in-alt ml-10"></i>Logout</a>
			</c:if>
			<c:if test="${empty userobj}">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket ml-2"></i> Login</a>
				<a href="../Register.jsp" class="btn btn-primary"><i
					class="fas fa user-plus ml-10"></i> Register</a>
			</c:if>

		</div>
	</div>
</div>

<!-- logout Start -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
             <div class="text-center">
       <h4>Do you want to logout</h4>

       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout"  type="button" class="btn btn-primary">Logout</a>
        </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!--end logout-->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home<span
					class="sr-only">(current)</span></a></li></ul>

			
	</div>
</nav>