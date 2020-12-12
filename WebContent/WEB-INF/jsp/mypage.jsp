<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<main class="mypage">
		<div class="container">
			<div class="row">
				<nav class="col">
					<ul>
						<li><a class="mypage-nav-list-item">マイページ</a></li>
						<li><a href="" class="mypage-nav-list-item">お知らせ　　　　　　　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">出品する　　　　　　　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">出品した商品 - 出品中　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">出品した商品 - 取引中　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">出品した商品 - 売却中　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">購入した商品 - 取引中　　　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
						<li><a href="" class="mypage-nav-list-item">購入した商品 - 過去の取引　　　　<i class="fas fa-angle-right" aria-hidden="true"></i></a></li>
					</ul>
					<form action="get">
				</nav>
				<div class="col"></div>
			</div>
		</div>
	</main>

	<jsp:include page="/WEB-INF/jsp/footer.jsp" />

</body>
</html>