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
						<p class="fs-3 text-center text-bold">Blood Bank </p>
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-2">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="bloodbank" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Donor Name</label> <input type="text"
								maxlength="20"	name="name" class="form-control" required>
							</div>

							<div class="col-md-6">
								<label  for="inputEmail4"  class="form-label">Donor Age</label>
								<input type="text"
								maxlength="20"	name="age" class="form-control" required> 

							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Donor Gender> <input type="text"
								maxlength="20"	name="gender" class="form-control" required>

							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Donor Weight</label> <input
								maxlength="20"	 name="weight" class="form-control"
									required>
							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">Donation Date</label> <input type="text"
								maxlength="20"	type="date" name="donation_date" class="form-control" required>

							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Expiry Date</label> <input
								maxlength="20"	type="date"  name="exp_date" class="form-control"
									required>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Blood Bag_Id</label> <input type="text"
								maxlength="20"	name="b_b_id" class="form-control" required>
							</div>
							<div class="col-md-6">
								<label for="inputEmail4"  class="form-label">Storage Location</label> <input type="text"
								maxlength="20"	name="location" class="form-control" required>
							</div>
							<div class="col-md-6">
								<label  for="inputEmail4" class="form-label">blood Group</label> <input type="text"
								maxlength="20"	name="b_group" class="form-control" required>
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