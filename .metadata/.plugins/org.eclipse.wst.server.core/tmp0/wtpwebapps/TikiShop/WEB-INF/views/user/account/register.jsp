<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Register</title>
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categories }">
						<li><a href="<c:url value="/category/${ item.id }"/>"><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>

					<li><a class="totalInCart" href="cart.html"> <c:if
								test="${ TotalPoducts > 0}">
								<strong>Ordered<span
									class="badge badge-warning pull-right"
									style="line-height: 18px;">$ ${ TotalPriceCart }</span>
								</strong>
							</c:if></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<c:forEach var="item" items="${ sideProduct }" varStatus="loop">
					<li>
						<div class="thumbnail">
							<a class="zoomTool" href="product_details.html"
								title="add to cart"><span class="icon-search"></span> QUICK
								VIEW</a> <img
								src="<c:url value="/assets/user_interface/bookImgs/${ item.image }"/>"
								alt="bootstrap ecommerce templates">
							<div class="caption-side">
								<h4>
									<a class="defaultBtn" href="product_details.html">VIEW</a> <span
										class="pull-right">$ ${item.price}</span>
								</h4>
							</div>
						</div>
					</li>
					<li style="border: 0">&nbsp;</li>
				</c:forEach>

			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">

					<div class="carousel-inner">
						<c:forEach var="item" items="${ slides }" varStatus="index">
							<c:if test="${ index.first }">
								<div class="item active">
							</c:if>
							<c:if test="${ not index.first }">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src="<c:url value="/assets/user_interface/img/slides/${ item.img }"/>"
								alt="banner">
							<div class="carousel-caption">
								<h4>${ item.caption }</h4>
								<p>
									<span>${ item.content }</span>
								</p>
							</div>
					</div>
					</c:forEach>
				</div>

				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>

		<!-- Register -->
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Login</li>
			</ul>
			<h3>Login</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>CREATE YOUR ACCOUNT</h5>
						<br />
						<form:form action="register" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail
									address</label>
								<div class="controls">
									<form:input class="span3" type="text" placeholder="Email"
										path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputDisplayName">Display
									name</label>
								<div class="controls">
									<form:input class="span3" type="text"
										placeholder="Display name" path="full_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputAddress">Address
								</label>
								<div class="controls">
									<form:input class="span3" type="text" placeholder="Address"
										path="address" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputPassword">Password
								</label>
								<div class="controls">
									<form:input class="span3" type="password"
										placeholder="Password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPasswordConfirm">Confirm
									password </label>
								<div class="controls">
									<form:input class="span3" type="password"
										placeholder="Password confirm" path="" />
								</div>
							</div>

							<div class="controls">
								<button type="submit" class="btn block">Create Your
									Account</button>
							</div>
						</form:form>
					</div>
				</div>

				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>ALREADY REGISTERED ?</h5>
						<form:form action="login" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input class="span3" type="text" placeholder="Email"
										path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input class="span3" type="password"
										placeholder="Password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Sign in</button>
									<a href="#">Forget password?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
</body>