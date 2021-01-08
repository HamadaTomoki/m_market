<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="rectagle-shadow2" style="width: 50%;">
		<div class="purchase" style="padding: 5%;">
			<h3 style="font-size: 25px; font-weight: bold;">購入内容の確認</h3>
			<hr>
			<div class="p-flex">
				<p><img src="images/<c:out value="${prd.getImg()}" />.<c:out value="${prd.getExt()}" />" /></p>
				<p><c:out value="${prd.getName()}" /></p>
			</div>
			<hr>
			<div class="p-flex price">
				<p>　お支払い金額</p>
				<p>¥ <c:out value="${prd.getPrice()}" /></p>
			</div>
			<hr class="mb-0">
			<div class="payment-options">
				<div class="p-flex">
					<p style="font-weight: bold;">お支払い方法</p>
					<a href="">変更する >　</a>
				</div>
				<div class="mt-3 po-bottom">
					<p>クレジットカード</p>
					<p>************9716</p>
					<p>有効期限 12 / 24</p>
					<p class="mt-3"><img src="./images/visa.svg" style="width: 10%;" /></p>
				</div>
			</div>
			<hr class="mt-0 mb-0">
			<div class="payment-options">
				<div class="p-flex">
					<p style="font-weight: bold;">配送先</p>
					<a href="">変更する >　</a>
				</div>
				<div class="mt-3 po-bottom">
					<p>〒 530-0001</p>
					<p>大阪府 梅田 北区 3-3-2</p>
					<p>谷 まさる</p>
				</div>
			</div>
			<hr class="mt-0">
			<form action="purchase_successful.jsp" style="text-align: center;">
				<button type="submit" style="width: 60%;" class="btn btn-danger mt-5 fb-tag btn-conf">購入する</button>
			</form>
		</div>
	</div>
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>