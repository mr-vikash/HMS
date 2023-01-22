<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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
	<%@include file="component/navbar.jsp"%>
	<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
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

						<form action="userChangePassword" method="post">
							<div class="mb-3 ">
								<label>New Password</label> <input type="text" maxlength="20"
									name="newpassword" class="form-control">
							</div>

							<div class="mb-3 ">
								<label>Old Password</label> <input type="text" maxlength="20"
									name="oldpassword" class="form-control">
							</div>
							<input type="hidden" value="${userObj.id}" name="uid">
							<button class="mt btn btn-success mt-2 col-md-12 ">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>