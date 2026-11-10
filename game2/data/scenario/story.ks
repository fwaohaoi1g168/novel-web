;箱入り娘のナンパ大作戦　本編
;このファイルは tools/build_from_renpy.py が、game2 のブランチ version-1.1（コミット 1b5e84f）の game/story.rpy から作る。直接は直さない。

*start
[cm]
[clearfix]
[start_keyconfig]
[call storage="ui.ks" target="*game_ui"]

;---------- 登場人物（立ち絵は 1920x1080 の Ren'Py 版を 2/3 に縮めたもの） ----------
[chara_new name="chizuru" storage="chara/chizuru_base.png" jname="千鶴" color="#ffd2de"]
[chara_face name="chizuru" face="futsu" storage="chara/chizuru_base.png"]
[chara_face name="chizuru" face="hashagu" storage="chara/chizuru_hashagu.png"]
[chara_face name="chizuru" face="shitataka" storage="chara/chizuru_shitataka.png"]
[chara_face name="chizuru" face="honne" storage="chara/chizuru_honne.png"]
[chara_face name="chizuru" face="kangaeru" storage="chara/chizuru_kangaeru.png"]
[chara_new name="tetsuji" storage="chara/tetsuji_base.png" jname="鉄次" color="#e2d4ff"]
[chara_face name="tetsuji" face="sugomu" storage="chara/tetsuji_sugomu.png"]
[chara_face name="tetsuji" face="komaru" storage="chara/tetsuji_komaru.png"]
[chara_face name="tetsuji" face="kuzure" storage="chara/tetsuji_kuzure.png"]
[chara_face name="tetsuji" face="tsukkomi" storage="chara/tetsuji_tsukkomi.png"]
[chara_new name="otoko" storage="chara/none.png" jname="男" color="#e2d4ff"]
[chara_new name="father" storage="chara/father_base.png" jname="父" color="#f6dc96"]
[chara_face name="father" face="base" storage="chara/father_base.png"]
[chara_face name="father" face="futsu" storage="chara/father_base.png"]
[chara_face name="father" face="owarai" storage="chara/father_owarai.png"]
[chara_new name="shosei" storage="chara/none.png" jname="書生" color="#f2ead8"]
[chara_new name="shafu" storage="chara/none.png" jname="車夫" color="#f2ead8"]
[chara_new name="nigaoe" storage="chara/none.png" jname="似顔絵描き" color="#f2ead8"]
[chara_new name="kudamono" storage="chara/none.png" jname="果物屋" color="#f2ead8"]


