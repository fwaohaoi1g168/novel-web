;漢はコーデで語れ　本編
;もとにした台本：企画メモ/シナリオ_1本目_本文_下書きv1.md（11/5 時点）
;声：data/sound/voice/ の ogg（11/5 に Gemini TTS で作った声。台詞は全部声あり。作り方は 素材/声/生成スクリプト/）

*start

[cm]
[clearfix]
[start_keyconfig]

;メニューボタン（セーブ・ロードはここから）
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
@layopt layer=message0 visible=true

;名前の欄
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[chara_config ptext="chara_name_area" pos_mode="false"]

;BGMの音量（2026-11-06）：声より 9〜10dB 小さくなるよう、曲ごとに playbgm の volume を決めた（どの曲も約 -27 LUFS になる値）。曲を足すときも同じように測って決める。
;立ち絵の位置（2026-11-06）：画面に出すのは最大2人。左の枠＝ジン left=21／リリアーヌ left=56（反転なし）。
;右の枠＝タクミ left=638・リリアーヌ left=683（どちらも reflect="true" で左右反転して左を向く）／ウォルフ left=641／ブロカード left=554。top はどれも0。

;---------- 登場人物 ----------
;ジン（初期と覚醒は表情の名前で分ける。k_ がつくものが覚醒衣装）
[chara_new name="jin" storage="chara/jin/normal.png" jname="ジン"]
[chara_face name="jin" face="kime" storage="chara/jin/kime.png"]
[chara_face name="jin" face="odoroki" storage="chara/jin/odoroki.png"]
[chara_face name="jin" face="taikutsu" storage="chara/jin/taikutsu.png"]
[chara_face name="jin" face="k_normal" storage="chara/jin/k_normal.png"]
[chara_face name="jin" face="k_kime" storage="chara/jin/k_kime.png"]
[chara_face name="jin" face="k_odoroki" storage="chara/jin/k_odoroki.png"]

;リリアーヌ（l_ がつくものがロリィタ）
[chara_new name="liliane" storage="chara/liliane/normal.png" jname="リリアーヌ"]
[chara_face name="liliane" face="utsumuki" storage="chara/liliane/utsumuki.png"]
[chara_face name="liliane" face="odoroki" storage="chara/liliane/odoroki.png"]
[chara_face name="liliane" face="l_tere" storage="chara/liliane/l_tere.png"]
[chara_face name="liliane" face="l_jikkyo" storage="chara/liliane/l_jikkyo.png"]
[chara_face name="liliane" face="l_egao" storage="chara/liliane/l_egao.png"]
;驚きながら頬を赤らめる顔（11/9 本人）。tere_odoroki＝灰色の普段着（1-A〜1-C）、l_tere_odoroki＝ロリィタ（2-A）
[chara_face name="liliane" face="tere_odoroki" storage="chara/liliane/tere_odoroki.png"]
[chara_face name="liliane" face="l_tere_odoroki" storage="chara/liliane/l_tere_odoroki.png"]
;合う表情がなかったので Codex で足した（11/9）。jikkyo＝灰色の普段着の実況（場面4）、l_namida＝ロリィタの涙（2-C）
[chara_face name="liliane" face="jikkyo" storage="chara/liliane/jikkyo.png"]
[chara_face name="liliane" face="l_namida" storage="chara/liliane/l_namida.png"]

;ウォルフ
[chara_new name="wolf" storage="chara/wolf/normal.png" jname="ウォルフ"]
[chara_face name="wolf" face="odoroki" storage="chara/wolf/odoroki.png"]
[chara_face name="wolf" face="kuzure" storage="chara/wolf/kuzure.png"]
;しみじみとした穏やかな顔（11/9 Codex で足した。「服が、好きでな」と場面7）
[chara_face name="wolf" face="shimijimi" storage="chara/wolf/shimijimi.png"]

;ブロカード
[chara_new name="brocade" storage="chara/brocade/normal.png" jname="ブロカード"]
[chara_face name="brocade" face="doyo" storage="chara/brocade/doyo.png"]
[chara_face name="brocade" face="kuzure" storage="chara/brocade/kuzure.png"]
;むっとした顔（11/9 Codex で足した。「……かわいそう？　この僕が？」）
[chara_face name="brocade" face="mutto" storage="chara/brocade/mutto.png"]

;タクミ
[chara_new name="takumi" storage="chara/takumi/normal.png" jname="タクミ"]
[chara_face name="takumi" face="kando" storage="chara/takumi/kando.png"]

;客（場面1のショップの客。11/7 本人の頼みで足した。ビフォー＝地味なまま、アフター＝ジャケットを着せて襟を立て、チェーンを垂らしたあと）
;右の枠に left=690（反転なし。もとから左を向いている）。タクミが出る前に下げる
[chara_new name="kyaku" storage="chara/kyaku/before.png" jname="客"]
[chara_face name="kyaku" face="after" storage="chara/kyaku/after.png"]


