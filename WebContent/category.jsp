<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Mmarket</title>
<meta charset="UTF-8" />
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
	<div class="sub-banner my-banner3"></div>
	<div class="content">
		<div class="container">
			<div class="col-md-4 w3ls_dresses_grid_left">
				<div class="w3ls_dresses_grid_left_grid">
					<h3>カテゴリー</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_dres-type">
							<ul>
								<c:forEach var="kind" items="${kindsList}">
									<li><a
										href="/m_market/CategorySearch?category=<c:out value="${kind.getCategory()}" />">
											<c:out value="${kind.getCategory()}" />
									</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="w3ls_dresses_grid_left_grid">
					<h3>表示順</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_color ecommerce_size">
							<ul>
								<li><i class="far fa-thumbs-up"></i><a href="#"> いいね！</a></li>
								<li><i class="fas fa-sort-amount-up-alt"></i><a href="#">
										価格が高い</a></li>
								<li><i class="fas fa-sort-amount-down-alt"></i><a href="#">
										価格が低い</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8 col-sm-8 women-dresses">
				<c:forEach var="items" items="${prdList}" varStatus="row">
					<div class="mt-5 women-set<c:out value="row.count" />">
						<c:forEach var="item" items="${items}" varStatus="col">
							<div
								class="col-md-4 women-grids wp<c:out value="col.count" /> animated wow slideInUp"
								data-wow-delay=".5s">
								<div class="product-img">
										<img src="images/<c:out value="${item.getImg()}" />.<c:out value="${item.getExt() }" />" alt="" />
										<div class="p-mask">
											<form action="./detail.jsp" method="post">
											    <input type="hidden" name="name" value="<c:out value="${item.getName()}" />">
											    <input type="hidden" name="explain" value="<c:out value="${item.getExplain()}" />">
											    <input type="hidden" name="price" value="<c:out value="${item.getPrice()}" />">
											    <input type="hidden" name="category" value="<c:out value="${item.getCategory()}" />">
											    <input type="hidden" name="condition" value="<c:out value="${item.getCondition()}" />">
											    <input type="hidden" name="img" value="<c:out value="${item.getImg()}" />">
											    <input type="hidden" name="ext" value="<c:out value="${item.getExt()}" />">
											    <input type="hidden" name="fee" value="<c:out value="${item.getFee()}" />">
											    <input type="hidden" name="location" value="<c:out value="${item.getLocation()}" />">
											    <input type="hidden" name="day" value="<c:out value="${item.getDay()}" />">
												<button type="submit" class="w3ls-cart pw3ls-cart">
													<i class="fa fa-shopping-bag" aria-hidden="true"></i>購入
												</button>
											</form>
										</div>
									</div>
								<h4><c:out value="${item.getName()}" /></h4>
								<h5><c:out value="${item.getPrice()}" />円</h5>
							</div>
						</c:forEach>
						<div class="clearfix"></div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>
