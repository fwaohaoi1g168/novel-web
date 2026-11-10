/*
 * 読み込み中の画面（ブラウザ版だけ）
 *
 * ティラノは、ブラウザで最初に曲を鳴らすところでクリックを待ち、そのあいだ画面に何も出さない。
 * そこで、タイトルの絵と曲を先に読み込みながら「読み込み中… ○%」を出し、
 * 読み終わったら「クリックしてはじめる」に変える。押されたら、ティラノに音の準備ができたと伝えて消える。
 *
 * 使い方（index.html の </body> の前）：
 *   <script src="./data/others/loading/loading.js"
 *           data-bg="./data/bgimage/title.png" data-bgm="./data/bgm/title.mp3" data-color="#000"></script>
 */
(function () {
  "use strict";

  var me = document.currentScript;
  var BG = me.getAttribute("data-bg");
  var BGM = me.getAttribute("data-bgm");
  var COLOR = me.getAttribute("data-color") || "#000";
  var touch = window.matchMedia && window.matchMedia("(pointer: coarse)").matches;

  var css =
    "#web_loading{position:fixed;inset:0;z-index:2147483000;background:" + COLOR + ";display:flex;align-items:center;justify-content:center;transition:opacity .5s;font-family:'Hiragino Kaku Gothic ProN','Yu Gothic','Meiryo',sans-serif;}" +
    "#web_loading .wl_box{position:relative;width:min(100vw,177.78vh);aspect-ratio:16/9;background:#000 center/cover no-repeat;}" +
    "#web_loading .wl_box::after{content:'';position:absolute;inset:0;background:rgba(0,0,0,.45);transition:background .6s;}" +
    "#web_loading.wl_ready .wl_box::after{background:rgba(0,0,0,.15);}" +
    "#web_loading .wl_panel{position:absolute;left:50%;bottom:9%;transform:translateX(-50%);z-index:1;width:min(64%,560px);box-sizing:border-box;padding:14px 24px 16px;border-radius:12px;background:rgba(0,0,0,.6);text-align:center;color:#fff;text-shadow:0 1px 3px rgba(0,0,0,.9);}" +
    "#web_loading .wl_text{font-size:clamp(16px,3.4vmin,30px);letter-spacing:.08em;margin-bottom:10px;}" +
    "#web_loading .wl_sub{font-size:clamp(12px,2.2vmin,18px);opacity:.85;margin-top:8px;display:none;}" +
    "#web_loading .wl_bar{height:4px;border-radius:2px;background:rgba(255,255,255,.25);overflow:hidden;}" +
    "#web_loading .wl_fill{height:100%;width:0;background:#fff;transition:width .2s;}" +
    "#web_loading.wl_ready{cursor:pointer;}" +
    "#web_loading.wl_ready .wl_bar{display:none;}" +
    "#web_loading.wl_ready .wl_sub{display:block;}" +
    "#web_loading.wl_ready .wl_text{animation:wl_blink 1.6s ease-in-out infinite;}" +
    "@keyframes wl_blink{0%,100%{opacity:1}50%{opacity:.45}}";
  var style = document.createElement("style");
  style.textContent = css;
  document.head.appendChild(style);

  var root = document.createElement("div");
  root.id = "web_loading";
  root.innerHTML =
    '<div class="wl_box"><div class="wl_panel">' +
    '<div class="wl_text">読み込み中…</div>' +
    '<div class="wl_bar"><div class="wl_fill"></div></div>' +
    '<div class="wl_sub">音が出ます</div>' +
    "</div></div>";
  document.body.appendChild(root);
  var box = root.querySelector(".wl_box");
  var text = root.querySelector(".wl_text");
  var fill = root.querySelector(".wl_fill");

  // 先に読み込むもの（ティラノがあとで同じファイルを読むときは、ブラウザに残ったものを使う）
  var files = [BG, BGM].filter(Boolean);
  var loaded = {}, total = {};
  function showProgress() {
    var l = 0, t = 0, known = true;
    files.forEach(function (f) {
      l += loaded[f] || 0;
      if (total[f]) t += total[f]; else known = false;
    });
    if (known && t > 0) {
      var p = Math.min(99, Math.floor((l / t) * 100));
      text.textContent = "読み込み中… " + p + "%";
      fill.style.width = p + "%";
    }
  }
  function fetchWithProgress(url) {
    return fetch(url).then(function (res) {
      total[url] = Number(res.headers.get("Content-Length")) || 0;
      if (!res.body || !res.body.getReader) return res.blob();
      var reader = res.body.getReader();
      loaded[url] = 0;
      function pump() {
        return reader.read().then(function (r) {
          if (r.done) return;
          loaded[url] += r.value.length;
          showProgress();
          return pump();
        });
      }
      return pump();
    }).catch(function () { /* 読めなくても、ゲームのほうに任せる */ });
  }

  var pageLoaded = new Promise(function (resolve) {
    if (document.readyState === "complete") resolve();
    else window.addEventListener("load", resolve);
  });
  var bgShown = BG ? new Promise(function (resolve) {
    var img = new Image();
    img.onload = img.onerror = function () { box.style.backgroundImage = "url('" + BG + "')"; resolve(); };
    img.src = BG;
  }) : Promise.resolve();

  Promise.all([pageLoaded, bgShown].concat(files.map(fetchWithProgress))).then(function () {
    // ティラノの準備ができるまで待つ（ふつうはもうできている）
    var tries = 0;
    (function waitTyrano() {
      if ((window.TYRANO && TYRANO.kag && TYRANO.kag.readyAudio) || tries++ > 100) ready();
      else setTimeout(waitTyrano, 100);
    })();
  });

  function ready() {
    fill.style.width = "100%";
    text.textContent = touch ? "タップしてはじめる" : "クリックしてはじめる";
    root.classList.add("wl_ready");
    root.addEventListener("click", start, { once: true });
    document.addEventListener("keydown", onKey);
  }
  function onKey(e) {
    if (e.key === "Enter" || e.key === " ") { e.preventDefault(); root.click(); }
  }

  function start() {
    document.removeEventListener("keydown", onKey);
    try {
      var kag = window.TYRANO && TYRANO.kag;
      if (kag) {
        // 曲のところでもうクリックを待っていたら、その続きを動かす。まだなら、音の準備だけ済ませておく
        if (!kag.tmp.ready_audio) kag.readyAudio();
        if (window.jQuery) jQuery(".tyrano_base").triggerHandler("click.bgm");
      }
    } catch (e) { console.log(e); }
    root.style.opacity = "0";
    root.style.pointerEvents = "none";
    setTimeout(function () { root.remove(); }, 600);
  }
})();
