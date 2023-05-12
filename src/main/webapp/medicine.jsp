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
						<p class="fs-3 text-center text-bold">Medicine</p>
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-2">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="medicine" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Medicine_Name</label> <input type="text"
								maxlength="20"	name="name" class="form-control" required>
							</div>
							

							<div class="col-md-6">
								<label  for="inputEmail4"  class="form-label">Manufacturer</label> <select
									class="form-control" name="manufacturer" required>
									<option value="Mankind">Mankind</option>
									<option value="Cipla">Cipla</option>
									<option value="Lupin Ltd">Lupin Ltd</option>
									<option value="Biocon Ltd">Biocon Ltd</option>
								</select>

							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Dosage</label> <input type="text"
								maxlength="20"	name="dosage" class="form-control" required>

							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Price</label> <input
								maxlength="20" name="price" class="form-control"
									required>
							</div>
							
							
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Patient_Name</label> <input type="text"
								maxlength="20"	name="patient_name" class="form-control" required>
							</div>
							<c:if test="${empty userObj}">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>

							</c:if>
							<c:if test="${not empty userObj}">
								<button  type='submit' class="col-md-6 offset-md-3 btn btn-success">Submit</button>

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