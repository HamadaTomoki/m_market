<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.*"%>
<%
	request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String explain = request.getParameter("explain");
String price = request.getParameter("price");
String category = request.getParameter("category");
String condition = request.getParameter("condition");
String img = request.getParameter("img");
String ext = request.getParameter("ext");
String fee = request.getParameter("fee");
String location = request.getParameter("location");
String day = request.getParameter("day");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/all.css" rel="stylesheet" type="text/css" />
<link href="css/my_icon.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/my.css" type="text/css">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
</head>
<body>

	<jsp:include page="/WEB-INF/jsp/header.jsp" />

	<div class="products">
		<div class="container">
			<div class="single-page">
				<div class="single-page-row" id="detail-21">
					<div class="col-md-6 single-top-left">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/s1.jpg">
									<div class="thumb-image detail_images">
										<img src="images/<%=img%>.<%=ext%>" data-imagezoom="true"
											class="img-responsive" alt="">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 single-top-right">
						<h3 class="item_name"><%=name%></h3>
						<hr>
						<table class="item-detail">
							<tr>
								<th>カテゴリー</th>
								<td><%=category %></td>
							</tr>
							<tr>
								<th>商品の状態</th>
								<td><%=condition %></td>
							</tr>
							<tr>
								<th>配送料の負担</th>
								<td><%=fee %></td>
							</tr>
							<tr>
								<th>配送元地域</th>
								<td><%=location %></td>
							</tr>
							<tr>
								<th>発送日の目安</th>
								<td><%=day %></td>
							</tr>
						</table>
						<div class="single-price">
							<ul>
								<li>¥ <%=price%></li>
								<li>(税込み・送料込み)</li>
							</ul>
						</div>
						<p class="single-price-text"><%=explain%></p>
						<form action="/m_market/LoginCheck" method="post">
							<input type="hidden" name="file_name" value="purchase">
							<input type="hidden" name="name" value="<%=name %>">
							<input type="hidden" name="price" value="<%=price %>">
							<input type="hidden" name="img" value="<%=img %>">
							<input type="hidden" name="ext" value="<%=ext %>">
							<button type="submit" style="width: 50%;" class="w3ls-cart">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i> 購入画面に進む
							</button>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>