*scene_1
;屋敷で縁談
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_yashiki.jpg" time="0"]
[mask_off time="500"]
[playbgm storage="yashiki.ogg" loop="true" fadein="true" time="1000"]
帝都のはずれ、丘の上に建つ白い洋館。[p]
市電の会社を営む、花小路家のお屋敷である。[p]
[chara_show name="chizuru" face="futsu" left="223" top="127" time="500" wait="false"]
[chara_show name="father" face="base" left="734" top="27" time="500" wait="false"]
[wait time="500"]
#father
[playse storage="voice/father_01_01.ogg" buf="1" clear="true"]
千鶴、喜べ。おまえの縁談が決まったぞ[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_01.ogg" buf="1" clear="true"]
……縁談、でございますか[p]
#father
[playse storage="voice/father_01_02.ogg" buf="1" clear="true"]
鷲尾銀行の三男坊だ。市電の線路を延ばすには、銀行と仲良くしておかねばならんからな。わっはっは[p]
[chara_mod name="chizuru" face="honne" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_02.ogg" buf="1" clear="true"]
お父様。わたくし、その方にお会いしたこともございませんわ[p]
#father
[playse storage="voice/father_01_03.ogg" buf="1" clear="true"]
会わずともよい。わしが会った。なかなかの好青年だったぞ[p]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_03.ogg" buf="1" clear="true"]
お父様が恋をなさるわけではございませんでしょう[p]
[chara_mod name="father" face="owarai" time="500" wait="false"]
[wait time="500"]
#father
[playse storage="voice/father_01_04.ogg" buf="1" clear="true"]
わっはっは、うまいことを言う[p]
#
父は笑うだけで、取り合わない。こういうとき、父はいつも商談と同じ顔をしている。[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
千鶴は胸に抱いた本を、きゅっと握った。[p]
書斎の本は、ほとんど読みつくした。恋物語も、帝都の案内書も、新聞の事件記事を集めた本も。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_04.ogg" buf="1" clear="true"]
わたくし、一度でいいから、自分で選んだ方と恋をしてみたいのです。本の中ではなく、本物の街で[p]
[chara_mod name="father" face="futsu" time="500" wait="false"]
[wait time="500"]
#father
[playse storage="voice/father_01_05.ogg" buf="1" clear="true"]
街だと？　ならん、ならん[p]
[playse storage="voice/father_01_06.ogg" buf="1" clear="true"]
あそこは人が多い。スリも出る。近ごろは人さらいまで出るというではないか[p]
[playse storage="voice/father_01_07.ogg" buf="1" clear="true"]
ひとりで外へなど、とんでもない。……まあ、腕の立つ護衛でもおれば、話は別だがな[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_05.ogg" buf="1" clear="true"]
護衛……[p]
#father
[playse storage="voice/father_01_08.ogg" buf="1" clear="true"]
さて、わしは会社へ行く。縁談の席は来週の日曜だ。着物を選んでおきなさい[p]
[chara_hide name="father" time="500" wait="false"]
[wait time="500"]
#
扉が閉まる。広い部屋に、千鶴ひとりが残された。[p]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_01_06.ogg" buf="1" clear="true"]
……来週の日曜。でしたら、今日はまだ、わたくしの日ですわね[p]

*scene_2
;屋敷を抜け出す
#
十時十分、女中頭が二階の廊下を見回る。[p]
十時十五分、庭師が裏庭の水まきを終えて、納屋へ戻る。[p]
そこから十時二十分までの五分間、裏口を見ている者は誰もいない。[p]
毎日、窓から眺めていれば、それくらいは覚えてしまう。[p]
#chizuru
[playse storage="voice/chizuru_02_01.ogg" buf="1" clear="true"]
本に書いてあった通りですわ。計画とは、観察の積み重ねである、と[p]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
#
千鶴は裏口の扉をそっと開けて、外の光の中へ飛び出した。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_02_02.ogg" buf="1" clear="true"]
行ってまいります。……どなたにも、聞こえていないでしょうけれど[p]

*scene_3
;街でナンパ
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_machi.jpg" time="0"]
[mask_off time="500"]
[playbgm storage="machi.ogg" loop="true" fadein="true" time="1000"]
#
チンチン、と鐘を鳴らして、路面電車が目の前を走っていく。[p]
[chara_show name="chizuru" face="hashagu" left="223" top="127" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03_01.ogg" buf="1" clear="true"]
動いておりますわ……！　本の挿絵より、ずっと大きい！[p]
#
洋品店のショーウィンドウ、ミルクホールの看板、新聞を売る少年の声。[p]
どれもこれも、初めて見るものばかりだ。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03_02.ogg" buf="1" clear="true"]
いけない、見とれている場合ではありませんわ。今日の目的は、恋です[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#
千鶴は、恋物語で覚えた心得を思い出す。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03_03.ogg" buf="1" clear="true"]
出会いのきっかけは、まず手みやげから。……手みやげ、手みやげ[p]
#kudamono
[playse storage="voice/kudamono_03_01.ogg" buf="1" clear="true"]
お嬢ちゃん、林檎どうだい。今朝とれたての、甘いやつだよ[p]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03_04.ogg" buf="1" clear="true"]
まあ！　それをくださいまし。ええと……五つ[p]
#kudamono
[playse storage="voice/kudamono_03_02.ogg" buf="1" clear="true"]
い、五つ！？[p]
#
両腕いっぱいの林檎を抱えて、千鶴は大通りを見わたした。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03_05.ogg" buf="1" clear="true"]
さて。どなたに声をかけましょう[p]
#
どなたに声をかける？
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="176" text="本屋の前で本を読んでいる書生さん" target="*choice1_1"]
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="244" text="人だかりのけんかを止めていた車夫さん" target="*choice1_2"]
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="312" text="道ばたの似顔絵描きさん" target="*choice1_3"]
[s]

*choice1_1
[cm]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03a_01.ogg" buf="1" clear="true"]
あの。その本、『月下の航海記』の下巻ではございませんか[p]
#shosei
[playse storage="voice/shosei_03a_01.ogg" buf="1" clear="true"]
えっ。そうですけど……よくご存じですね[p]
#chizuru
[playse storage="voice/chizuru_03a_02.ogg" buf="1" clear="true"]
わたくしも読みましたの。三章の嵐の場面、すばらしいですわよね。船長が帆柱にしがみついて[p]
#shosei
[playse storage="voice/shosei_03a_02.ogg" buf="1" clear="true"]
そうそう！　あそこで船長が泣くんですよね。僕も泣きました[p]
#chizuru
[playse storage="voice/chizuru_03a_03.ogg" buf="1" clear="true"]
わかりますわ！[p]
#
話は弾んだ。それはもう、驚くほど弾んだ。[p]
気づけば半時間、二人は本の話だけをしていた。[p]
#shosei
[playse storage="voice/shosei_03a_03.ogg" buf="1" clear="true"]
いやあ、楽しかった。こんなに話の合う人は初めてです[p]
#chizuru
[playse storage="voice/chizuru_03a_04.ogg" buf="1" clear="true"]
わたくしもですわ。あの、よろしければ、このあと[p]
#shosei
[playse storage="voice/shosei_03a_04.ogg" buf="1" clear="true"]
あ、下巻の続きを今夜中に読みたいので。じゃあ、また本屋で！[p]
#
書生は本を抱えて、軽やかに去っていった。[p]
千鶴の手には、渡しそびれた林檎がひとつ残った。[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03a_05.ogg" buf="1" clear="true"]
……本のお話しか、していませんでしたわね[p]
[jump target="*choice1_end"]

*choice1_2
[cm]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
人だかりの真ん中で、二人の男が胸ぐらをつかみ合っていた。[p]
そこへ、たくましい車夫がひとり、ずいと割って入る。[p]
#shafu
[playse storage="voice/shafu_03b_01.ogg" buf="1" clear="true"]
よしな、よしな。昼間っから、みっともねえ[p]
#
車夫が二人の腕をひょいとつかむと、けんかはあっけなく終わった。[p]
#chizuru
[playse storage="voice/chizuru_03b_01.ogg" buf="1" clear="true"]
なんて頼もしい方……！[p]
[playse storage="voice/chizuru_03b_02.ogg" buf="1" clear="true"]
あの！　お見事でしたわ。これ、お礼のしるしに[p]
#shafu
[playse storage="voice/shafu_03b_02.ogg" buf="1" clear="true"]
お礼？　俺は何もしてねえよ。それより、そんなに林檎を抱えてたら重いだろ。気をつけて帰んな[p]
#chizuru
[playse storage="voice/chizuru_03b_03.ogg" buf="1" clear="true"]
あの、お名前を[p]
#shafu
[playse storage="voice/shafu_03b_03.ogg" buf="1" clear="true"]
名乗るほどのもんじゃねえ。おっと、お客だ。毎度！[p]
#
車夫は人力車を引いて、あっという間に通りの向こうへ消えた。[p]
林檎は、ひとつも減っていない。[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03b_04.ogg" buf="1" clear="true"]
……受け取ってすら、いただけませんでしたわ[p]
[jump target="*choice1_end"]

*choice1_3
[cm]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
#nigaoe
[playse storage="voice/nigaoe_03c_01.ogg" buf="1" clear="true"]
似顔絵、一枚十銭。お嬢さん、描いていくかい[p]
#chizuru
[playse storage="voice/chizuru_03c_01.ogg" buf="1" clear="true"]
まあ、お願いいたしますわ。……それで、描いていただくあいだに、少しお話を[p]
#nigaoe
[playse storage="voice/nigaoe_03c_02.ogg" buf="1" clear="true"]
はいはい。じっとしててね[p]
#
絵描きは、さらさらと筆を走らせる。[p]
ときどき千鶴の顔と、着物と、白い手袋をじっと見た。[p]
#nigaoe
[playse storage="voice/nigaoe_03c_03.ogg" buf="1" clear="true"]
はい、できあがり[p]
#
紙の上では、千鶴が澄ました顔で座っていた。[p]
その背景に、なぜか大きな洋館が描いてある。[p]
#chizuru
[playse storage="voice/chizuru_03c_02.ogg" buf="1" clear="true"]
あの、うしろのお屋敷は[p]
#nigaoe
[playse storage="voice/nigaoe_03c_04.ogg" buf="1" clear="true"]
お嬢さん、いいとこの子でしょ。手袋も、しゃべり方も、隠せてないよ[p]
[playse storage="voice/nigaoe_03c_05.ogg" buf="1" clear="true"]
悪いこと言わないから、早くおうちに帰りな。このへん、近ごろ人さらいが出るって噂だからさ[p]
[chara_mod name="chizuru" face="honne" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_03c_03.ogg" buf="1" clear="true"]
わ、わたくしはただ、お話を……[p]
#nigaoe
[playse storage="voice/nigaoe_03c_06.ogg" buf="1" clear="true"]
はい、十銭ね。毎度あり[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
#
似顔絵だけが、千鶴の手元に残った。[p]
#chizuru
[playse storage="voice/chizuru_03c_04.ogg" buf="1" clear="true"]
……子ども扱い、されてしまいましたわ[p]
[jump target="*choice1_end"]

*choice1_end
そのあとも、千鶴は何人にも声をかけた。[p]
帽子屋の店員には、帽子をすすめられた。巡査には、迷子だと思われた。お茶屋の若旦那には、お茶を一杯ごちそうになって、それきりだった。[p]
[chara_mod name="chizuru" face="kangaeru" time="500" wait="false"]
[wait time="500"]
気がつけば、日が傾いていた。[p]
#chizuru
[playse storage="voice/chizuru_03_06.ogg" buf="1" clear="true"]
みなさん、親切でしたわ。でも……[p]
[chara_mod name="chizuru" face="honne" time="500" wait="false"]
[wait time="500"]
[playse storage="voice/chizuru_03_07.ogg" buf="1" clear="true"]
どなたも、わたくしの手を取ってはくださいませんでしたわね[p]
#
腕の中の林檎は、ひとつも減っていなかった。[p]

*scene_4
;人さらいが声をかけてくる
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_yugure.jpg" time="0"]
[mask_off time="500"]
[fadeoutbgm time="2000"]
人通りの少ない、川沿いの道。[p]
そろそろ帰ろうか、と千鶴が思いはじめたときだった。[p]
#otoko
[playse storage="voice/tetsuji_04_01.ogg" buf="1" clear="true"]
――お嬢さん[p]
[chara_show name="chizuru" face="futsu" left="223" top="127" time="500" wait="false"]
[chara_show name="tetsuji" face="sugomu" left="601" top="27" time="500" wait="false"]
[wait time="500"]
#
振り返ると、つば広の帽子に黒いマントの男が立っていた。[p]
細い体に、すり減った靴。帽子の影で、目つきだけがやけに鋭い。[p]
#otoko
[playse storage="voice/tetsuji_04_02.ogg" buf="1" clear="true"]
道に迷ったんだろう。じきに日も暮れる。お屋敷まで、送ってやろうか[p]
#
千鶴は、ぱちりとまばたきをした。[p]
#chizuru
[playse storage="voice/chizuru_04_01.ogg" buf="1" clear="true"]
……声を、かけていただけましたわ[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#otoko
[playse storage="voice/tetsuji_04_03.ogg" buf="1" clear="true"]
は？[p]
[chara_mod name="chizuru" face="hashagu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_04_02.ogg" buf="1" clear="true"]
今日はいちにち、わたくしから声をかけてばかりでしたの。殿方のほうから声をかけていただいたのは、はじめてです！[p]
#otoko
[playse storage="voice/tetsuji_04_04.ogg" buf="1" clear="true"]
お、おう。そりゃあ、よかったな[p]
#
男は少したじろいだ。どうやら、思っていた返事と違ったらしい。[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_04_03.ogg" buf="1" clear="true"]
でも、ひとつだけ。どうして、わたくしがお屋敷に住んでいると、おわかりになったのですか[p]
#otoko
[playse storage="voice/tetsuji_04_05.ogg" buf="1" clear="true"]
そ、そりゃあ、その、見りゃわかる。手袋とか[p]
#chizuru
[playse storage="voice/chizuru_04_04.ogg" buf="1" clear="true"]
まあ。手袋ひとつで、わかってしまうものですのね[p]
#otoko
[playse storage="voice/tetsuji_04_06.ogg" buf="1" clear="true"]
と、とにかく行こうぜ。こっちだ[p]
#chizuru
[playse storage="voice/chizuru_04_05.ogg" buf="1" clear="true"]
お待ちになって。お手を、拝借できます？[p]
#otoko
[playse storage="voice/tetsuji_04_07.ogg" buf="1" clear="true"]
手？[p]
#
男が思わず両手を出すと、千鶴はそこへ林檎を五つ、どさりとのせた。[p]
#otoko
[playse storage="voice/tetsuji_04_08.ogg" buf="1" clear="true"]
おわっ、重っ……！[p]
#chizuru
[playse storage="voice/chizuru_04_06.ogg" buf="1" clear="true"]
ありがとうございます。ずっと抱えていて、腕がしびれておりましたの[p]
#
男の両手は、林檎でふさがった。[p]

*scene_5
;見抜く
#chizuru
[playse storage="voice/chizuru_05_01.ogg" buf="1" clear="true"]
あら？[p]
#
林檎をのせた、男の指先。[p]
爪のあいだが、うっすらと紫色に染まっている。[p]
千鶴の頭の中で、書斎の本棚がぱらぱらとめくれた。新聞の事件記事を集めた本、『帝都犯罪実録』。[p]
紫のしみが、なかなか落ちない薬。かがせると、人がぐっすり眠ってしまう薬。[p]
そして、いちばんよくある手口。親切な道案内のふりをして、ひと気のない道へ連れていく。[p]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[wait time="500"]
千鶴は、にっこりと笑ったままだった。[p]
けれど頭の中では、もう答えが出ていた。[p]
#chizuru
[playse storage="voice/chizuru_05_02.ogg" buf="1" clear="true"]
あなた、人さらいですわね[p]
#otoko
[playse storage="voice/tetsuji_05_01.ogg" buf="1" clear="true"]
……な、なにを言って[p]
#chizuru
[playse storage="voice/chizuru_05_03.ogg" buf="1" clear="true"]
爪の紫のしみ。あれは眠り薬の色ですわ。それに、親切な道案内のふりをして、ひと気のない道へ連れていく。本に載っていた手口と、そっくりそのままです[p]
[chara_mod name="tetsuji" face="sugomu" time="500" wait="false"]
[wait time="500"]
#otoko
[playse storage="voice/tetsuji_05_02.ogg" buf="1" clear="true"]
……だったら、どうする。ここで大声でも出すか[p]
#chizuru
[playse storage="voice/chizuru_05_04.ogg" buf="1" clear="true"]
いいえ。出しませんわ[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#otoko
[playse storage="voice/tetsuji_05_03.ogg" buf="1" clear="true"]
……は？[p]
#chizuru
[playse storage="voice/chizuru_05_05.ogg" buf="1" clear="true"]
だってあなた、さっきから手が震えていらっしゃいますもの[p]
#
男の手の上で、林檎がかたかたと鳴っていた。[p]
#chizuru
[playse storage="voice/chizuru_05_06.ogg" buf="1" clear="true"]
靴も、ずいぶんすり減っていますわね。きっと、うまくいかずに逃げてばかり。……本当は、このお仕事、向いていらっしゃらないのでは？[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#otoko
[playse storage="voice/tetsuji_05_04.ogg" buf="1" clear="true"]
う、うるせえ！　余計なお世話だ！[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#
図星だったらしい。[p]
#chizuru
[playse storage="voice/chizuru_05_07.ogg" buf="1" clear="true"]
お名前は？[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#otoko
[playse storage="voice/tetsuji_05_05.ogg" buf="1" clear="true"]
なんで人さらいが名乗るんだよ[p]
[chara_mod name="tetsuji" face="kuzure" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_05_08.ogg" buf="1" clear="true"]
お名前は？[p]
#otoko
[playse storage="voice/tetsuji_05_06.ogg" buf="1" clear="true"]
……熊谷。熊谷鉄次[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_05_09.ogg" buf="1" clear="true"]
鉄次さん。わたくしは、千鶴と申します[p]

*scene_6
;交渉して雇う
[playbgm storage="kosho.ogg" loop="true" fadein="true" time="1000"]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
[playse storage="voice/chizuru_06_01.ogg" buf="1" clear="true"]
鉄次さん。ご提案がございますの[p]
#tetsuji
[playse storage="voice/tetsuji_06_01.ogg" buf="1" clear="true"]
……提案？[p]
#chizuru
[playse storage="voice/chizuru_06_02.ogg" buf="1" clear="true"]
わたくしを、お屋敷まで送ってくださいまし。護衛として、あなたを雇います[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06_02.ogg" buf="1" clear="true"]
はあ！？　俺は、あんたをさらおうとしてた人間だぞ[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_06_03.ogg" buf="1" clear="true"]
ええ。ですから、お願いしているのです[p]
[playse storage="voice/chizuru_06_04.ogg" buf="1" clear="true"]
人をさらう方なら、人をさらう方の手口も、裏道も、よくご存じでしょう？　護衛にこれほど向いた方はおりませんわ[p]
#tetsuji
[playse storage="voice/tetsuji_06_03.ogg" buf="1" clear="true"]
……罠だろ。屋敷に着いたとたん、巡査がずらっと並んでるんだろ[p]
#chizuru
[playse storage="voice/chizuru_06_05.ogg" buf="1" clear="true"]
まあ、疑り深い。では、条件をお出しします[p]
#
鉄次さんに差し出すのは？
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="176" text="お金（今日のお小遣いを全部）" target="*choice2_1"]
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="244" text="お仕事（まっとうな働き口）" target="*choice2_2"]
[glink graphic="ui/choice_idle.png" enterimg="ui/choice_hover.png" width="790" height="52" size="22" x="245" y="312" text="秘密（人さらいのことは誰にも言わない）" target="*choice2_3"]
[s]

*choice2_1
[cm]
#chizuru
[playse storage="voice/chizuru_06a_01.ogg" buf="1" clear="true"]
お給金をお支払いします。こちらを[p]
#
千鶴が巾着を逆さにすると、銀貨と銅貨が、鉄次の抱えた林檎の上にじゃらじゃらと降ってきた。[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06a_01.ogg" buf="1" clear="true"]
ちょ、おい、林檎の上に……いくらあるんだ、これ[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_06a_02.ogg" buf="1" clear="true"]
今日のお小遣いの残りですわ。林檎を五つ買いましたので、少し減ってしまいましたけれど[p]
#tetsuji
[playse storage="voice/tetsuji_06a_02.ogg" buf="1" clear="true"]
……俺のひと月分より多いじゃねえか[p]
#chizuru
[playse storage="voice/chizuru_06a_03.ogg" buf="1" clear="true"]
では、ひと月分のお給金を、前払いということで[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06a_03.ogg" buf="1" clear="true"]
ひと月も雇う気かよ！？[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
[jump target="*choice2_end"]

*choice2_2
[cm]
#chizuru
[playse storage="voice/chizuru_06b_01.ogg" buf="1" clear="true"]
お仕事を、ご紹介いたします[p]
#tetsuji
[playse storage="voice/tetsuji_06b_01.ogg" buf="1" clear="true"]
仕事？[p]
#chizuru
[playse storage="voice/chizuru_06b_02.ogg" buf="1" clear="true"]
人さらいより、ずっとまっとうなお仕事を。わたくしの家なら、働き口はいくらでもございますわ[p]
#tetsuji
[playse storage="voice/tetsuji_06b_02.ogg" buf="1" clear="true"]
……あんたの家って、いったい何なんだよ[p]
#chizuru
[playse storage="voice/chizuru_06b_03.ogg" buf="1" clear="true"]
それは、着いてのお楽しみです[p]
#tetsuji
[playse storage="voice/tetsuji_06b_03.ogg" buf="1" clear="true"]
楽しみにできる気がしねえ……[p]
[jump target="*choice2_end"]

*choice2_3
[cm]
#chizuru
[playse storage="voice/chizuru_06c_01.ogg" buf="1" clear="true"]
今日のことは、どなたにも申しません[p]
#tetsuji
[playse storage="voice/tetsuji_06c_01.ogg" buf="1" clear="true"]
……誰にも？[p]
#chizuru
[playse storage="voice/chizuru_06c_02.ogg" buf="1" clear="true"]
ええ。巡査さんにも、新聞屋さんにも。わたくしを無事に送り届けてくだされば、今日のあなたは人さらいではなく、ただの親切な護衛です[p]
#tetsuji
[playse storage="voice/tetsuji_06c_02.ogg" buf="1" clear="true"]
……それ、断ったらどうなる[p]
#chizuru
[playse storage="voice/chizuru_06c_03.ogg" buf="1" clear="true"]
あら。大きな声の出し方なら、本で読みましたわ[p]
[chara_mod name="tetsuji" face="tsukkomi" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06c_03.ogg" buf="1" clear="true"]
脅しじゃねえか！[p]
[jump target="*choice2_end"]

*choice2_end
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06_04.ogg" buf="1" clear="true"]
……なあ。なんでそこまでして、俺なんだ[p]
[playse storage="voice/tetsuji_06_05.ogg" buf="1" clear="true"]
あんたなら、もっとまともな護衛がいくらでも雇えるだろ。なんで、よりによって人さらいを[p]
[chara_mod name="chizuru" face="honne" time="500" wait="false"]
[wait time="500"]
[playbgm storage="honne.ogg" loop="true" fadein="true" time="1000"]
#
千鶴は少しだけ黙った。[p]
それから、お嬢様の笑顔を、そっとしまった。[p]
#chizuru
[playse storage="voice/chizuru_06_06.ogg" buf="1" clear="true"]
わたくし、今日、たくさんの方に声をかけましたの[p]
[playse storage="voice/chizuru_06_07.ogg" buf="1" clear="true"]
みなさん、いい方でした。お話をしてくださって、心配もしてくださいました。でも、それだけでした[p]
[playse storage="voice/chizuru_06_08.ogg" buf="1" clear="true"]
わたくしの手を取って、どこかへ行こうとしてくださった方は、ひとりもいなかった[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
[playse storage="voice/chizuru_06_09.ogg" buf="1" clear="true"]
あなたが、はじめてです。あなたのほうから、わたくしに声をかけてくださった[p]
#tetsuji
[playse storage="voice/tetsuji_06_06.ogg" buf="1" clear="true"]
……さらうためにな[p]
#chizuru
[playse storage="voice/chizuru_06_10.ogg" buf="1" clear="true"]
ええ。理由のほうは、まったくいただけませんけれど[p]
[playse storage="voice/chizuru_06_11.ogg" buf="1" clear="true"]
それでも、うれしかったのです。ですから、あなたを手放すつもりはございません[p]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[wait time="500"]
[playse storage="voice/chizuru_06_12.ogg" buf="1" clear="true"]
今度は、わたくしがあなたを連れて帰ります[p]
#
鉄次は、しばらく口をぱくぱくさせていた。[p]
それから林檎をひとつ手に取って、がぶりとかじった。[p]
[playbgm storage="kosho.ogg" loop="true" fadein="true" time="1000"]
#tetsuji
[playse storage="voice/tetsuji_06_07.ogg" buf="1" clear="true"]
……わかったよ。送るだけだ。屋敷の前まで送ったら、俺は消えるからな[p]
#chizuru
[playse storage="voice/chizuru_06_13.ogg" buf="1" clear="true"]
ええ、それで結構ですわ。……ひとまずは[p]
#tetsuji
[playse storage="voice/tetsuji_06_08.ogg" buf="1" clear="true"]
今、ひとまずって言ったか？[p]
#
夕暮れの川沿いを、二人は並んで歩きはじめた。[p]
#tetsuji
[playse storage="voice/tetsuji_06_09.ogg" buf="1" clear="true"]
で、屋敷ってのはどこだ。名字くらい教えろ[p]
#chizuru
[playse storage="voice/chizuru_06_14.ogg" buf="1" clear="true"]
花小路と申します[p]
#tetsuji
[playse storage="voice/tetsuji_06_10.ogg" buf="1" clear="true"]
……はなこうじ？[p]
[playse storage="voice/tetsuji_06_11.ogg" buf="1" clear="true"]
花小路って、あの、市電の会社の、花小路か……？[p]
#chizuru
[playse storage="voice/chizuru_06_15.ogg" buf="1" clear="true"]
父の会社ですわ。この道の線路も、父が引きましたの[p]
[chara_mod name="tetsuji" face="kuzure" time="500" wait="false"]
[wait time="500"]
#
鉄次の手から、林檎がひとつ転げ落ちた。[p]
#tetsuji
[playse storage="voice/tetsuji_06_12.ogg" buf="1" clear="true"]
帝都でいちばんの金持ちの娘じゃねえか……そんなのに手ぇ出そうとしてたのか、俺……[p]
#chizuru
[playse storage="voice/chizuru_06_16.ogg" buf="1" clear="true"]
ええ。ですから今日のあなたは、運がよかったのですわ。わたくしに見抜かれて[p]
[chara_mod name="tetsuji" face="komaru" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_06_13.ogg" buf="1" clear="true"]
どういう理屈だよ……[p]

*scene_7
;屋敷に着く
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_yashiki_soto.jpg" time="0"]
[mask_off time="500"]
[playbgm storage="ochi.ogg" loop="true" fadein="true" time="1000"]
#
丘の上の白い洋館。[p]
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_genkan.jpg" time="0"]
[mask_off time="500"]
その門をくぐったとたん、うしろで重い鉄の門が、がしゃんと閉まった。[p]
[chara_show name="chizuru" face="shitataka" left="223" top="127" time="500" wait="false"]
[chara_show name="tetsuji" face="komaru" left="732" top="27" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_07_01.ogg" buf="1" clear="true"]
……おい。門、閉まったぞ[p]
#chizuru
[playse storage="voice/chizuru_07_01.ogg" buf="1" clear="true"]
ええ。閉まりましたわね[p]
#
玄関の前には、使用人たちがずらりと並んでいた。[p]
その真ん中に、口ひげの紳士が立っている。[p]
[chara_show name="father" face="base" left="470" top="27" time="500" wait="false"]
[wait time="500"]
#father
[playse storage="voice/father_07_01.ogg" buf="1" clear="true"]
千鶴！　どこへ行っておった。屋敷じゅう大騒ぎだったのだぞ[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_07_02.ogg" buf="1" clear="true"]
ごめんなさい、お父様。街へ出ておりました[p]
#father
[playse storage="voice/father_07_02.ogg" buf="1" clear="true"]
ひとりで外へなど、とんでもないと言っただろう！[p]
[chara_mod name="chizuru" face="shitataka" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_07_03.ogg" buf="1" clear="true"]
ええ。ですから、ひとりではございませんわ[p]
#
千鶴は、鉄次の腕に、するりと手をかけた。[p]
#chizuru
[playse storage="voice/chizuru_07_04.ogg" buf="1" clear="true"]
護衛を連れてまいりました。お父様、おっしゃいましたわよね。腕の立つ護衛がいれば、話は別だと[p]
#father
[playse storage="voice/father_07_03.ogg" buf="1" clear="true"]
……む[p]
#
父は鉄次を、帽子のてっぺんから、すり減った靴の先まで、じろりと眺めた。[p]
商談の相手を値踏みするときの目だった。[p]
#father
[playse storage="voice/father_07_04.ogg" buf="1" clear="true"]
おまえ、名は[p]
#tetsuji
[playse storage="voice/tetsuji_07_02.ogg" buf="1" clear="true"]
く、熊谷鉄次……です[p]
#father
[playse storage="voice/father_07_05.ogg" buf="1" clear="true"]
ふむ。いい目をしておる。まるで、人をさらう者の目だ[p]
[chara_mod name="tetsuji" face="kuzure" time="500" wait="false"]
[wait time="500"]
#tetsuji
[playse storage="voice/tetsuji_07_03.ogg" buf="1" clear="true"]
ひっ[p]
[chara_mod name="father" face="owarai" time="500" wait="false"]
[wait time="500"]
#father
[playse storage="voice/father_07_06.ogg" buf="1" clear="true"]
……わっはっは、冗談だ！　護衛はそのくらい鋭い目でないと務まらん[p]
[playse storage="voice/father_07_07.ogg" buf="1" clear="true"]
気に入った。熊谷とやら、今日からおまえは千鶴の護衛だ。給金ははずむぞ。住みこみでな[p]
#tetsuji
[playse storage="voice/tetsuji_07_04.ogg" buf="1" clear="true"]
す、住みこみ！？　いや、俺は送るだけで……[p]
#father
[playse storage="voice/father_07_08.ogg" buf="1" clear="true"]
遠慮するな。部屋はいくらでもある。おい、熊谷くんの荷物を運んでやれ[p]
#
使用人たちが、さっと鉄次を取り囲んだ。[p]
帽子とマントが、あっという間に預かられていく。[p]
#tetsuji
[playse storage="voice/tetsuji_07_05.ogg" buf="1" clear="true"]
ちょっ、待っ……俺の帽子……！[p]
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="cg_ochi.jpg" time="0"]
[mask_off time="500"]
#
夕日の差しこむ玄関で、使用人に囲まれて固まる人さらい。[p]
その横で、お嬢様がにっこりと笑っていた。[p]
その日、帝都で一件の人さらいがあった。[p]
さらわれたのは、人さらいのほうだった。[p]
[mask time="500" color="0x000000"]
[chara_hide_all time="0" wait="true"]
[bg storage="bg_genkan.jpg" time="0"]
[mask_off time="500"]
[chara_show name="chizuru" face="shitataka" left="223" top="127" time="500" wait="false"]
[chara_show name="tetsuji" face="komaru" left="732" top="27" time="500" wait="false"]
[chara_show name="father" face="base" left="470" top="27" time="500" wait="false"]
[wait time="500"]
#chizuru
[playse storage="voice/chizuru_07_05.ogg" buf="1" clear="true"]
お父様。来週の縁談には、護衛と一緒に参りますわ。お相手がどんな方か、わたくし、自分の目で確かめてまいります[p]
#father
[playse storage="voice/father_07_09.ogg" buf="1" clear="true"]
む……確かめる、とな。……まあよい。会えば、きっと気に入るはずだ[p]
#chizuru
[playse storage="voice/chizuru_07_06.ogg" buf="1" clear="true"]
それから、恋のほうも。これから、ゆっくり探しますわ[p]
[chara_mod name="chizuru" face="futsu" time="500" wait="false"]
[wait time="500"]
#
千鶴は、鉄次のほうを向いた。[p]
#chizuru
[playse storage="voice/chizuru_07_07.ogg" buf="1" clear="true"]
明日も、お付き合いくださいましね。鉄次さん[p]
#tetsuji
[playse storage="voice/tetsuji_07_06.ogg" buf="1" clear="true"]
……へい。お嬢[p]
[wait time="1000"]
[jump storage="ending.ks"]
