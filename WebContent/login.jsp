<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
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
	<div class="login">

		<div class="main-agileits">
			<div class="form-w3agile">
				<h3>ログイン</h3>
				<form action="/m_market/AcountLogin" method="post">
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i> <input
							type="text" name="email" required="" placeholder="Email">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i> <input
							type="password" name="password" required=""
							placeholder="Password">
						<div class="clearfix"></div>
					</div>
					<input type="submit" value="ログイン">
				</form>
			</div>
			<div class="forg">
				<a href="#" class="forg-left">パスワードをお忘れの方</a> <a href="login.jsp"
					class="forg-right">アカウントをお持ちでない方</a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/footer.jsp" />

</body>
</html>