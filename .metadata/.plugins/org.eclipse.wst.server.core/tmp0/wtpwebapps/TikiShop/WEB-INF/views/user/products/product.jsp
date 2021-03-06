<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Detail Product</title>
<style>
.product-content {
	overflow-x: hidden;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categories }">
						<li><a href="<c:url value="/category/${ item.id }"/>"><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>

					<li><a class="totalInCart" href="cart.html"><strong>Ordered<span
								class="badge badge-warning pull-right"
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
				<a href="#"><img src="<c:url value="/assets/user_interface/img/paypal.jpg"/>"
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
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li><a href="products.html">Products</a> <span class="divider">/</span></li>
				<li class="active">Product details</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value="/assets/user_interface/bookImgs/${ product.image }"/>"
										alt="" style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">???</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">???</a>
						</div>
					</div>
					<div class="span7">
						<h2>${ product.name }</h2>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" method="GET" action="<c:url value="/AddCart/${ product.id_product }"/>">

							<div class="control-group">
								<label class="control-label"><span><h2>$ ${ product.price }</h2></span></label>
							</div>
							<table>
								<tr>
									<th>Author</th>
									<td>${ product.author }</td>
								</tr>
								<tr>
									<th>Imprint</th>
									<td>${ product.imprint }</td>
								</tr>
								<tr>
									<th>Published date</th>
									<td>${ product.published_date }</td>
								</tr>
								<tr>
									<th>ISBN</th>
									<td>${ product.isbn }</td>
								</tr>
								<tr>
									<th>Lengths</th>
									<td>${ product.lengths }</td>
								</tr>
								<tr>
									<th>Dimensions</th>
									<td><i>${ product.dimensions }</i></td>
								</tr>
								<tr>
									<th>Weight</th>
									<td>${ product.weight }</td>
								</tr>
								<tr>
									<th>Rating</th>
									<td>${ product.rating }</td>
								</tr>
							</table>
							<br>
							<div style="display: flex; padding: 10px; align-items: center;">
								<h5>Quantity</h5>
								<div style="width: 50px; margin-left: 20px; margin-right: 20px;">
									<input style="width: 100%;" type="number" min="0" value="1" class="span6">
								</div>
								<div>
									<button type="submit" class="shopBtn">
										<span class=" icon-shopping-cart"></span> Add to cart
									</button>
								</div>

							</div>
							<br>


						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Overview</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Related
							products</a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">${ product.detail }
					</div>
					<div class="tab-pane fade" id="profile">

						<c:set var="countList" value="${ productByCategory.size() }" />
						<c:if test="${ productByCategory.size() > 5 }">
							<c:set var="countList" value="5" />
						</c:if>

						<c:forEach var="item" items="${ productByCategory }" begin="0"
							end="${ countList }" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img
										src="<c:url value="/assets/user_interface/bookImgs/${ item.image }"/>"
										alt="">
								</div>
								<div class="span6">
									<h4>${ item.name }</h4>
									<h5>${ item.author }</h5>
									<p>${ item.description }</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>$ ${item.price }</h3>
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Add to cart</a> <a
												href="product_details.html" class="shopBtn">VIEW</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft" />
						</c:forEach>

					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- Body wrapper -->
</body>