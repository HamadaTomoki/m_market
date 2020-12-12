/**
 * websocket.js
 */

// ソケットの作成とIPアドレスとポート番号の紐付け(create & bind)
var ws = new WebSocket("ws://localhost:53964");

ws.onopen = function() {
	document.getElementId('show').innerHTML += "";
};

ws.onmessage = function(e) {//メッセージを受け取ったときのアクション
	document.getElementById('show').innerHTML += e.data + "<br/>";
};

var sendMsg = function(val) {//メッセージを送信するときのアクション
	var line = document.getElementById('msg');//入力内容を取得
	ws.send(line.value);//ソケットに送信
	line.value = "";//内容をクリア
};
