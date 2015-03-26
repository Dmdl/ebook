<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="count" value="0" scope="page" />
<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<h2 class="section-heading">Search Result</h2>
			<h3 class="section-subheading text-muted">${term}.</h3>
		</div>
	</div>
	<div class="row text-center">
		<div class="row">
			<c:forEach items="${serchResult.books}" var="book">

				<c:set var="count" value="${count + 1}" scope="page" />
				<div class="col-md-4 portfolio-item">
					<a href="#"> <img class="img-responsive" src="${book.image}"
						alt="">
					</a>
					<h3>
						<a href="#">${book.title}</a>
					</h3>
					<p>${fn:substring(book.description, 0, 100)}...</p>
				</div>

				<c:if test="${count%3 ==0}">
					<div class="row"></div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</div>

<nav>
	<ul class="pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span
				aria-hidden="true">&laquo;</span></a></li>
		<c:forEach begin="1" end="${count}" var="val">
			<li class="${current==val ? 'active' : ''}"><a href=''><c:out
						value="${val}" /> <span class="sr-only">(current)</span></a></li>
			<!-- class="active" -->
		</c:forEach>
	</ul>
</nav>