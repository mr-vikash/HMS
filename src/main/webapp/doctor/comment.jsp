<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Appointment"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
		url("img/hosp10.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<%@include file="../component/css.jsp"%>
</head>
<body>
	<c:if test="${empty docObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	
	<div class="container-fluid p-5 backImg">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center text-bold">Patient Comment</p>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
						 Appointment ap = dao.getAllAppointmentById(id);
						%>
						
						<form class="row " action="../updateStatus" method="post">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Patient Name</label> <input type="text"
								maxlength="20"	readonly value="<%=ap.getFullName() %>" class="form-control" >
							</div>

							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Age</label> <input type="text"
								maxlength="20"	name="age" class="form-control" readonly value="<%=ap.getAge()%>">

							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Mob No</label> <input type="text"
								maxlength="20"  class="form-control" readonly  value="<%=ap.getPhono()%>">
							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Deseases</label> <input type="text"
								maxlength="20"	 class="form-control" readonly value="<%=ap.getDeseases()%>">
							</div>
							
							<div class="col-md-12">
								<label >Comment</label> <textarea row="3" col=""
									name="comm" class="form-control" ></textarea>
							</div>
							<input type="hidden" name="id" value="<%= ap.getId()%>">
							
							
							<input type="hidden" name="did" value="<%=ap.getDoctorId()%>">
							<button class="mt btn btn-success mt-2 col-md-6 offset-md-3">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	


</body>
</html>