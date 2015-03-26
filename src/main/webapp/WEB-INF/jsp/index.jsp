<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ITbooks</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value="/static/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/static/css/agency.css" />" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url value="/static/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">ITbooks.ml</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<form class="navbar-form navbar-right" role="search"
				id="mainMenuSearch" style="display: none">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search"
						id="searchNormal">
				</div>
				<button type="button" class="btn btn-warning" id="btnsearch">Search</button>
			</form>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text col-md-8 col-md-offset-2">
				<div class="intro-lead-in" style="color: white">Welcome To Our
					Library !</div>
				<div class="intro-heading">
					<div class="input-group">
						<input type="text" class="" placeholder="" style="width: 100%;"
							id="searchTerm"> <span class="input-group-btn"> <a
							href="#" class="page-scroll btn btn-xl" id="btn-search"
							style="height: 83px; padding-top: 35px;"><img
								src="<c:url value="/static/img/loader.gif" />"
								style="display: none" id="loader">SEARCH</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Services Section -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Most Viewed</h2>
					<h3 class="section-subheading text-muted">Mode Downloaded
						Ebooks.</h3>
				</div>
			</div>
			<div class="row text-center" id="searchResult">

				<!-- Projects Row -->
				<div class="row">
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
				</div>
				<!-- /.row -->

				<!-- Projects Row -->
				<div class="row">
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
				</div>

				<!-- Projects Row -->
				<div class="row">
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
					<div class="col-md-4 portfolio-item">
						<a href="#"> <img class="img-responsive"
							src="http://placehold.it/700x400" alt="">
						</a>
						<h3>
							<a href="#">Project Name</a>
						</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
					</div>
				</div>
				<!-- /.row -->

			</div>
		</div>
	</section>

	<!-- Portfolio Grid Section -->


	<!-- About Section -->


	<!-- Team Section -->


	<!-- Clients Aside -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website 2014</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="<c:url value="/static/js/jquery.js" />"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="<c:url value="/static/js/classie.js" />"></script>
	<script src="<c:url value="/static/js/cbpAnimatedHeader.js" />"></script>

	<!-- Contact Form JavaScript -->
	<script src="<c:url value="/static/js/jqBootstrapValidation.js" />"></script>
	<script src="<c:url value="/static/js/contact_me.js" />"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/static/js/agency.js" />"></script>

</body>

<script type="text/javascript">
	$('#btn-search').click(function() {
		var searchTerm = $('#searchTerm').val();
		$("#loader").css("display", "block");
		searchBooks(searchTerm);
	});

	$('#btnsearch').click(function() {
		var searchTerm = $('#searchNormal').val();
		searchBooks(searchTerm);
	});

	function searchBooks(term) {
		$.ajax({
			url : 'search.html',
			data : ({
				srchterm : term
			}),
			success : function(data) {
				$('#services').html(data);
			},
			complete : function(data) {
				$("#loader").css("display", "none");
				$('html, body').animate({
					scrollTop : $('#services').offset().top
				}, 'slow');
			}
		});
	}
</script>

</html>