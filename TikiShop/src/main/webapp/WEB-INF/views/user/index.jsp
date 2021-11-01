<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<title>Home</title>
<body>

	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categories }">
						<li><a href="<c:url value="/category/${ item.id }"/>"><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>
					
					<li><a class="totalInCart" href="cart.html"><strong>Ordered<span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
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
								title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> <img
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
		<!--
New Products
-->
		<div class="well well-small">
			<h3>New book</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
					<c:if test="${ news.size() > 0 }">
						<div class="item active">
							<ul class="thumbnails">
							<c:forEach var="item" items="${ news }" varStatus="loop">
								<li class="span3">
									<div class="thumbnail">
										<a class="zoomTool" href="product_details.html"
											title="add to cart"><span class="icon-search"></span>
											QUICK VIEW</a> <a href="product_details.html"><img
											src="<c:url value="/assets/user_interface/bookImgs/${ item.image }"/>" alt=""></a>
									</div>
								</li>
								<c:if test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == news.size() }">
										</ul>
									</div>
									<c:if test="${ (loop.index + 1) < news.size() }">
										<div class="item">
											<ul class="thumbnails">
									</c:if>
								</c:if>
							</c:forEach>
					</c:if>
						
					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			
		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">View More<span class="icon-plus"></span></a>
				Highlights Books
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
			
				<c:if test="${ products.size() > 0 }">
					<ul class="thumbnails">
					
					<c:forEach var="item" items="${ products }" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool" href="#"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a href="product-detail/${ item.id_product }"><img
									src="<c:url value="/assets/user_interface/bookImgs/${ item.image }"/>"
									alt=""></a>
								<div class="caption">
									<h5>${ item.name }</h5>
									<h4>
										<a class="defaultBtn" href="product_details.html"
											title="Click to view"><span class="icon-zoom-in"></span></a> <a
											class="shopBtn" href="#" title="add to cart"><span
											class="icon-plus"></span></a> <span class="pull-right">$ ${ item.price }</span>
									</h4>
								</div>
							</div>
						</li>
						
						<c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
							</ul>
							<c:if test="${ (loop.index + 1) < products.size() }">
								<ul class="thumbnails">
							</c:if>
						</c:if>
						
					</c:forEach>
					
				</c:if>
				
			</div>
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">Xem thêm <span
				class="icon-plus"></span></a> All products
		</div>
	</div>
	</div>

</body>