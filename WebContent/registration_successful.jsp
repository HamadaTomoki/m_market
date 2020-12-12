<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ja">

<head>
<title>Mmarket</title>
<meta charset="UTF-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/all.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/my.css" type="text/css">
</head>
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<body>

	<jsp:include page="/WEB-INF/jsp/header.jsp" />
	<!-- ログイン完了メッセージ -->
	<div class="rectagle-shadow">
		<p class="register-success mt-5 mb-5 text-center">
			<span><i class="fas fa-check"></i></span> 会員情報の登録が完了致しました.
		</p>
		<p class="ref-login">
			恐れ入りますが確認のため、今一度 <a href="/m_market/login.jsp">
				ログイン</a>し直してください
		</p>
	</div>
	<div class="clear-box"></div>
	<jsp:include page="/WEB-INF/jsp/footer.jsp" />

</body>