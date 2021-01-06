

function popupImage() {
  var popup = document.getElementById('js-popup');
  if(!popup) return;

  var blackBg = document.getElementById('js-black-bg');
  var closeBtn = document.getElementById('js-close-btn');
  var showBtn = document.getElementById('js-show-popup');

  closePopUp(blackBg);
  closePopUp(closeBtn);
  closePopUp(showBtn);
  function closePopUp(elem) {
    if(!elem) return;
    elem.addEventListener('click', function() {
      popup.classList.toggle('is-show');
    });
  }
}
popupImage();

window.addEventListener("DOMContentLoaded", () => {

	const ddarea = document.getElementById("ddarea");
	var fileInput = document.getElementById('fileInput');

	// ドラッグされたデータが有効かどうかチェック
	const isValid = e => e.dataTransfer.types.indexOf("Files") >= 0;

	const ddEvent = {
		"dragover": e => {
			e.preventDefault(); // 既定の処理をさせない
			e.stopPropagation(); // イベント伝播を止める
			if (!e.target.isEqualNode(ddarea)) {
				// ドロップエリア外ならドロップを無効にする
				e.dataTransfer.dropEffect = "none"; return;
			}
			// e.stopPropagation(); // イベント伝播を止める

			if (!isValid(e)) {
				// 無効なデータがドラッグされたらドロップを無効にする
				e.dataTransfer.dropEffect = "none"; return;
			}
			// ドロップのタイプを変更
			e.dataTransfer.dropEffect = "copy";
			ddarea.classList.add("ddefect");
		},
		"dragleave": e => {
			e.stopPropagation(); // イベント伝播を止める
			if (!e.target.isEqualNode(ddarea)) {
				return;
			}
			// e.stopPropagation(); // イベント伝播を止める
			ddarea.classList.remove("ddefect");
		},
		"drop": e => {
			e.preventDefault(); // 既定の処理をさせない
			e.stopPropagation(); // イベント伝播を止める

			ddarea.classList.remove("ddefect");
			var files = e.dataTransfer.files;
			fileInput.files = files;
		}
	};

	Object.keys(ddEvent).forEach(e => {
		// ddarea.addEventListener(e,ddEvent[e]);
		document.body.addEventListener(e, ddEvent[e], true)
	});

});




