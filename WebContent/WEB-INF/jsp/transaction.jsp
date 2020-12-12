<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8" />
<title>Mmarket</title>
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
<link rel="stylesheet" href="css/chat.css" type="text/css">
</head>

<body>

	<jsp:include page="/WEB-INF/jsp/header.jsp" />
	<div
		style="width: 500px; height: 200px; overflow-y: auto; border: 1px solid #333;"
		id="show"></div>
	<input type="text" size="80" id="msg" name="msg" />
	<input type="button" value="送信" onclick="sendMsg();" />
	<div class="mesgs">
		<div class="msg_history">
			<div class="incoming_msg">
				<div class="incoming_msg_img">
					<img src="https://ptetutorials.com/images/user-profile.png"
						alt="sunil">
				</div>
				<div class="received_msg">
					<div class="received_withd_msg">
						<p>商品買ってくれてありがとう</p>
						<span class="time_date"> 11:01 AM | June 9</span>
					</div>
				</div>
			</div>
			<div class="outgoing_msg">
				<div class="sent_msg">
					<p>ええで</p>
					<span class="time_date"> 11:01 AM | June 9</span>
				</div>
			</div>
			<div class="incoming_msg">
				<div class="incoming_msg_img">
					<img src="https://ptetutorials.com/images/user-profile.png"
						alt="sunil">
				</div>
				<div class="received_msg">
					<div class="received_withd_msg">
						<p>配送日いつにする？</p>
						<span class="time_date"> 11:01 AM | Yesterday</span>
					</div>
				</div>
			</div>
			<div class="outgoing_msg">
				<div class="sent_msg">
					<p>明日にするわ</p>
					<span class="time_date"> 11:01 AM | Today</span>
				</div>
			</div>
			<div class="incoming_msg">
				<div class="incoming_msg_img">
					<img src="https://ptetutorials.com/images/user-profile.png"
						alt="sunil">
				</div>
				<div class="received_msg">
					<div class="received_withd_msg">
						<p>おっけ👍</p>
						<span class="time_date"> 11:01 AM | Today</span>
					</div>
				</div>
			</div>
		</div>
		<div class="type_msg">
			<div class="input_msg_write">
				<input type="text" class="write_msg" placeholder="Type a message" />
				<button class="msg_send_btn" type="button">
					<i class="far fa-paper-plane" aria-hidden="true"></i>
				</button>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/jsp/footer.jsp" />
	<script type="text/javascript" src="/m_market/js/websocket.js"></script>
</body>