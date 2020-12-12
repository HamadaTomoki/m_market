<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<title>Mmarket</title>
<meta charset="UTF-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/all.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/my.css" type="text/css">
</head>

<body>
	<jsp:include page="WEB-INF/jsp/header.jsp" />
	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile">
				<h3>会員登録</h3>
				<form action="/m_market/AcountRegister" method="post">
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i> <input type="text"
							name="acount_name" required="" placeholder="ニックネーム">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i> <input
							type="text" name="email" required="" placeholder="メールアドレス">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i> <input
							type="password" name="password" required="" placeholder="パスワード">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i> <input
							type="password" name="confirm_password" required=""
							placeholder="確認パスワード">
						<div class="clearfix"></div>
					</div>

					<!-- 本人確認 -->
					<p>
						<strong>本人確認</strong>
					</p>
					<p class="mt-4">
						安心・安全にご利用いただくために、<br>お客さまの本人情報の登録にご協力ください。<br>他のお客さまに公開されることはありません。
					</p>
					<!-- お名前 -->
					<p class="mt-4">お名前(全角)</p>
					<div class="fl mt-2">
						<div class="key">
							<input type="text" name="firstname" required="" placeholder="例）谷">
						</div>
						<div class="key">
							<input type="text" name="lastname" required=""
								placeholder="例）まさる">
							<div class="clearfix"></div>
						</div>
					</div>
					<p>お名前カナ(全角)</p>
					<div class="fl mt-2">
						<div class="key">
							<input type="text" name="furigana_fn" required=""
								placeholder="例）タニ">
						</div>
						<div class="key">
							<input type="text" name="furigana_ln" required=""
								placeholder="例）マサル">
							<div class="clearfix"></div>
						</div>
					</div>

					<p class="mb-2">生年月日</p>
					<div class="form-select-box mb-4">
						<div class="form-select">
							<select class="user-birthday-year dropdown-toggle"
								name="birth_year">
								<!-- 1900-2020まで -->
							</select> <span>年</span>
						</div>
						<div class="form-select">
							<select class="user-birthday-month dropdown-toggle"
								name="birth_month">
								<!-- 1-12まで -->
							</select> <span>月</span>
						</div>
						<div class="form-select">
							<select class="user-birthday-day dropdown-toggle"
								name="birth_day">
								<!-- 1-31まで -->
							</select> <span>日</span>
						</div>
					</div>
					<p class="mb-5">
						※ 本人情報は正しく入力してください。<br>会員登録後、修正するにはお時間を頂く場合があります。
					</p>
					<input type="submit" value="登録">
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="WEB-INF/jsp/footer.jsp" />
	<script type="text/javascript" src="/m_market/js/calendar.js"></script>
</body>

</html>