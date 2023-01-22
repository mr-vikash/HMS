<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.entity.Doctor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../component/css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty docObj }">
		<c:redirect url="doctor_login.jsp"></c:redirect>
	</c:if>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<p class="fs-4 text-center text-bold">Change Password</p>

						<form action="../doctPasswordChange" method="post">
							<div class="mb-3 ">
								<label>New Password</label> <input type="text" maxlength="20"
									name="newpassword" class="form-control">
							</div>

							<div class="mb-3 ">
								<label>Old Password</label> <input type="text" maxlength="20"
									name="oldpassword" class="form-control">
							</div>
							<input type="hidden" value="${docObj.id}" name="uid">
							<button class="mt btn btn-success mt-2 col-md-12 ">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<c:if test="${not empty sucMsgd}">
							<p class="text-center text-success fs-3">${sucMsgd}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errorMsgd}">
							<p class="text-center text-danger fs-5">${errorMsgd}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<p class="text-center fs-3">Edit Profile</p>
						<form action="../editDoctorDetails" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									name="fullname" class="form-control"
									value="${docObj.fullName }" required>
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									name="dob" class="form-control" value="${docObj.dob }">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" name="qualification" class="form-control"
									value="${docObj.qualification }" required>

							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>"${docObj.specialist}"</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>

								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									name="email" class="form-control" value="${docObj.email }"
									required readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile No</label> <input type="text"
									name="mobno" class="form-control" value="${docObj.mobNo }"
									required>
							</div>
							<input type="hidden" value="${docObj.id}" name="uid">
							<button type="submit" class="btn btn-success">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>