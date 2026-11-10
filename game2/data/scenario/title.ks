;タイトル画面（Ren'Py 版と同じく、左の帯に「はじめから・ロード・環境設定」）

[cm]
@clearstack
[clearfix]
[layopt layer="message0" visible="false"]
[chara_hide_all time="0"]
[bg storage="ui_title.jpg" time="500"]

;タイトルの曲（Ren'Py 版の config.main_menu_music と同じく、街の曲。11/10 本人「タイトル画面の音楽が暗い」で屋敷の曲から替えた）
[playbgm storage="machi.ogg" loop="true"]

*start
[call storage="ui.ks" target="*title_buttons"]
[s]

*gamestart
[clearfix]
@jump storage="story.ks"
