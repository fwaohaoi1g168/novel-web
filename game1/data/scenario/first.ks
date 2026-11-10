;一番最初に呼び出されるファイル（漢はコーデで語れ）

[title name="漢はコーデで語れ"]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
@call storage="tyrano.ks"

;セーブ・ロード・メニュー・バックログの画面を、タイトルに合わせた黒と金の見た目にする（2026-11-06）
[sysview type="save" storage="./data/others/koden/html/save.html"]
[sysview type="load" storage="./data/others/koden/html/load.html"]
[sysview type="menu" storage="./data/others/koden/html/menu.html"]
[sysview type="backlog" storage="./data/others/koden/html/backlog.html"]
[loadcss file="./data/others/koden/koden.css"]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
