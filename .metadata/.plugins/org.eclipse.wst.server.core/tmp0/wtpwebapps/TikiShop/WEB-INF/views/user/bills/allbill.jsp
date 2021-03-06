<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<title>Bills</title>
</head>
<body>
	<div class="row">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Bills</li>
			</ul>
			<div class="well well-small">
				<h1>
					Bill <small class="pull-right"> 4 bill(s) </small>
				</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>User</th>
							<th>Phone</th>
							<th>Full name</th>
							<th>Address</th>
							<th>Total</th>
							<th>Quantity</th>
							<th>Note</th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td>vietngaqhh@gmail.com</td>
								<td>+7921922314</td>
								<td>Jeremie Nguyen</td>
								<td>31, Ba Trieu Street, Hue City</td>
								<td>$18.98</td>
								<td>2</td>
								<td>Delivery on Sunday</td>
							</tr>
							
							<tr>
								<td>shin22@gmail.com</td>
								<td>+7932415661</td>
								<td>John Smith</td>
								<td>29, Hai Ba Trung Street, Hue City</td>
								<td>$20.22</td>
								<td>3</td>
								<td>I want to receive it next Monday</td>
							</tr>
							
							<tr>
								<td>virtax1999@gmail.com</td>
								<td>+7931212512</td>
								<td>Thanh Binh</td>
								<td>41, Le Loi Street, Hue City</td>
								<td>$10.20</td>
								<td>1</td>
								<td>Any day</td>
							</tr>
							
							<tr>
								<td>nhattran09@gmail.com</td>
								<td>+79219426101</td>
								<td>Nhat Tran</td>
								<td>09, Nguyen Dinh Chieu Street, Hue City</td>
								<td>$99.99</td>
								<td>5</td>
								<td>Any day</td>
							</tr>

					</tbody>
				</table>

			</div>
		</div>
	</div>

	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quantity = $("#quantity-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quantity;
		})
	</script> </content>

</body>