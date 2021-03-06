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
	<div class="rectagle-shadow2">
		<form action="/m_market/ItemSell" enctype="multipart/form-data"
			method="POST" id="formElem" name="drag_and_drop">
			<p class="fb-tag">出品画像</p>
			<p class="mt-3 mb-3">１枚のみアップロードできます</p>
			<div id="ddarea" class="drop_area mb-5" onclick="mouseClick()">
				<input type="file" style="display: none;" id="fileInput"
					name="fileInput"> <i id="myicon"
					class="mt-5 mb-3 fas fa-camera fa-2x" style="color: black"></i>
				<p id="mytext" class="mb-5" style="font-size: 13px">クリックしてファイルをアップロード!</p>
			</div>

			<hr>

			<div class="mt-5 mb-5">
				<p class="fb-tag">商品名</p>
				<p class="mt-3">
					<input type="text" class="text-widthmax" name="prd_name"
						placeholder="40文字まで" maxlength="40">
				</p>
				<p class="fb-tag mt-5">商品の説明</p>
				<p class="mt-3">
					<textarea name="prd_explain" maxlength="1000"
						placeholder="商品の説明（必須 1,000文字以内）
（色、素材、重さ、定価、注意点など）

例）2001年頃に10万円で購入したWindowsXPです。
	観賞用だったので傷はありません。インテリアとしておすすめです。"></textarea>
				</p>
			</div>

			<hr>

			<div class="mt-5 mb-5">
				<p>商品の詳細</p>
				<div>
					<p class="fb-tag mt-5 mb-3">カテゴリー</p>
					<select name="prd_category" class="custom-select select-widthmax">
						<option selected>選択してください</option>
						<option value="家電">家電</option>
						<option value="パソコン">パソコン</option>
					</select>
					<p class="fb-tag mt-5 mb-3">商品の状態</p>
					<select name="prd_condition" class="custom-select select-widthmax">
						<option selected>選択してください</option>
						<option value="新品・未使用">新品・未使用</option>
						<option value="未使用に近い">未使用に近い</option>
						<option value="目立った傷や汚れなし">目立った傷や汚れなし</option>
						<option value="やや傷や汚れあり">やや傷や汚れあり</option>
						<option value="傷や汚れあり">傷や汚れあり</option>
						<option value="全体的に状態が悪い">全体的に状態が悪い</option>
					</select>
				</div>
			</div>

			<hr>

			<div class="mt-5 mb-5">
				<p>配送について</p>
				<div>
					<p class="fb-tag mt-5 mb-3">発送料の負担</p>
					<select name="spg_fee" class="custom-select select-widthmax">
						<option selected>選択してください</option>
						<option value="送料込み（出品者負担）">送料込み（出品者負担）</option>
						<option value="着払い（購入者負担）">着払い（購入者負担）</option>
					</select>
					<p class="fb-tag mt-5 mb-3">発送元の地域</p>
					<select name="spg_location" class="custom-select select-widthmax">
						<option selected>選択してください</option>
						<option value="1">北海道</option>
						<option value="2">青森県</option>
						<option value="3">岩手県</option>
						<option value="4">宮城県</option>
						<option value="5">秋田県</option>
						<option value="6">山形県</option>
						<option value="7">福島県</option>
						<option value="8">茨城県</option>
						<option value="9">栃木県</option>
						<option value="10">群馬県</option>
						<option value="11">埼玉県</option>
						<option value="12">千葉県</option>
						<option value="13">東京都</option>
						<option value="14">神奈川県</option>
						<option value="15">新潟県</option>
						<option value="16">富山県</option>
						<option value="17">石川県</option>
						<option value="18">福井県</option>
						<option value="19">山梨県</option>
						<option value="20">長野県</option>
						<option value="21">岐阜県</option>
						<option value="22">静岡県</option>
						<option value="23">愛知県</option>
						<option value="24">三重県</option>
						<option value="25">滋賀県</option>
						<option value="26">京都府</option>
						<option value="27">大阪府</option>
						<option value="28">兵庫県</option>
						<option value="29">奈良県</option>
						<option value="30">和歌山県</option>
						<option value="31">鳥取県</option>
						<option value="32">島根県</option>
						<option value="33">岡山県</option>
						<option value="34">広島県</option>
						<option value="35">山口県</option>
						<option value="36">徳島県</option>
						<option value="37">香川県</option>
						<option value="38">愛媛県</option>
						<option value="39">高知県</option>
						<option value="40">福岡県</option>
						<option value="41">佐賀県</option>
						<option value="42">長崎県</option>
						<option value="43">熊本県</option>
						<option value="44">大分県</option>
						<option value="45">宮崎県</option>
						<option value="46">鹿児島県</option>
						<option value="47">沖縄県</option>
					</select>
					<p class="fb-tag mt-5 mb-3">発送までの日数</p>
					<select name="spg_day" class="custom-select select-widthmax">
						<option selected>選択してください</option>
						<option value="1 ~ 2日で発送">1 ~ 2日で発送</option>
						<option value="2 ~ 3日で発送">2 ~ 3日で発送</option>
						<option value="4 ~ 7日で発送">4 ~ 7日で発送</option>
					</select>
				</div>
			</div>

			<hr>

			<div class="mt-5 mb-5">
				<p>価格(¥300 ~ 9,999,999)</p>
				<div class="price-flex mt-4">
					<p class="fb-tag">販売価格</p>
					<p class="mt-3 ">
						¥ <input type="text" name="prd_price" placeholder="0"
							maxlength="7">
					</p>
				</div>
			</div>
			<div class="popup" id="js-popup">
				<div class="popup-inner">
					<div class="close-btn" id="js-close-btn">
						<i class="fas fa-times"></i>
					</div>
					<img src="images/mdl_sell.jpg">
					<p>出品する前に今１度, 出品内容をご確認ください!</p>
					<button type="submit" class="btn btn-danger mt-5 fb-tag btn-conf">出品内容を確定する</button>
				</div>
				<div class="black-background" id="js-black-bg"></div>
			</div>

		</form>
		<div class="btn-center">
			<button type="submit" id="js-show-popup"
				class="btn btn-danger mt-5 fb-tag btn-conf">出品する</button>
		</div>
	</div>
	<div class="clear-box"></div>



	<jsp:include page="/WEB-INF/jsp/footer.jsp" />

	<script type="text/javascript" src="/m_market/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="/m_market/js/drag_and_drop.js"></script>
	<script type="text/javascript">
		function mouseClick() {
			document.getElementById('fileInput').click();
		}

		var elem = document.getElementById('fileInput');
		elem.onchange = function() {
			let myicon = document.getElementById('myicon');
			let mytext = document.getElementById('mytext');
			if(elem.value){
				myicon.className = '';
				mytext.className = '';
				myicon.innerHTML = '<i id="myicon" class="mt-5 mb-3 fas fa-check fa-2x" style="color: black"></i>';
				mytext.innerHTML = '<p id="mytext" class="mb-5" style="font-size: 13px">ファイルが選択されました.</p>';
			}else{
				myicon.innerHTML = '<i id="myicon" class="mt-5 mb-3 fas fa-camera fa-2x" style="color: black"></i>';
				mytext.innerHTML = '<p id="mytext" class="mb-5" style="font-size: 13px">クリックしてファイルをアップロード!</p>';
			}
		}
	</script>
</body>
</html>