;==================== 1 渋谷のショップ ====================
*scene1

;BGM：場面1はショップの曲（Degrees）。タイトルから同じ曲が流れているので、restart=false でかけ直さずにそのまま続ける（11/10）
[playbgm storage="Degrees.mp3" loop=true volume=17 restart=false]
[bg storage="shop.png" time=1000]

#
2007年、渋谷・センター街。[r]
この街には、ひとりの"最強"がいた。[p]

;異名を大きく出す。「ダークメテオ」はルビ
[chara_show name="jin" time=600 left="21" top="0" zindex="3"]
#
[font size=40 bold=true]
【歩くだけで渋谷がひれ伏す男】[r]
漆黒の[ruby text="ダーク"]流[ruby text="メ"]星[ruby text="テオ"]雨――天城ジン。[p]
[resetfont]

[chara_show name="kyaku" time=400 left="690" top="0" zindex="2"]
#客
[playse storage="voice/kyaku_01_01.ogg" buf=1 clear=true]
あの……オレ、こういう店、初めてで……[p]

[playse storage="voice/jin_01_01.ogg" buf=1 clear=true]
#ジン
いいじゃん。初めてってのは、伸びしろしかねえってことっしょ[p]

#
ジンは客のカーディガンを脱がせ、黒いジャケットを羽織らせた。[r]
襟をひとつ立て、シルバーのチェーンを一本だけ垂らす。[p]

;客がアフターに変わる（11/7 本人：カーディガンをジャケットに替えたので、本文もそれに合わせた）
[chara_mod name="kyaku" face="after" time=800]
#
それだけで、鏡の中の男は別人になった。[p]

#客
[playse storage="voice/kyaku_01_02.ogg" buf=1 clear=true]
これ……オレ……？[p]

[chara_mod name="jin" face="kime"]
[playse storage="voice/jin_01_02.ogg" buf=1 clear=true]
#ジン
鏡見てみ。それ、最初からあんただから[p]

[chara_mod name="jin" face="default"]
[chara_hide name="kyaku" time=400]
[chara_show name="takumi" time=400 left="638" top="0" zindex="2" reflect="true"]
#タクミ
[playse storage="voice/takumi_01_01.ogg" buf=1 clear=true]
さすがっす、ジンさん！　今の接客、5ジンはありました！[p]

[chara_mod name="jin" face="odoroki"]
[playse storage="voice/jin_01_03.ogg" buf=1 clear=true]
#ジン
5ジン？　なにそれ[p]

#タクミ
[playse storage="voice/takumi_01_02.ogg" buf=1 clear=true]
単位っす。ジンさんを基準にした単位[p]

[chara_mod name="jin" face="default"]
[playse storage="voice/jin_01_04.ogg" buf=1 clear=true]
#ジン
無限を測ろうとすんなって[p]

[chara_mod name="takumi" face="kando"]
#タクミ
[playse storage="voice/takumi_01_03.ogg" buf=1 clear=true]
む、無限……！　一生ついていくっす、ジンさん！[p]

[chara_hide name="takumi" time=400]
#
売り上げは、ずっと店のトップ。スナップは14か月連続で誌面に載った。[r]
挑んでくる者は、もういない。[p]

;退屈しきった無表情（11/6 本人）
[chara_mod name="jin" face="taikutsu"]
[playse storage="voice/jin_01_05.ogg" buf=1 clear=true]
#ジン
……最強すぎて、つまんねえ[p]

#
ジンは、試着室のカーテンを開けた。[p]


;==================== 2 異世界へ ====================
*scene2

[chara_hide_all time=300]
;ショップの曲は、白く光るのに合わせて消す
[fadeoutbgm time=800]
;転移：白く光らせてから灰色の街へ（効果音はまだない）
[mask time=800 color="0xffffff"]
[bg storage="street_gray.png" time=10]
[mask_off time=1200]

#
光。そして――[r]
カーテンの向こうに、店はなかった。[p]
;一枚絵：灰色の街で、みんな同じ灰色の服（11/10 本人「灰色の街でみんな同じ服着てるのも一枚絵で見せたい」）。ジンは絵の中にいるので、次の台詞は立ち絵を出さずに声だけ。場面3の頭でいつもの背景に戻す
[bg storage="cg_gray_crowd.png" time=800]
石畳の街。行き交う人々は、ひとり残らず灰色の服を着ていた。[p]

[playse storage="voice/jin_02_01.ogg" buf=1 clear=true]
#ジン
……は？　何この街。全員、同じ服じゃん[p]


;==================== 3 灰色の街 ====================
*scene3

