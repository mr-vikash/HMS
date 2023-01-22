<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="component/css.jsp"%>

<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<title>Index page</title>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hosp10.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hosp1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hosp2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p>
		<h2 class="text-center fs-2">key Features of our Hospital</h2>
		</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>patient can create his account and get appointment</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>patient can create his account and get appointment</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>patient can create his account and get appointment</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>patient can create his account and get appointment</p>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img src="img/doct5.jpg" />
			</div>

		</div>
	</div>


	<hr>

	<div class="container p-3">
		<p>
		<h2 class="text-center fs-2">Our Team</h2>
		</p>

		<div class="row">
			<div class="col-md-12 p-5">
				<div class="row">
					<div class="col-md-3">
						<div class="card paint-card text-center">
							<div class="card-body text-center">
								<img src="img/doc1.png" width="200px" height="300px" />
								<p class=" fw-bold fs-5">Dr. Diksha Gupta</p>
								<p class="fs-7">
									<b>(CEO & Chairman)</b>
								</p>


							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="img/doc2.png" width="200px" height="300px" />
								<p class=" fw-bold fs-5">Dr.Anurag Gupta</p>
								<p class="fs-7">
									<b>(Cheif Docor)</b>
								</p>

							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center">
								<img src="img/doc8.jpg" width="200px" height="300px" />
								<p class=" fw-bold fs-5">Dr. Anupam Mishra</p>
								<p class="fs-7">
									<b>(MBBS Specialist)</b>
								</p>


							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body">
								<img src="img/doc3.jpg" width="200px" height="300px" />
								<p class=" fw-bold fs-5">Dr.Harsh Gupta</p>
								<p class="fs-7">
									<b>(Chief Doctor)</b>
								</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<%@include file="component/footer.jsp"%>
</body>
</html>