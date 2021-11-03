<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Tiki shop" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user_interface/css/bootstrap.css" />"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user_interface/style.css"/>"
	rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user_interface/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet">
<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user_interface/ico/favicon.ico"/>">
<decorator:head />
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href="index.html"> <span class="icon-home"></span>
						Home
					</a>
					<c:if test="${ not empty LoginInfo }">
						<a href="#" />
						<span class="icon-user"></span> ${ LoginInfo.display_name }</a>
						<a href="<c:url value="/logout"/>"><span class="icon-edit"></span>
							Logout </a>
					</c:if>
					<c:if test="${ empty LoginInfo }">
						<a href="<c:url value="/register"/>"><span class="icon-edit"></span>
							Free Register </a>
					</c:if>
					<a href="contact.html"><span class="icon-envelope"></span>
						Contact us</a>
					<c:if test="${ TotalPoducts > 0}">
						<a href="<c:url value="/cart"/>"><span
							class="icon-shopping-cart"></span> ${ TotalQuantityCart } Item(s)
							- <span class="badge badge-warning">$ ${ TotalPriceCart }
						</span></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	</div>
	<!-- /container -->


	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="/assets/user_interface/img/maestro.png"
					alt="payment"></a> <a href="#"><img
					src="/assets/user_interface/img/mc.png" alt="payment"></a> <a
					href="#"><img src="/assets/user_interface/img/pp.png"
					alt="payment"></a> <a href="#"><img
					src="/assets/user_interface/img/visa.png" alt="payment"></a> <a
					href="#"><img src="/assets/user_interface/img/disc.png"
					alt="payment"></a>
			</p>
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user_interface/js/jquery.js"/>"></script>
	<script
		src="<c:url value="/assets/user_interface/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user_interface/js/jquery.easing-1.3.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user_interface/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
	<script src="<c:url value="/assets/user_interface/js/shop.js"/>"></script>
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>


