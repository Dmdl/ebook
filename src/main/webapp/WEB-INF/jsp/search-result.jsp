<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div>
	<input type="text" hidden="true" value="${term}" id="serch-term">
</div>
<c:set var="linecount" value="0" scope="page" />
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

				<c:set var="linecount" value="${linecount + 1}" scope="page" />
				<div class="col-md-4 portfolio-item">
					<a href="#"> <img class="img-responsive" src="${book.image}"
						alt="">
					</a>
					<h3>
						<a href="#">${book.title}</a>
					</h3>
					<p>${fn:substring(book.description, 0, 100)}...</p>
				</div>

				<c:if test="${linecount%3 ==0}">
					<div class="row"></div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</div>
<nav class="text-center">
	<ul class="pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span
				aria-hidden="true">&laquo;</span></a></li>
		<c:forEach begin="1" end="${count}" var="val">
			<li class="${current==val ? 'active' : ''}"><a
				href="javascript:void(0)" class="link_this" pageId="${val}"> <c:out
						value="${val}" /> <span class="sr-only">(current)</span>
			</a></li>
		</c:forEach>
	</ul>
</nav>

<script type="text/javascript">
	$('.link_this').click(function() {
		var pageID = $(this).attr('pageId');
		var searchTerm = $('#serch-term').val();
		alert(pageID + ' ' + searchTerm);
		$('html, body').animate({
			scrollTop : $('#services').offset().top
		}, 'slow');
		searchBooksWithPaging(searchTerm, pageID);
	});

	function searchBooksWithPaging(term, page) {
		$.ajax({
			url : 'searchPage.html',
			data : ({
				srchterm : term,
				pageNum : page
			}),
			success : function(data) {
				$('#services').html(data);
			},
			complete : function(data) {
				
			}
		});
	}
</script>