[playbgm storage="Concrete_Perimeter.mp3" loop=true volume=22]
;一枚絵からいつもの灰色の街に戻し、ジンの立ち絵を出す（前は場面2で驚き顔で出していたものを、ここでふつうの顔に替えていた。11/10）
[bg storage="street_gray.png" time=800]
[chara_show name="jin" face="default" time=400 left="21" top="0" zindex="3"]

#
黒とシルバーの男に、灰色の街がざわめいた。[p]

#群衆
[playse storage="voice/gunshu_03_01.ogg" buf=1 clear=true]
な、なんだあの黒は……！[p]
[playse storage="voice/gunshu_03_02.ogg" buf=1 clear=true]
まぶしっ……！　目が、目がぁ……！[p]

[chara_show name="liliane" time=500 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_03_01.ogg" buf=1 clear=true]
#リリアーヌ
その服、捕まるわよ[p]

#
灰色のワンピースの少女が、ジンの袖を引いた。[p]

[playse storage="voice/liliane_03_02.ogg" buf=1 clear=true]
#リリアーヌ
ここはコーデリア王国の城下町、ヘムライン。王様の『オシャレ禁止令』で、みんな灰色の服しか着られないの[p]

;表情（11/10 本人）：灰色の服しか着られないと聞いて驚く
[chara_mod name="jin" face="odoroki"]
[playse storage="voice/jin_03_01.ogg" buf=1 clear=true]
#ジン
マジで？　じゃ、貴族とかは？[p]

[playse storage="voice/liliane_03_03.ogg" buf=1 clear=true]
#リリアーヌ
貴族の服は、襟が2センチ高いの[p]

;表情（11/10 本人）：「最強すぎて、つまんねえ」と同じ真顔。リリアーヌが身の上を話しはじめるところで、ふつうの顔に戻す
[chara_mod name="jin" face="taikutsu"]
[playse storage="voice/jin_03_02.ogg" buf=1 clear=true]
#ジン
誤差じゃん[p]
[chara_mod name="jin" face="default"]

[playse storage="voice/liliane_03_04.ogg" buf=1 clear=true]
#リリアーヌ
……私も、昔は貴族だったわ。服を仕立てる家だったの[p]

[chara_mod name="liliane" face="utsumuki"]
#
少女は、少しだけうつむいた。[p]

;ドレスの話は嬉しそうに話すので、うつむきから通常の顔に戻す（11/6 本人）
[chara_mod name="liliane" face="default"]
[playse storage="voice/liliane_03_05.ogg" buf=1 clear=true]
#リリアーヌ
ずっと、着てみたかったドレスがあるの。丈が膝までで、ふんわりしてて……レースがいっぱいの[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：言われてつらかった話なので、うつむきに
[chara_mod name="liliane" face="utsumuki"]
[playse storage="voice/liliane_03_06.ogg" buf=1 clear=true]
#リリアーヌ
膝丈のドレスなんて、令嬢らしくないって言われ続けたけど[p]

[playse storage="voice/jin_03_03.ogg" buf=1 clear=true]
#ジン
あー、ロリィタファッションね[p]

[chara_mod name="liliane" face="odoroki"]
[playse storage="voice/liliane_03_07.ogg" buf=1 clear=true]
#リリアーヌ
……ろりぃた？[p]

[playse storage="voice/liliane_03_08.ogg" buf=1 clear=true]
#リリアーヌ
待って。名前が、あるの？[p]

[playse storage="voice/jin_03_04.ogg" buf=1 clear=true]
#ジン
あるある。オレの世界じゃ、それ着て堂々と歩いてる子、いっぱいいるよ[p]

[chara_mod name="jin" face="kime"]
[playse storage="voice/jin_03_05.ogg" buf=1 clear=true]
#ジン
あんた、全然ひとりじゃねえよ[p]

#
リリアーヌの瞳が、初めて揺れた。[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：呼び止められたジンは驚き顔に
[chara_mod name="jin" face="odoroki"]
[chara_mod name="liliane" face="default"]
[fadeoutbgm time=500]
#ウォルフ
[font size=34]
[playse storage="voice/wolf_03_01.ogg" buf=1 clear=true]
そこの黒い男！　規定違反だ！[p]
[resetfont]


;==================== 4 対決1：街の路上ランウェイ ====================
*scene4

[playbgm storage="Velvet_against_Steel.mp3" loop=true volume=16]
;ここから最大2人：右はウォルフ。左はジンとリリアーヌが、話すほうに入れ替わる
[chara_hide name="liliane" time=300 wait=false]
[chara_show name="wolf" time=500 left="641" top="0" zindex="2"]

#
灰色の群衆が割れる。[r]
現れたのは、使い込んだワークウェアに身を包んだ大男だった。[p]

[chara_hide name="jin" time=200 wait=false]
;表情（11/10 本人）：ウォルフのことを説明するので、解説の顔（灰色の服の実況 jikkyo）
[chara_show name="liliane" face="jikkyo" time=200 left="56" top="0" zindex="3" reflect="false"]
[playse storage="voice/liliane_04_01.ogg" buf=1 clear=true]
#リリアーヌ
オシャレ取締局の局長、ウォルフ・ハイド……！　取り締まる側だけは、オシャレを許されているの。違反者を、ランウェイで倒すために[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="jin" face="default" time=200 left="21" top="0" zindex="3"]
#ウォルフ
[playse storage="voice/wolf_04_01.ogg" buf=1 clear=true]
貴様の魅力値、測らせてもらう[p]

#
ウォルフが巻き尺を走らせる。目盛りが、狂ったように回った。[p]

[chara_mod name="wolf" face="odoroki"]
[quake count=3 time=300 hmax=10]
#ウォルフ
[playse storage="voice/wolf_04_02.ogg" buf=1 clear=true]
魅力値……ERROR……測定不能、だと……？[p]

[playse storage="voice/jin_04_01.ogg" buf=1 clear=true]
#ジン
測るもんじゃねえよ。見せるもんっしょ[p]

[chara_mod name="jin" face="kime"]
[playse storage="voice/jin_04_02.ogg" buf=1 clear=true]
#ジン
漢はな、口じゃなくコーデで語るんだよ[p]

[chara_mod name="jin" face="default"]
[chara_mod name="wolf" face="default"]
#ウォルフ
[playse storage="voice/wolf_04_03.ogg" buf=1 clear=true]
……いいだろう。路上ランウェイで、裁く[p]

#
石畳が、ランウェイに変わった。[r]
先に歩くのは、ウォルフ。[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：興奮した実況なので、灰色の服の実況の顔
[chara_hide name="jin" time=200 wait=false]
[chara_show name="liliane" face="jikkyo" time=200 left="56" top="0" zindex="3" reflect="false"]
[playse storage="voice/liliane_04_02.ogg" buf=1 clear=true]
#リリアーヌ
見て、あのベルト……！　使い込んだ革が、一歩ごとに鳴ってる。飾りじゃない、生き様の服よ……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="jin" time=200 left="21" top="0" zindex="3"]
[playse storage="voice/jin_04_03.ogg" buf=1 clear=true]
#ジン
へえ。やるじゃん[p]

#
そして、ジンの番が来た。[p]

;---------- 選択肢1：ジンが見せるのは―― ----------
[cm]
[glink color="black" size="28" x="290" width="700" y="150" text="襟を立てる" target="*choice1_a"]
[glink color="black" size="28" x="290" width="700" y="250" text="足を止めて、相手を見据える" target="*choice1_b"]
[glink color="black" size="28" x="290" width="700" y="350" text="ポケットに手を入れたまま歩く" target="*choice1_c"]
[s]

*choice1_a
;表情と並びの見直し（11/9 本人「全部直したい」）：襟を立てるのでキメ顔（1-B と同じ）
[chara_mod name="jin" face="kime"]
#
ジンが、毛皮の襟をゆっくりと立てた。[p]

#群衆
[playse storage="voice/gunshu_04_1-A_01.ogg" buf=1 clear=true]
首筋が……首筋が、語りかけてくる……！[p]

;ジンは出したまま、右のウォルフとリリアーヌを入れ替える（11/9 本人）
[chara_hide name="wolf" time=200 wait=false]
[chara_show name="liliane" face="tere_odoroki" time=200 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_04_1-A_01.ogg" buf=1 clear=true]
#リリアーヌ
なんて色気なの……！？　襟を立てただけで、観客が次々と倒れていく……！　ルーシュ家の娘として、数々のオシャレを見てきた私でも……立っているのがやっとだわ……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="wolf" time=200 left="641" top="0" zindex="2"]
[chara_mod name="wolf" face="odoroki"]
#ウォルフ
[playse storage="voice/wolf_04_1-A_01.ogg" buf=1 clear=true]
規定の2センチを……超えている……！　巻き尺を当てるまでもない……！　なのに、なぜだ……取り締まるべき首筋から、目が離せん……！　……ギルティ……！[p]
[jump target="*choice1_end"]

*choice1_b
[chara_mod name="jin" face="kime"]
#
ランウェイの真ん中で、ジンは足を止め、ウォルフをまっすぐ見据えた。[p]

#群衆
[playse storage="voice/gunshu_04_1-B_01.ogg" buf=1 clear=true]
目が合った……オレ、今、目が合った……！[p]

#
客席の灰色が、ばたばたと倒れていく。[p]

;ジンは出したまま、右のウォルフとリリアーヌを入れ替える（11/9 本人）
[chara_hide name="wolf" time=200 wait=false]
[chara_show name="liliane" face="tere_odoroki" time=200 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_04_1-B_01.ogg" buf=1 clear=true]
#リリアーヌ
ちょっと待って、私は見られてないのに……！　横から見てるだけで、心臓がうるさい……！　あの目に正面から射抜かれたら、私なんて三秒ももたないわ……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="wolf" time=200 left="641" top="0" zindex="2"]
[chara_mod name="wolf" face="odoroki"]
#ウォルフ
[playse storage="voice/wolf_04_1-B_01.ogg" buf=1 clear=true]
ぐっ……！　目を逸らせば負け、見続ければ……焼かれる……！　違反者を睨み続けてきたこの俺が、睨み返されて……膝が、笑っているだと……！？[p]
[jump target="*choice1_end"]

*choice1_c
#
ジンは、両手をポケットに入れたまま、ただ歩いた。[p]

#群衆
[playse storage="voice/gunshu_04_1-C_01.ogg" buf=1 clear=true]
なんで……ただ歩いてるだけなのに……！[p]

;ジンは出したまま、右のウォルフとリリアーヌを入れ替える（11/9 本人）
[chara_hide name="wolf" time=200 wait=false]
[chara_show name="liliane" face="tere_odoroki" time=200 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_04_1-C_01.ogg" buf=1 clear=true]
#リリアーヌ
ポケットに手を入れたまま……！？　ランウェイでそれが許されるのは、世界でひとりだけよ……！　勝つことを最初から知ってる歩き方……ああもう、悔しいくらい見とれちゃう……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="wolf" time=200 left="641" top="0" zindex="2"]
[chara_mod name="wolf" face="odoroki"]
#ウォルフ
[playse storage="voice/wolf_04_1-C_01.ogg" buf=1 clear=true]
戦う気すら、見せんというのか……！　ランウェイを、散歩道にする気か……！　構えもしない相手に……なぜ、俺の背中を冷や汗が流れる……！[p]
[jump target="*choice1_end"]

;---------- 合流 ----------
*choice1_end
;崩れる瞬間に曲をブツ切りにする（音楽の仕様メモの案）
[stopbgm]
[chara_mod name="jin" face="default"]
[chara_mod name="wolf" face="kuzure"]
#
ウォルフが、膝をついた。[p]

#ウォルフ
[playse storage="voice/wolf_04_01b.ogg" buf=1 clear=true]
……完敗だ[p]

[chara_mod name="jin" face="kime"]
[playse storage="voice/jin_04_04.ogg" buf=1 clear=true]
#ジン
キマりすぎてて、悪いな[p]

[chara_mod name="jin" face="default"]
[playse storage="voice/jin_04_05.ogg" buf=1 clear=true]
#ジン
でも、あんたのその服、着こなしは一流だよ[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：静かに打ち明けるので、崩れ（歯を食いしばった顔）をやめて、しみじみとした顔
[chara_mod name="wolf" face="shimijimi"]
#ウォルフ
[playse storage="voice/wolf_04_02b.ogg" buf=1 clear=true]
……服が、好きでな。堂々とオシャレできる場所が、ここしかなかった[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：背を向けたのが見えるよう、左右を反転して外を向かせる
[chara_hide name="wolf" time=200]
[chara_show name="wolf" face="default" time=300 left="641" top="0" zindex="2" reflect="true"]
#
ウォルフは立ち上がり、背を向けた。[p]

#ウォルフ
[playse storage="voice/wolf_04_03b.ogg" buf=1 clear=true]
王に報告する。……没収品の倉庫の鍵を、なぜか落としたが。拾うなよ[p]

[chara_hide name="wolf" time=500]
#
チャリン、と鍵が鳴った。[p]


;==================== 5 王城へ ====================
*scene5

[playbgm storage="Throne_of_Silken_Needles.mp3" loop=true volume=15]
[chara_show name="liliane" face="default" time=400 left="683" top="0" zindex="2" reflect="true"]

#
その夜、王城から使者が来た。[r]
決戦は、明日の朝。[p]

リリアーヌは倉庫の布を抱えて、ひと晩じゅう針を動かした。[p]

[chara_hide_all time=500]
;決戦の朝：先に誰もいない仕立て部屋を出し、そこにリリアーヌが現れる（11/6 本人。前は一瞬だけ王城を出していた）
[bg storage="morning_room.png" time=1000]

#
決戦の朝。[p]

;一枚絵（あると映える）：決戦の朝のリリアーヌ。同じ部屋の絵に重ねて、リリアーヌだけが浮かび上がるように見せる
[bg storage="cg_morning.png" time=1200]
#
現れたリリアーヌは、パープルと黒のドレスを着ていた。丈は、膝まで。[p]

[bg storage="castle_runway.png" time=800]
[chara_show name="jin" time=300 left="21" top="0" zindex="3"]
[chara_show name="liliane" face="l_tere" time=300 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_05_01.ogg" buf=1 clear=true]
#リリアーヌ
……自分で、選んだの。どう？[p]

[playse storage="voice/jin_05_01.ogg" buf=1 clear=true]
#ジン
似合ってんじゃん。あんたが選んだ服が、いちばん強えよ[p]

[chara_mod name="liliane" face="l_egao"]
[playse storage="voice/liliane_05_02.ogg" buf=1 clear=true]
#リリアーヌ
ついでに、あなたのも縫っておいたわ[p]

;一枚絵：ジンの服のビフォー・アフター（11/9 本人）。腰上の立ち絵ではロングコートの違いが見えないため
[chara_hide_all time=300]
[bg storage="cg_beforeafter.png" time=800]
#
黒いロングコート。異世界の布に、渋谷の魂。[p]

[bg storage="castle_runway.png" time=800]
[chara_show name="jin" face="k_odoroki" time=300 left="21" top="0" zindex="3"]
[chara_show name="liliane" face="l_egao" time=300 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/jin_05_02.ogg" buf=1 clear=true]
#ジン
……マジか。これ、ヤバいじゃん[p]

[chara_mod name="jin" face="k_normal"]
#
王城の壁は、一面が王の肖像画だった。[p]

[playse storage="voice/jin_05_03.ogg" buf=1 clear=true]
#ジン
全部、同じ人じゃん[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：冷静なツッコミなので、照れ顔をやめて話している顔に
[chara_mod name="liliane" face="l_jikkyo"]
[playse storage="voice/liliane_05_03.ogg" buf=1 clear=true]
#リリアーヌ
天井にもいるわ[p]


;==================== 6 対決2：王城のランウェイ ====================
*scene6

[playbgm storage="Crown_of_Vanity.mp3" loop=true volume=16]
[chara_hide_all time=300]

;一枚絵（あると映える）：ブロカードのマント
[bg storage="cg_mantle.png" time=800]
#
薔薇の花びらが舞った。家来たちが、必死に撒いていた。[p]

#ブロカード
[playse storage="voice/brocade_06_01.ogg" buf=1 clear=true]
ようこそ、僕の城へ。コーデリア王、ブロカードだよ。……壁の絵？　全部僕さ。美しいだろう？[p]

#
金糸を織り込んだマント。その端を、家来が12人がかりで支えている。[r]
端は、まだ隣の部屋にあった。[p]

[bg storage="castle_runway.png" time=800]
;ここから最大2人：右はブロカード。左はジンとリリアーヌが、話すほうに入れ替わる
[chara_show name="brocade" time=300 left="554" top="0" zindex="2"]
[chara_show name="liliane" face="l_jikkyo" time=300 left="56" top="0" zindex="3" reflect="false"]
[playse storage="voice/liliane_06_01.ogg" buf=1 clear=true]
#リリアーヌ
称号『黄金の要塞』……魅力値、99,999。上限よ……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="jin" face="k_normal" time=200 left="21" top="0" zindex="3"]
[playse storage="voice/jin_06_01.ogg" buf=1 clear=true]
#ジン
上限ってことは、そっから上がらねえってことじゃん。……かわいそ[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：プライドを傷つけられて、むっとする。次の台詞でいつもの顔に戻す
[chara_mod name="brocade" face="mutto"]
#ブロカード
[playse storage="voice/brocade_06_01b.ogg" buf=1 clear=true]
……かわいそう？　この僕が？[p]
[chara_mod name="brocade" face="default"]
[playse storage="voice/brocade_06_02.ogg" buf=1 clear=true]
この国で輝くのは、僕ひとりで十分なんだよ[p]

[chara_hide name="jin" time=200 wait=false]
[chara_show name="liliane" face="l_jikkyo" time=200 left="56" top="0" zindex="3" reflect="false"]
[playse storage="voice/liliane_06_02.ogg" buf=1 clear=true]
#リリアーヌ
悔しいけど、本物よ。宝石を縫い込んだ襟に、重い王冠。あの服に、ごまかしはひとつもない……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="jin" time=200 left="21" top="0" zindex="3"]
[playse storage="voice/jin_06_02.ogg" buf=1 clear=true]
#ジン
ああ。マジでイケてるわ[p]

[playse storage="voice/jin_06_03.ogg" buf=1 clear=true]
#ジン
でもさ。挑んでくる奴、全部消したんだろ[p]

[playse storage="voice/jin_06_04.ogg" buf=1 clear=true]
#ジン
比べる相手のいないオシャレなんて、ただの独り言だろ[p]

;「悪いな王様」は、前は王様の「輝くのは、僕ひとりで十分」のすぐあとにあった。そのあとリリアーヌが王様の服を本物とほめ、ジンも「マジでイケてるわ」と認める流れが、宣戦のあとでちぐはぐだったので、ジンが王様の服を認めて弱点を言い当てたあとの、決めの宣言に動かした（11/9 本人「台本の流れ的に今の場所への配置は違和感がある」）
[chara_mod name="jin" face="k_kime"]
#ジン
[playse storage="voice/jin_06_01b.ogg" buf=1 clear=true]
悪いな王様。降り注ぐ[ruby text="ダークメテオ"]星の光は、誰にも遮れねえんだわ[p]

#
家来たちが、ジンにも照明を向けようとした。[p]

[playse storage="voice/jin_06_05.ogg" buf=1 clear=true]
#ジン
照明いらねえよ。オレが光ってっから[p]

;---------- 選択肢2：ジンが最後に見せるのは―― ----------
[cm]
[glink color="black" size="28" x="290" width="700" y="150" text="コートを翻してターンする" target="*choice2_a"]
[glink color="black" size="28" x="290" width="700" y="250" text="振り返って、流し目" target="*choice2_b"]
[glink color="black" size="28" x="290" width="700" y="350" text="灰色の客席に手を差し出す" target="*choice2_c"]
[s]

*choice2_a
#
ランウェイの先端で、黒いコートが大きく翻った。[p]

;ジンは出したまま、右の王様とリリアーヌを入れ替える（11/9 本人）
[chara_hide name="brocade" time=200 wait=false]
[chara_show name="liliane" face="l_tere_odoroki" time=200 left="683" top="0" zindex="2" reflect="true"]
;最後の一文を直した。前は「だめ、仕立て屋の血が騒ぐ……今すぐあの裾の裁ち方を確かめたい……！」だったが、このコートは決戦の朝にリリアーヌ自身が縫ったもので、裁ち方を確かめたがるのはおかしい（11/9 本人。3つの案から案3）
[playse storage="voice/liliane_06_2-A_01.ogg" buf=1 clear=true]
#リリアーヌ
家来12人がかりのマントを……コート一枚の、ひと振りで超えた……！？　風が、ここまで届いた……っ！　私の縫ったコートが……着る人ひとりで、ここまで化けるなんて……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="brocade" time=200 left="554" top="0" zindex="2"]
[chara_mod name="brocade" face="doyo"]
#ブロカード
[playse storage="voice/brocade_06_2-A_01.ogg" buf=1 clear=true]
僕のマントが……重たく、見える……？　そんなの、美しくない……！[p]
[jump target="*choice2_end"]

*choice2_b
#
ジンは背を向けたまま、ちらりとだけ振り返った。[p]

#群衆
[playse storage="voice/gunshu_06_2-B_01.ogg" buf=1 clear=true]
……今、こっち見た！[p]
[playse storage="voice/gunshu_06_2-B_02.ogg" buf=1 clear=true]
いや、オレを見た！[p]

#
マントを支えていた家来たちが、ひとり残らず手を離した。[p]

;ジンは出したまま、右の王様とリリアーヌを入れ替える（11/9 本人）
[chara_hide name="brocade" time=200 wait=false]
[chara_show name="liliane" face="l_tere" time=200 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_06_2-B_01.ogg" buf=1 clear=true]
#リリアーヌ
ちょっと待って、今の流し目……こっちにも流れてきた……！？　……っ、顔が熱い……！　じ、実況……実況しなきゃ……。……でも、あんな……あの目を実況なんて、無理……！！！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="brocade" time=200 left="554" top="0" zindex="2"]
[chara_mod name="brocade" face="doyo"]
#ブロカード
[playse storage="voice/brocade_06_2-B_01.ogg" buf=1 clear=true]
ちょっと！　マントを離さないで！　僕の美しさが途切れる！[p]
[jump target="*choice2_end"]

*choice2_c
#
ジンは、灰色の客席に手を差し出した。[p]

;表情と並びの見直し（11/9 本人「全部直したい」）：客席を誘うやさしい台詞なので、キメ顔からおだやかな顔に
[chara_mod name="jin" face="k_normal"]
[playse storage="voice/jin_06_2-C_01.ogg" buf=1 clear=true]
#ジン
見てるだけでいいの？　お前らも、着ていいんだぜ[p]

#群衆
[playse storage="voice/gunshu_06_2-C_01.ogg" buf=1 clear=true]
……オレたちも、着ていいのか……？[p]

;ジンは出したまま、右の王様とリリアーヌを入れ替える（11/9 本人）
[chara_hide name="brocade" time=200 wait=false]
;表情と並びの見直し（11/9 本人「全部直したい」）：涙で前が見えない、なので涙の顔
[chara_show name="liliane" face="l_namida" time=200 left="683" top="0" zindex="2" reflect="true"]
;「灰色の服の」を消した（11/9 本人：このときの服はもうロリィタなので）。声も作り直した
[playse storage="voice/liliane_06_2-C_01.ogg" buf=1 clear=true]
#リリアーヌ
自分だけじゃない……見てる人まで、輝かせようとしてる……！　だめ、涙で前が見えない……！　あの手は……私にも、差し出されてるんだわ……！[p]

[chara_hide name="liliane" time=200 wait=false]
[chara_show name="brocade" time=200 left="554" top="0" zindex="2"]
[chara_mod name="brocade" face="doyo"]
#ブロカード
[playse storage="voice/brocade_06_2-C_01.ogg" buf=1 clear=true]
やめて！　みんなが輝いたら……僕が、目立たなくなっちゃうじゃないか……！[p]
[jump target="*choice2_end"]

;---------- 合流 ----------
*choice2_end
;崩れる瞬間に曲をブツ切りにする
[stopbgm]
[chara_hide_all time=300]
;一枚絵（必須）：決戦の決め
[bg storage="cg_kime.png" time=800]

#
王冠が、かたりと傾いた。[p]

#ブロカード
[playse storage="voice/brocade_06_03.ogg" buf=1 clear=true]
僕が……負ける……？　挑んでくる人なんて、ひとり残らず消したのに……[p]

[playse storage="voice/jin_06_06.ogg" buf=1 clear=true]
#ジン
だからだよ[p]

[playse storage="voice/jin_06_07.ogg" buf=1 clear=true]
#ジン
[font size=32]
最強ってのはな、挑まれ続けて初めて名乗れんだよ[p]
[resetfont]


;==================== 7 決着 ====================
*scene7

;BGM：場面7は決着の曲（Boutique_Morning_Rush）。場面6の終わりの無音から、街に色が戻るところで流しはじめる
[bg storage="street_gray.png" time=800]
#
その日、オシャレ禁止令は廃止された。[r]
灰色の街に、色が戻っていく。[p]

[playbgm storage="Boutique_Morning_Rush.mp3" loop=true volume=16]
[bg storage="street_color.png" time=2500]

[chara_show name="liliane" face="l_egao" time=400 left="304" top="0" zindex="1" reflect="false"]
#
ルーシュ家の工房が、ふたたび扉を開けた。[r]
店先に立つのは、ロリィタ姿のリリアーヌ。人は彼女を「ロリィタの開祖」と呼んだ。[p]

[chara_hide name="liliane" time=300]
;表情と並びの見直し（11/9 本人「全部直したい」）：ひとりなので真ん中に（人物の中心が画面の真ん中）
[chara_show name="wolf" face="shimijimi" time=300 left="320" top="0" zindex="2" reflect="false"]
#ウォルフ
[playse storage="voice/wolf_07_01.ogg" buf=1 clear=true]
取り締まらなくても、オシャレができる。……悪くないな[p]

[chara_hide_all time=300]
[bg storage="stitch_shop.png" time=1000]
#
そして、玉座の間。[r]
看板には、こう書かれていた。――VANITY CROWN 王都ステッチ店。[p]

[chara_show name="jin" face="k_normal" time=300 left="21" top="0" zindex="3"]
[chara_show name="liliane" face="l_egao" time=300 left="683" top="0" zindex="2" reflect="true"]
[playse storage="voice/liliane_07_01.ogg" buf=1 clear=true]
#リリアーヌ
王様兼ショップ店員なんて、前代未聞よ[p]

[chara_mod name="jin" face="k_kime"]
[playse storage="voice/jin_07_01.ogg" buf=1 clear=true]
#ジン
試着はタダだぜ。勇気だけ持ってきな[p]

;一枚絵：にぎわう王城の店（11/9 本人「エンディングで城内のショップがにぎわってる様子も一枚絵で追加したい」）。地の文は本人の言葉で「最後尾には」→「列には」
[chara_hide_all time=300]
[bg storage="cg_nigiwai.png" time=800]
#
店の前には、長い行列ができていた。列には、元・国王の姿もある。[p]

;いつもの店の背景に戻す（11/9 本人）。最大2人：ジンと王
[bg storage="stitch_shop.png" time=800]
[chara_show name="jin" face="k_normal" time=300 left="21" top="0" zindex="3"]
;表情と並びの見直し（11/9 本人「全部直したい」）：自分に酔った明るい台詞なので、崩れでなくふつうの顔
[chara_show name="brocade" face="default" time=300 left="554" top="0" zindex="2"]
#ブロカード
[playse storage="voice/brocade_07_01.ogg" buf=1 clear=true]
次は負けないよ。……並んでる僕も、美しいだろう？[p]

[chara_mod name="jin" face="k_normal"]
[playse storage="voice/jin_07_02.ogg" buf=1 clear=true]
#ジン
……これでしばらく退屈しねえわ[p]

;パラパラの場面は、あとでここに足す（11/5 本人）

[chara_hide_all time=800]
[cm]
#
[font size=40]
漢はコーデで語れ　おわり[p]
[resetfont]

;タイトルに戻る前に、曲を静かに消す（タイトルの stopbgm でブツ切りにならないように）
[fadeoutbgm time=1500]
[wait time=1500]

[hidemenubutton]
@jump storage="title.ks"
