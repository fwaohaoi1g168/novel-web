;タイトルのボタンと、本編の文字の窓・名前の札・下の帯のボタン。tools/make_ui.py が作る。直接は直さない。

*title_buttons
[button x="39" y="222" graphic="ui/title_start.png" enterimg="ui/title_start_hover.png" storage="title.ks" target="*gamestart" keyfocus="1"]
[button x="39" y="271" graphic="ui/title_load.png" enterimg="ui/title_load_hover.png" role="load" keyfocus="2"]
[button x="39" y="320" graphic="ui/title_config.png" enterimg="ui/title_config_hover.png" role="sleepgame" storage="config.ks" keyfocus="3"]
[return]

*game_ui
[position layer="message0" left="0" top="535" width="1280" height="185" page="fore" frame="ui/textbox.png" opacity="255" margint="35" marginl="183" marginr="140" marginb="20"]
[layopt layer="message0" visible="true"]
;名前の札（Ren'Py 版と同じく、窓の左上に重ねる。見た目は hakoiri.css）
[ptext name="chara_name_area" layer="message0" x="153" y="535" size="24" color="0xf8f2e5" text=""]
[chara_config ptext="chara_name_area" pos_mode="false"]
;窓の下の帯のボタン（Ren'Py 版のクイックメニュー。巻き戻しは無い）
[button fix="true" x="378" y="697" graphic="ui/q_backlog.png" enterimg="ui/q_backlog_hover.png" role="backlog"]
[button fix="true" x="477" y="697" graphic="ui/q_skip.png" enterimg="ui/q_skip_hover.png" role="skip"]
[button fix="true" x="561" y="697" graphic="ui/q_auto.png" enterimg="ui/q_auto_hover.png" role="auto"]
[button fix="true" x="630" y="697" graphic="ui/q_save.png" enterimg="ui/q_save_hover.png" role="save"]
[button fix="true" x="699" y="697" graphic="ui/q_load.png" enterimg="ui/q_load_hover.png" role="load"]
[button fix="true" x="768" y="697" graphic="ui/q_config.png" enterimg="ui/q_config_hover.png" role="sleepgame" storage="config.ks"]
[button fix="true" x="822" y="697" graphic="ui/q_title.png" enterimg="ui/q_title_hover.png" role="title"]
[return]
