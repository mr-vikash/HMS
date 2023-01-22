<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Doctor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="../component/css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<c:if test="${empty docObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	<div class="text-center mt-2"><h2 class="text-success">Doctor Dashboard</h2></div>
	
	<%
	Doctor d = (Doctor)session.getAttribute("docObj");
	DoctorDao dao = new DoctorDao(DBConnect.getConn());
	
	%>
	<div class="row">
		<div class="col-md-4 offset-md-2 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-md fa-3x"></i> <br>
					<p class="fs-4 text-center">
						Doctor<br><%=dao.countDoctor() %>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-user-circle fa-3x"></i> <br>
					<p class="fs-4 text-center">
						Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId()) %>
					</p>

				</div>
			</div>
		</div>
</body>
</html>