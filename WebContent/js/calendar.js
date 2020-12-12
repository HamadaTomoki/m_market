
/** var, let, constの違いについて **/
// var ← 再宣言, 再代入　どちらも可能！
// let ← 再代入のみ可能！
// const ← 再宣言, 再代入不可(定数)

// querySelectorは任意のHTMLのタグを取得することができる
// 例　Class属性hogeのHTMLを習得
// var hoge = document.querySelector('.hoge');

// selectタグを取得
var userBirthdayYear = document.querySelector('.user-birthday-year');
var userBirthdayMonth = document.querySelector('.user-birthday-month');
var userBirthdayDay = document.querySelector('.user-birthday-day');


// 現在の年代-120 から 現在の年代 までoptionタグを作成
let nowYear = 2020;
createElementsForOptions(userBirthdayYear, '----');
for (var i = nowYear; i >= nowYear - 120; i--) {
	createElementsForOptions(userBirthdayYear, i);
}

// 1月から12月までのoptionタグを生成
createElementsForOptions(userBirthdayMonth, '--');
for (var j = 1; j <= 12; j++) {
	createElementsForOptions(userBirthdayMonth, j);
}

// 1日から31日までのoptionタグを生成(デフォルト)
createElementsForOptions(userBirthdayDay, '--');
for (var k = 1; k <= 31; k++) {
	createElementsForOptions(userBirthdayDay, k);
}
// 日付の数は月によって変わるので動的に変える
userBirthdayMonth.addEventListener('change', () => {
	var days = createDaysForOptions(userBirthdayMonth);

	// optionタグを全て消去
	removeDaysElementsForOptions();

	createElementsForOptions(userBirthdayDay, '--');
	// 月に対応した日を取得したoptionタグを生成
	for (var l = 1; l <= days; l++) {
		createElementsForOptions(userBirthdayDay, l);
	}
});


/** ------ ここからは上記から呼び出すメソッドを扱う ------ **/
/**
 * 月が変わったら日のoptionタグの値を変える
 *
 * @param int el userBirthdayMonth ← HTMLのselectタグ
 */
function createDaysForOptions(el) {

	// selectIndexプロパティ(セレクトボックスで選択したものの番号が格納されている場所)の利用
	// 選択番号はoptionタグの一番上を0として数える
	// 取得したHTMLのselectタグを格納している変数の後に.selectIndexと記述することで使えます
	var indexKey = el.selectedIndex;
	// それぞれの月に対応した日を格納
	const mouth = {
		1: 31, 2: 29, 3: 31, 4: 30,
		5: 31, 6: 30, 7: 31, 8: 31,
		9: 30, 10: 31, 11: 30, 12: 31
	}

	// 月に対応した日を返す
	return mouth[indexKey];
}

/**
 * selectボックスのoptionタグを生成する
 * @param int el element
 * @param int val value
 */
function createElementsForOptions(el, val) {
	var op = document.createElement('option');
	op.value = val;
	op.text = val;
	// 特定の親ノードの子ノードの最後にノードを追加
	// この場合は親であるselectタグの子供のoptionタグの末尾に追加する
	el.appendChild(op);
}

function removeDaysElementsForOptions() {
	var birthday = document.getElementsByClassName('user-birthday-day');
	return birthday[0].innerHTML = '';
}