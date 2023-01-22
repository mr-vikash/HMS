<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
		url("img/hosp9.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-5 backImg">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/doctor2.png">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-bold">User Appointment</p>
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-2">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="addAppointment" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input type="text"
								maxlength="20"	name="fullname" class="form-control" required>
							</div>

							<div class="col-md-6">
								<label  for="inputEmail4"  class="form-label">Gender</label> <select
									class="form-control" name="gender" required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>

							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Age</label> <input type="text"
								maxlength="20"	name="age" class="form-control" required>

							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Appointment Date</label> <input
								maxlength="20"	type="date" name="appointment_date" class="form-control"
									required>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Email</label> <input type="text"
								maxlength="20"	name="email" class="form-control" required>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Phone No</label> <input type="text"
								maxlength="20"	name="phono" class="form-control" required>
							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Deseases</label> <input type="text"
								maxlength="20"	name="deseases" class="form-control" required>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Doctor</label> <select
									class="form-control" name="doct" required>
									<option value="">--select--</option>
									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for(Doctor d:list)
									{
									%>
									    <option value="<%=d.getId()%>"><%= d.getFullName() %>(<%= d.getSpecialist() %>)</option>
									
									<%	
									}
									%>
									
								</select>
							</div>
							<div class="col-md-12">
								<label for="inputEmail4"  class="form-label">Full Address</label>
								<textarea name="address" class="form-control" row="3" col=""
									required></textarea>
							</div>
							<c:if test="${empty userObj}">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>

							</c:if>
							<c:if test="${not empty userObj}">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>

							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>