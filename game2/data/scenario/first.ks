;一番最初に呼び出されるファイル（箱入り娘のナンパ大作戦・ティラノ版）

[title name="箱入り娘のナンパ大作戦"]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
@call storage="tyrano.ks"

;セーブ・ロード・ヒストリーの画面を、Ren'Py 版に合わせた生成りと海老茶の見た目にする
[sysview type="save" storage="./data/others/hakoiri/html/save.html"]
[sysview type="load" storage="./data/others/hakoiri/html/load.html"]
[sysview type="backlog" storage="./data/others/hakoiri/html/backlog.html"]
[loadcss file="./data/others/hakoiri/hakoiri.css"]

;同じ曲を続けて指定したときは、頭から流し直さない（Ren'Py 版の if_changed と同じ）
[bgmopt samebgm_restart="false"]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;右下のメニューボタンは使わない（文字の窓の下の帯にボタンを並べる）
[hidemenubutton]

@jump storage="title.ks"

[s]
