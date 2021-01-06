<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="header-top-w3layouts">
	<div class="container">
		<div class="col-md-6 logo-w3">
			<a href="/m_market/index.jsp"><img src="images/logo2.png"
				alt="">
				<h1>Mmarket</h1> </a>
		</div>
		<div class="col-md-6 phone-w3l">
			<ul>
				<li><span class="fas fa-phone-alt" aria-hidden="true"></span></li>
				<li>+000 0000 0000</li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="header-bottom-w3ls">
	<div class="container">
		<div class="col-md-7 navigation-agileits">
			<nav class="navbar navbar-default">
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li class=" active"><a href="/m_market/index.jsp" class="hyper "><span>ホーム</span></a></li>
						<li><a href="/m_market/CategorySearch"
							class="hyper"><span>カテゴリーから探す</span></a></li>
						<li><a href="/m_market/LoginCheck?file_name=sell"
							class="hyper"><span>出品する</span></a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="col-md-4 search-agileinfo">
			<form action="/m_market/ItemSearch" method="post">
				<input type="search" name="search" placeholder="なにかお探しですか？">
				<button type="submit" class="btn btn-default search"
					aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
			</form>
		</div>
		<div class="col-md-1 cart-wthree">
			<div class="cart">
				<form action="/m_market/LoginCheck" method="get" class="last">
					<button class="w3view-cart" type="submit" name="file_name" value="sell">
						<i class="fa fa-handshake" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
