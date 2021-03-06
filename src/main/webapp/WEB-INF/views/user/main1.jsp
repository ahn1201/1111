<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ec.js"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" async="" src="https://djtflbt20bdde.cloudfront.net/"></script><script src="https://connect.facebook.net/signals/plugins/identity.js?v=2.8.14" async=""></script><script src="https://connect.facebook.net/signals/config/669950873158083?v=2.8.14&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://developers.kakao.com/sdk/js/kakao.min.js" async=""></script><script type="text/javascript">var _rollbarConfig = {"accessToken":"deb700ed4e6645b7807b88cabfd545de","ignoredMessages":["Can't find Clippy.bmp. The end is nigh."],"captureUncaught":true,"captureUnhandledRejections":false,"payload":{"environment":"production"}};</script>
<script type="text/javascript">!function(r){function e(t){if(o[t])return o[t].exports;var n=o[t]={exports:{},id:t,loaded:!1};return r[t].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var o={};return e.m=r,e.c=o,e.p="",e(0)}([function(r,e,o){"use strict";var t=o(1).Rollbar,n=o(2);_rollbarConfig.rollbarJsUrl=_rollbarConfig.rollbarJsUrl||"https://d37gvrvc0wt4s1.cloudfront.net/js/v1.9/rollbar.min.js";var a=t.init(window,_rollbarConfig),i=n(a,_rollbarConfig);a.loadFull(window,document,!_rollbarConfig.async,_rollbarConfig,i)},function(r,e){"use strict";function o(r){return function(){try{return r.apply(this,arguments)}catch(e){try{console.error("[Rollbar]: Internal error",e)}catch(o){}}}}function t(r,e,o){window._rollbarWrappedError&&(o[4]||(o[4]=window._rollbarWrappedError),o[5]||(o[5]=window._rollbarWrappedError._rollbarContext),window._rollbarWrappedError=null),r.uncaughtError.apply(r,o),e&&e.apply(window,o)}function n(r){var e=function(){var e=Array.prototype.slice.call(arguments,0);t(r,r._rollbarOldOnError,e)};return e.belongsToShim=!0,e}function a(r){this.shimId=++c,this.notifier=null,this.parentShim=r,this._rollbarOldOnError=null}function i(r){var e=a;return o(function(){if(this.notifier)return this.notifier[r].apply(this.notifier,arguments);var o=this,t="scope"===r;t&&(o=new e(this));var n=Array.prototype.slice.call(arguments,0),a={shim:o,method:r,args:n,ts:new Date};return window._rollbarShimQueue.push(a),t?o:void 0})}function l(r,e){if(e.hasOwnProperty&&e.hasOwnProperty("addEventListener")){var o=e.addEventListener;e.addEventListener=function(e,t,n){o.call(this,e,r.wrap(t),n)};var t=e.removeEventListener;e.removeEventListener=function(r,e,o){t.call(this,r,e&&e._wrapped?e._wrapped:e,o)}}}var c=0;a.init=function(r,e){var t=e.globalAlias||"Rollbar";if("object"==typeof r[t])return r[t];r._rollbarShimQueue=[],r._rollbarWrappedError=null,e=e||{};var i=new a;return o(function(){if(i.configure(e),e.captureUncaught){i._rollbarOldOnError=r.onerror,r.onerror=n(i);var o,a,c="EventTarget,Window,Node,ApplicationCache,AudioTrackList,ChannelMergerNode,CryptoOperation,EventSource,FileReader,HTMLUnknownElement,IDBDatabase,IDBRequest,IDBTransaction,KeyOperation,MediaController,MessagePort,ModalWindow,Notification,SVGElementInstance,Screen,TextTrack,TextTrackCue,TextTrackList,WebSocket,WebSocketWorker,Worker,XMLHttpRequest,XMLHttpRequestEventTarget,XMLHttpRequestUpload".split(",");for(o=0;o<c.length;++o)a=c[o],r[a]&&r[a].prototype&&l(i,r[a].prototype)}return e.captureUnhandledRejections&&(i._unhandledRejectionHandler=function(r){var e=r.reason,o=r.promise,t=r.detail;!e&&t&&(e=t.reason,o=t.promise),i.unhandledRejection(e,o)},r.addEventListener("unhandledrejection",i._unhandledRejectionHandler)),r[t]=i,i})()},a.prototype.loadFull=function(r,e,t,n,a){var i=function(){var e;if(void 0===r._rollbarPayloadQueue){var o,t,n,i;for(e=new Error("rollbar.js did not load");o=r._rollbarShimQueue.shift();)for(n=o.args,i=0;i<n.length;++i)if(t=n[i],"function"==typeof t){t(e);break}}"function"==typeof a&&a(e)},l=!1,c=e.createElement("script"),d=e.getElementsByTagName("script")[0],p=d.parentNode;c.crossOrigin="",c.src=n.rollbarJsUrl,c.async=!t,c.onload=c.onreadystatechange=o(function(){if(!(l||this.readyState&&"loaded"!==this.readyState&&"complete"!==this.readyState)){c.onload=c.onreadystatechange=null;try{p.removeChild(c)}catch(r){}l=!0,i()}}),p.insertBefore(c,d)},a.prototype.wrap=function(r,e){try{var o;if(o="function"==typeof e?e:function(){return e||{}},"function"!=typeof r)return r;if(r._isWrap)return r;if(!r._wrapped){r._wrapped=function(){try{return r.apply(this,arguments)}catch(e){throw e._rollbarContext=o()||{},e._rollbarContext._wrappedSource=r.toString(),window._rollbarWrappedError=e,e}},r._wrapped._isWrap=!0;for(var t in r)r.hasOwnProperty(t)&&(r._wrapped[t]=r[t])}return r._wrapped}catch(n){return r}};for(var d="log,debug,info,warn,warning,error,critical,global,configure,scope,uncaughtError,unhandledRejection".split(","),p=0;p<d.length;++p)a.prototype[d[p]]=i(d[p]);r.exports={Rollbar:a,_rollbarWindowOnError:t}},function(r,e){"use strict";r.exports=function(r,e){return function(o){if(!o&&!window._rollbarInitialized){var t=window.RollbarNotifier,n=e||{},a=n.globalAlias||"Rollbar",i=window.Rollbar.init(n,r);i._processShimQueue(window._rollbarShimQueue||[]),window[a]=i,window._rollbarInitialized=!0,t.processPayloads()}}}}]);</script>
    <meta charset="utf-8">
    <link rel="dns-prefetch" href="https://dppgjjx7k7m5m.cloudfront.net">
    <link rel="preconnect" href="https://dppgjjx7k7m5m.cloudfront.net">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <title>마음이 지치고 힘드신 분,  "비온 뒤 숲속"으로 오세요~ - 소셜다이닝 집밥</title>
  <meta name="description" content="나를 찾아가는 행복한 심리상담, 가벼운 마음으로 오세요.
('홍대다락방 심리상담'이 남산 성곽마을로 이전하여 '비온 뒤 숲속'으로 바뀌었습니다.)">

  <meta property="fb:app_id" content="498270173519404">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="소셜다이닝 집밥">
  <meta property="og:title" content="마음이 지치고 힘드신 분,  &quot;비온 뒤 숲속&quot;으로 오세요~">
  <meta property="og:url" content="https://www.zipbob.net/p/55e77efee76f6870ab005461">
  <meta property="og:description" content="나를 찾아가는 행복한 심리상담, 가벼운 마음으로 오세요.
('홍대다락방 심리상담'이 남산 성곽마을로 이전하여 '비온 뒤 숲속'으로 바뀌었습니다.)">
  <meta property="og:image" content="https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/90/27/59a5667b532c283a92f27251/p1.jpg">

  <link rel="canonical" href="https://www.zipbob.net/p/55e77efee76f6870ab005461">


    <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-76x76-75f978d2004ffe19de854658ff192836f7dc9dee31641b445ae851de42674ded.png">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-57x57-751ea90282d677d5d69ca59598758e52261e709c2bed4f9b608e75338a4a474e.png" sizes="57x57">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-60x60-ee799a949d31a0bb3878ad9d0aee66b181dac35071c96a792dd7709749a8a9cd.png" sizes="60x60">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-72x72-61e3f27cc9b37326e2e0a521e7f47d275f28ebf718e033b3b30b8f343af01129.png" sizes="72x72">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-76x76-75f978d2004ffe19de854658ff192836f7dc9dee31641b445ae851de42674ded.png" sizes="76x76">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-114x114-6b0fa3aaf6dcdc1bd29a8177bcf0a75aeb40db8d5bc41fd89ff2ca0b3f09f83c.png" sizes="114x114">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-120x120-ce4bb3159562b98bee31bffd6f7eac396cb8568eb834afc3807698abeec1e579.png" sizes="120x120">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-144x144-ae478b60a41066a7291b6babdb8f0b37cc7dcb6a98d453150387ffae243cf074.png" sizes="144x144">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-152x152-245b1d415a2534cdd35a3540afe5d523d0a809fd803ebd80f308935df4113d66.png" sizes="152x152">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-180x180-5b19fc83d0a7d31a6344d9b5089a8aba532102a386bbba2c01e8b394eba9943d.png" sizes="180x180">
    <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/android-icon-192x192-b22fac1302b40a160c815bdbd03b8165ca7179e3df0d3116b59a906bd6fe66f2.png" sizes="192x192">
    <link rel="shortcut icon" type="image/x-icon" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-5401af4a5172d213d979fd8d1976bce7ed311ba4728ee5a9a3cae5e0fd5daa9e.ico">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-32x32-f92f6d44fabb64b1b3d9d28486c621e5660721a5b3575272217b643d36fb916f.png" sizes="32x32">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-96x96-e5712fb2d9d97088a89266c5a8d94416d5b1d2f86a635c9c29b89056b618ac4b.png" sizes="96x96">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-16x16-d573deb7b18c35d5a501ff957c15fb2d5b8605c44d075f117dc9149436b49360.png" sizes="16x16">

    <meta name="format-detection" content="telephone=no">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="theme-color" content="#ff3b30">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">

    <meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="BUpP1y3g3qcdqbk40gae1NuVEM37jkuFksNewuY8OnsWxnnZgr8nwwVqaTYOnet29palr+kx0g/IOZ2b79mZug==">
    <meta name="action-cable-url" content="/cable">

    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css">
    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
    <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css"> -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="https://dppgjjx7k7m5m.cloudfront.net/assets/main-76d3720d8b56eadcc8cf64fb74197c46099fde4352a18a5f25edc0c806c1a237.js" crossorigin="anonymous"></script>
    <script src="https://dppgjjx7k7m5m.cloudfront.net/assets/web-9b4e26f38626985de32bb998ccfaca8e754a6117f6ec13079cd174715392de22.js" crossorigin="anonymous"></script>

    <script>
  var loc = window.location;
  if (loc.hash) {
    var path = loc.hash.substring(1);
    var search = loc.search;
    if ((path.indexOf('/p/') !== -1) || (path.indexOf('/picks/') !== -1) || (path.indexOf('/settings/account') !== -1)) {
      window.location = path + search;
    } else if ((path.indexOf('/searchs') !== -1)) {
      window.location = '/s' + search;
    }
  }
</script>

    <script>
  var $buoop = {
    vs: { i: 10, f: 30, o: 25, s: 7 },
    c: 2,
    reminder: 0,
    onshow: function(infos) {
      ga('send', 'event', 'ux', 'browser-update-show', navigator.userAgent, { nonInteraction: true });
    },
    onclick: function(infos) {
      ga('send', 'event', 'ux', 'browser-update-close', navigator.userAgent, { nonInteraction: true });
    }
  }
  function $buo_f(){
    var e = document.createElement("script");
    e.src = "//browser-update.org/update.min.js";
    document.body.appendChild(e);
  };
  try {document.addEventListener("DOMContentLoaded", $buo_f, false)}
  catch(e){window.attachEvent("onload", $buo_f)}
</script>

    <script>
  function loadJS(src, cb) {
    var ref = window.document.getElementsByTagName("script")[0];
    var script = window.document.createElement("script");
    script.src = src;
    script.async = true;
    ref.parentNode.insertBefore(script, ref);
    if (cb && typeof(cb) === "function") {
      script.onload = cb;
    }
    return script;
  }
  loadJS('https://developers.kakao.com/sdk/js/kakao.min.js', function() {
    Kakao.init('27bc13794a21ad76b5bb5295ee1817c8');
  });
  // loadJS('https://openapi.map.naver.com/openapi/v2/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R');
</script>

    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-77732648-3', 'auto', {'siteSpeedSampleRate': 100 });
  ga('require', 'ec');
  ga('require', 'linkid');
  ga('require', 'displayfeatures');
    ga('set', '&uid', '5b04dc34532c2845f88f333b'); // Set the user ID using signed-in user_id.
    ga('set', 'dimension1', 'Y:2018;Q:2;M:05;WY:2018;WM:05;WD:21;D:23;H:12');
  // http://stackoverflow.com/questions/23923605/universal-analytics-and-signup-with-facebook
    ga('send', 'pageview');
</script>

    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>

    <!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
  n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
  document,'script','https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '669950873158083', {
      em: 'august9510@naver.com',
      // Data will be hashed automatically via a dedicated function in FB pixel
      ph: '82-'
    });
  fbq('track', 'PageView');
</script>
<noscript>
  <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=669950873158083&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->

    <script>!function(e,o,n){window.HSCW=o,window.HS=n,n.beacon=n.beacon||{};var t=n.beacon;t.userConfig={},t.readyQueue=[],t.config=function(e){this.userConfig=e},t.ready=function(e){this.readyQueue.push(e)},o.config={docs:{enabled:!0,baseUrl:"//zipbob.helpscoutdocs.com/"},contact:{enabled:!0,formId:"d9595e48-dbf6-11e6-8789-0a5fecc78a4d"}};var r=e.getElementsByTagName("script")[0],c=e.createElement("script");c.type="text/javascript",c.async=!0,c.src="https://djtflbt20bdde.cloudfront.net/",r.parentNode.insertBefore(c,r)}(document,window.HSCW||{},window.HS||{});</script>
<script>
  HS.beacon.config({
    autoInit: true,
    modal: true,
    color: '#01ac50',
    icon: 'buoy',
    translation: {
      searchLabel: '질문을 입력하거나 키워드로 검색하세요.',
      searchErrorLabel: '찾을 수 없습니다.',
      noResultsLabel:	'찾을 수 없습니다.',
      contactLabel:	'문의하기',
      attachFileLabel: '피일 첨부',
      attachFileError: '파일이 너무 큽니다.',
      nameLabel: '이름',
      nameError: '이름을 입력해 주세요.',
      emailLabel: '이메일',
      emailError: '이메일을 입력해 주세요.',
      topicLabel:	'어떤 문의인가요?',
      topicError:	'리스트에서 선택해주세요.',
      subjectLabel:	'제목',
      subjectError:	'제목을 입력해 주세요.',
      messageLabel:	'어떻게 도와드릴까요?',
      messageError:	'내용을 입력해 주세요.',
      sendLabel: '보내기',
      contactSuccessLabel: '문의가 접수되었습니다.',
      contactSuccessDescription: 'Thanks for reaching out! Someone from our team will get back to you soon.'
    },
    topArticles: true,
    zIndex: 11111,
    topics: [
      { val: '모임수정', label: '모임수정' },
      { val: '결제/환불', label: '결제/환불'},
      { val: '정산/세금계산서', label: '정산/세금계산서'},
      { val: '기능오류', label: '기능오류' },
      { val: '제휴/언론보도', label: '제휴/언론보도'},
      { val: '의견 및 기타문의', label: '의견 및 기타문의'},
    ],
    attachment: true,
    instructions: '어떻게 도와드릴까요?',
    poweredBy: false,
  });
  HS.beacon.ready(function() {
      HS.beacon.identify({
        name: '박보영',
        email: 'august9510@naver.com',
        Age: ''
      });
    $(document).on('click', '.open-beacon', function(e) {
      e.preventDefault();
      HS.beacon.open();
    });
  });
</script>

  <style type="text/css"> .readmore-plain-invitation-detail + [data-readmore-toggle], .readmore-plain-invitation-detail[data-readmore]{display: block; width: 100%;}.readmore-plain-invitation-detail[data-readmore]{transition: height 100ms;overflow: hidden;}</style><style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_loader{background-color:#f6f7f9;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;bottom:0;left:0;right:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29487d;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f9;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
.fb_customer_chat_bounce_in{animation-duration:250ms;animation-name:fb_bounce_in}.fb_customer_chat_bounce_out{animation-duration:250ms;animation-name:fb_fade_out}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_mobile_overlay_active{background-color:#fff;height:100%;overflow:hidden;position:fixed;visibility:hidden;width:100%}@keyframes fb_fade_out{from{opacity:1}to{opacity:0}}@keyframes fb_bounce_in{0%{opacity:0;transform:scale(.8, .8);transform-origin:100% 100%}10%{opacity:.1}20%{opacity:.2}30%{opacity:.3}40%{opacity:.4}50%{opacity:.5}60%{opacity:.6}70%{opacity:.7}80%{opacity:.8;transform:scale(1.03, 1.03)}90{opacity:.9}100%{opacity:1;transform:scale(1, 1)}}</style></head>
<body class="theme-red ">
      <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '498270173519404',
        status     : true,
        cookie     : true,
        xfbml      : true,
        version    : 'v2.8'
      });
    };
    (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ko_KR/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>


    <div class="panel-overlay"></div>

    <div class="views">
      <div class="view view-main">
        <div class="pages">
          <div class="navbar global-navbar desktop-navbar">
  <div class="navbar-inner">
    <div class="center">
      <a class="logo external" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="desktop-navbar-logo" href="/">
        <img src="https://dppgjjx7k7m5m.cloudfront.net/assets/logo-2b94dae9b32a1a4b4583eb567a7df4609a50e67f39eed4c27737a1278cee1f8f.png" alt="Logo">
</a>    </div>

    <a class="link open-search-filter-popup" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="navbar-search-icon" href="/s">
      <i class="material-icons search"></i> <span>모임찾기</span>
</a>
    <div class="right">
        <div class="link icon-only zigi-dropdown-menu">
          <a class="zigi-link" href="/host/products">
            <span>집밥지기</span>
</a>
          <div class="dropdown-content">
            <div class="content-block">
              <div class="list-block no-hairline zigi-dropdown-block">
                <ul>
                  <li>
                    <a href="/host/dashboard">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">소식</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="/host/variants"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">일정</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="/host/products">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">모임 관리</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/zigi?ref=global-navbar">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">모임 만들기</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="#"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">참여 관리</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="/host/stats">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">정산 내역</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/host/stories">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">후기</div>
                        </div>
                      </div>
</a>                  </li>
                </ul>
              </div>
            </div>
          </div>
</div>
        <div class="link icon-only joiner-dropdown-menu">
          <a class="joiner-link" href="/profile/order_items">
            <span>참여자</span>
</a>
          <div class="dropdown-content">
            <div class="content-block-title">
              <div class="left">
                참여 모임
              </div>

              <div class="right">
                <a href="/profile/order_items">모임 보기</a>
              </div>
            </div>

            <div class="list-block media-list">
              <ul>
                  <li class="empty-item">
                    <a class="item-content item-link" href="/s">
                      <div class="item-inner">
                        <div class="item-title-row">
                          <div class="item-title">
                            현재 예정된 모임이 없습니다.
                          </div>
                        </div>

                        <div class="item-subtitle">
                          모임찾기
                        </div>
                      </div>
</a>                  </li>
              </ul>
            </div>

            <div class="content-block-title">
              <div class="left">
                앵콜
              </div>

              <div class="right">
                <a href="/encores">앵콜 보기</a>
              </div>
            </div>

            <div class="list-block media-list">
              <ul>
                  <li class="empty-item">
                    <a class="item-content item-link" href="/s">
                      <div class="item-inner">
                        <div class="item-title-row">
                          <div class="item-title">
                            앵콜한 모임이 없습니다.
                          </div>
                        </div>

                        <div class="item-subtitle">
                          모임찾기
                        </div>
                      </div>
</a>                  </li>
              </ul>
            </div>
          </div>
</div>

        <a class="link icon-only" target="_blank" href="http://help.zipbob.net">
          <span>도움말</span>
</a>
        <div class="link profile-image user-dropdown-menu">
          <a href="/users/august9510">
            <img width="28" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
</a>
          <div class="dropdown-content">
            <div class="content-block">
              <div class="list-block no-hairline">
                <ul>
                  <li>
                    <a href="/settings/profile">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">프로필 수정</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/settings/account">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">계정 관리</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="/settings/notification"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">계정 관리</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="https://zipbob.app.link/download-our-app">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">앱 다운로드</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/notices">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">공지사항</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a rel="nofollow" data-method="delete" href="/users/sign_out">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">로그아웃</div>
                        </div>
                      </div>
</a>                  </li>
                </ul>
              </div>
            </div>
          </div>
</div>    </div>
  </div>
</div>

          

<div class="page product_55e77efee76f6870ab005461 products show" data-page="products-show">
  <div class="page-content">
    <div class="photo-swiper">
  <div class="photo">
    <div id="open-photo-browser" class="cover-image open-photo-browser" style="background-image: url(https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/90/27/59a5667b532c283a92f27251/p1.jpg)">
</div>  </div>

  <a href="#" id="open-photo-browser" class="open-photo-browser button button-fill">사진보기</a>
    <a class="link icon-only no-ripple external favorite-action" data-params="product_id=55e77efee76f6870ab005461" data-disable-with="..." data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="product-detail-favorite-icon" data-remote="true" rel="nofollow" data-method="post" href="/encores">
    <i class="material-icons favorite_border"></i>
</a>
</div>


    <div class="page-content-inner">
      <div class="row">
        <div class="tablet-60">
          <div class="content-block main-content-block">
  <div class="content-block-inner">
    <div class="description-block">
      <div class="title">
        마음이 지치고 힘드신 분,  "비온 뒤 숲속"으로 오세요~
      </div>

      <div class="description">
        나를 찾아가는 행복한 심리상담, 가벼운 마음으로 오세요.
('홍대다락방 심리상담'이 남산 성곽마을로 이전하여 '비온 뒤 숲속'으로 바뀌었습니다.)
      </div>
    </div>
  </div>
</div>

          <div class="content-block main-content-block">
  <div class="content-block-inner">
    <div class="engage-info-block">
      <div class="row">
        <div class="col-25">
          <i class="material-icons filter_list"></i><br>
          <span>대화/일상</span>
        </div>

        <div class="col-25">
          <i class="material-icons face"></i><br>
          <span>참가자 193</span>명
        </div>

        <div class="col-25">
          <i class="material-icons favorite_border"></i><br>
          <span>앵콜 238</span>개
        </div>

        <div class="col-25">
          <i class="material-icons border_color"></i><br>
          <span>후기 17</span>개
        </div>
      </div>
    </div>
  </div>
</div>

            <div class="host-block-wrapper">

    <div class="content-block host-block">
      <div class="content-block-inner">
       
 

      </div>
    </div>
  </div>

            <div class="interview-block-wrapper">
    <div class="content-block-title interview-block-title">
      수다
    </div>

        <div class="content-block inset interview-block" style="background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://dppgjjx7k7m5m.cloudfront.net/uploads/interview/desktop_cover_image/5a/be/58356c59532c283947a40874/medium_Cover-1200x800.jpg)">
      <a href="/interviews/58356c59532c283947a40874">
        <div class="title">
          “외로울 줄 아는 것도 능력이다.”
        </div>

        <div class="summary">
          상대방과 진심을 나누는 다락방 집밥지기
        </div>

        <div class="button button-flat color-white">
          채팅 이동
        </div>
</a></div>
  </div>

          <div class="plain-invitation-block-wrapper">
  <div class="content-block-title invitation-block-title">
    소개글
  </div>

  <div class="content-block plain-invitation-block">
    <div class="content-block-inner plain-invitation-detail">
      <div class="readmore-plain-invitation-detail" data-readmore="" aria-expanded="false" id="rmjs-1" style="max-height: none; height: 400px;">
        <p></p><div>&nbsp;
<br>안녕하세요. 비온 뒤 숲속지기 심리상담사&nbsp;정경진입니다.<p></p>

<p>'심리상담은 정신력이 약하거나 문제가 많은 사람이나 받지'라는 생각은 그야말로 편견입니다. 심리상담은 자신의 인생을 당당하게, 주인으로 살기위해 이제는 더 이상 미룰 수 없는 '나를 찾기 위한&nbsp;여행'입니다. </p>

<p>다음의 내용을 고민하는 분이라면 오셔서 건강한 고민을 나누고&nbsp;홀가분해지세요. 
<br> 
<br>-부모와의 애증관계, 미워할 수도 사랑할 수도 없어&nbsp;괴로워요.
<br>-연인과의 번번한 실패, 이제는 건강한 사랑을 하고&nbsp;싶어요.
<br>-일과 사랑과 일상과 인생! 조화롭게 살 수&nbsp;있을까요?
<br>-어디가나 소외감이 느껴져요. 지긋지긋한 외로움&nbsp;어찌해야할까요?
<br>-직장생활, 아흐! 괴로워요. 어떻게&nbsp;다녀야할까요?
<br>-매사에 자신이 없고 불안해요. 자존감이 높아질 수&nbsp;있을까요?
<br>-아무것도 하고 싶은 게 없어요. 이제 그만 무기력에서 벗어나고&nbsp;싶어요. 
<br>-그냥 우울해요. 화도 나고. 나도 행복해질 수&nbsp;있을까요?</p>

<p>만능 처방전, 마음의 호랑이 연고는 어디에도 없습니다. 하지만, 혼자 끙끙 매고 있는 것보다 함께 나누다 보면 어느 새&nbsp;홀가분해집니다. 
<br>뻔한 처세술이나 냉소적인 조언이 아닌, 심리전문가의 따뜻하고 전문적인 상담을 경험하시면, '아~ 이제라도 와서 다행이다.'하실&nbsp;것입니다. </p>

<p>('홍대다락방에서 하는 심리상담'이 약수역 다산성곽마을 '비 온 뒤 숲속'으로 바뀌었습니다, 문의사항은 문자주세요.&nbsp;010-7771-3770)</p>

<p>-연구소와 제&nbsp;소개는 </p>

<p>-https://forest24.modoo.at&nbsp;-http://blog.naver.com/kyung3770&nbsp;</p>

<p>로 들어오시면 볼 수&nbsp;있습니다.
<br>&nbsp;</p>

<p>*심리상담이 돈 있는 사람들의 전유물이 아닌 대중들에게 공유되고 오픈되는 사회공공재가 되었으면 하는&nbsp;바램입니다.
<br></p></div><p></p>
      </div><a href="#" data-readmore-toggle="rmjs-1" aria-controls="rmjs-1">더 읽어보기</a>
    </div>
  </div>
</div>

          
          <div class="menu-block-wrapper">
  <div class="content-block-title">
    포함내용
  </div>

  <div class="content-block menu-block">
    <div class="content-block-inner">
      <p>25,000원의 비용에는 심리상담과 그외 간단한 먹거리와 집밥 수수료가 포함되어 있습니다.</p>
    </div>
  </div>
</div>

          

          
  <div class="review-block-wrapper">
    <div class="content-block-title review-block-title">
      후기
    </div>

    <div class="content-block review-block">
      <div class="content-block-inner">
        <a class="read-more-review" href="/p/55e77efee76f6870ab005461/reviews">
          <div class="review-list">
            <div class="card review-card review_58b5c3d9532c2863db0b03fa">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/84/0a/53318d05e76f6851c8000045/thumb_1489851706262.jpeg" alt="Thumb 1489851706262">
    </div>
    <div class="name">이연</div>
    <div class="date">2017/03/01</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>속에 담아두었던 말을 풀어낼 수 있어서 좋았어요. 다른 사람의 이야기를 들으면서 공감을 주고 받는것도 색다른 경험이였던거 같아요. 처음갔을땐 너무 내 이야기하는거에만 집중한 탓인지 이게 상담이 되나 했는데 좀 추스르고 다시 나갔더니 뭔가 정리되어 가는거 같습니다. 시간이 맞으면 또 다음에 참가해 보겠습니다~ </p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>
</div>
          </div>

          <div class="content-block text-block">
            후기 17개 읽기
          </div>
</a>      </div>
    </div>
  </div>

          <div class="extra-block-wrapper">
  <div class="content-block extra-block">
    <div class="list-block media-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-inner">
              <div class="item-title-row">
                <div class="item-title">
                  최대 참여 인원수
                </div>

                <div class="item-after">
                  7명
                </div>
              </div>
            </div>
          </div>
        </li>

        <li>
          <div class="item-content">
            <div class="item-inner">
              <div class="item-title-row">
                <div class="item-title">
                  최소 참여 인원수
                </div>

                <div class="item-after">
                  2명
                </div>
              </div>
            </div>
          </div>
        </li>

        <!-- <li> -->
        <!--   <div class="item&#45;content"> -->
        <!--     <div class="item&#45;inner"> -->
        <!--       <div class="item&#45;title"> -->
        <!--         참여자 -->
        <!--       </div> -->
        <!--  -->
        <!--       <div class="item&#45;after"> -->
        <!--          -->
        <!--           외부참여자 포함 -->
        <!--          -->
        <!--       </div> -->
        <!--     </div> -->
        <!--   </div> -->
        <!-- </li> -->

        <!-- <li> -->
        <!--   <div class="item&#45;content"> -->
        <!--     <div class="item&#45;inner"> -->
        <!--       <div class="item&#45;title"> -->
        <!--         환불 정책 -->
        <!--       </div> -->
        <!--  -->
        <!--       <div class="item&#45;after"> -->
        <!--         보통 -->
        <!--       </div> -->
        <!--     </div> -->
        <!--   </div> -->
        <!-- </li> -->

        <li>
          <a class="item-link item-content" href="/p/55e77efee76f6870ab005461/comments">
            <div class="item-inner">
              <div class="item-title-row">
                <div class="item-title">
                  문의하기
                </div>

                <div class="item-after">
                  문의 및 댓글
                </div>
              </div>
            </div>
</a>        </li>
      </ul>
    </div>
  </div>
</div>

        </div>

        <div class="tablet-40">
          <div class="variant-block-wrapper">
  <div class="content-block-title variant-block-title">
    날짜
  </div>

  <div class="content-block">
    <div class="list-block media-list variant-block">
      <ul>
          <li class="variant-item">
  <div class="item-link item-content">
    <div class="item-inner">
      <div class="item-text">
        현재 참여 가능한 일정이 없습니다.
      </div>
    </div>
  </div>
</li>

      </ul>

      <div class="list-block-label">
        하나. 신청은 당일 2시간 전까지 가능합니다.<br>
        둘. 집밥지기의 연락처는 모임 하루 전 오후 7시에 문자와 이메일, 앱에서 공유됩니다.<br>
      </div>
    </div>
  </div>
</div>


            
        </div>
      </div>

        <div class="location-block-wrapper">
    <div class="content-block-title">
      장소
    </div>

    <div class="content-block location-block">
      <div class="content-block-inner">
        <div class="address">
          서울 중구 신당동
        </div>
      </div>

        <div id="product-map" class="map" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div style="position: absolute; top: -366px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"><svg:svg version="1.1" width="152px" height="152px" viewBox="418 249 152 152" overflow="visible" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute; overflow: visible; margin: 0px; padding: 0px; border: 0px; width: 152px; height: 152px; pointer-events: none; z-index: 0; left: 418px; top: 249px;"><path fill-rule="evenodd" d="M 419 325 A 75 75 0 1 0 419 324 Z" style="stroke:#007EEA;stroke-width:1px;stroke-opacity:1;fill:#2196f3;fill-opacity:0.3;pointer-events:visiblePainted;"></path></svg:svg></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: -4px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 52px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">100m</span><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png" width="44" height="4" alt="" style="position:absolute;left:4px;;bottom:0;z-index:2;display:block;width:44px;height:4px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right;"><a href="http://map.naver.com" target="_blank" style="display: block; width: 43px; height: 10px; overflow: hidden; margin: 0px 5px 7px 0px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal.png" width="43" height="10" alt="NAVER" style="display:block;width:43px;height:10px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 19px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">╳</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;"> /OpenStreetMap</a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; top: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right;"><div style="position: relative; z-index: 4; pointer-events: auto;"><div style="position: relative; z-index: 0; width: 28px; margin: 10px; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important; user-select: none;"><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-bottom: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-in-large-normal.png" width="28" height="22" alt="지도 확대" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: relative; width: 28px; height: 96px; overflow: hidden; margin: 0px; padding: 7px 0px; background-color: rgb(255, 255, 255); cursor: pointer; box-sizing: content-box !important; display: block;"><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 96px; display: block; background-color: rgb(47, 135, 236);"></div><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 34px; display: block; background-color: rgb(202, 205, 209);"></div><a href="#" style="position: absolute; left: 4px; width: 18px; height: 10px; top: 34px; border: 1px solid rgb(68, 68, 68); cursor: move; display: block; overflow: hidden; box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-handle.png" width="18" height="10" alt="지도 확대/축소 슬라이더" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:18px;height:10px;"></a></div><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-top: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-out-large-normal.png" width="28" height="22" alt="지도 축소" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: absolute; top: 22px; width: 44px; height: 0px; overflow: visible; display: none; left: -51px;"><div style="display: block; margin: 0px; padding: 0px;"><h4 style="visibility:hidden;width:0;height:0;overflow:hidden;margin:0;padding:0;">지도 컨트롤러 범례</h4><div style="position: absolute; top: 13px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-on.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">부동산</span></div><div style="position: absolute; top: 33px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">거리</span></div><div style="position: absolute; top: 53px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">읍,면,동</span></div><div style="position: absolute; top: 83px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,군,구</span></div><div style="position: absolute; top: 113px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,도</span></div><div style="position: absolute; top: 133px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">국가</span></div></div></div></div></div></div></div></div>

      <div class="list-block media-list">
        <ul>
          <li>
            <div class="item-content">
              <div class="item-inner">
                <div class="item-title-row">
                  <div class="item-title">
                    지역
                  </div>

                  <div class="item-after">
                    서울, 중구<br>
                  </div>
                </div>
              </div>
            </div>
          </li>

            <li>
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title-row">
                    <div class="item-title">
                      장소명
                    </div>

                    <div class="item-after">
                      심리상담연구소 "비온 뒤 숲속"
                    </div>
                  </div>
                </div>
              </div>
            </li>
        </ul>
      </div>
    </div>
  </div>

        <div class="featured-products-wrapper">
    <div class="content-block-title subheading-title">
      비슷한 모임
    </div>

    <div class="swiper-container featured-swiper swiper-container-horizontal">
      <div class="swiper-wrapper">
        
      </div>

      <div class="swiper-button-prev swiper-button-disabled"></div>
      <div class="swiper-button-next swiper-button-disabled"></div>
    </div>
  </div>

    </div>
  </div>

  <script>
  fbq('track', 'ViewContent', {
    content_name: '마음이 지치고 힘드신 분,  &quot;비온 뒤 숲속&quot;으로 오세요~',
    content_category: '대화/일상',
    content_type: 'product',
    content_ids: ['55e77efee76f6870ab005461'],
    value: 25000,
    currency: 'KRW'
  });
  // photo browser
  App.productPhotos = JSON.parse('["https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/90/27/59a5667b532c283a92f27251/p1.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/18/61/59509a38532c284e7b347fd8/20170516_185356.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/6c/00/59509a39532c284e78347d1e/20170602_135131.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/e1/1b/59509a47532c284e78347d1f/20170602_135831.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/2c/1e/59509a48532c284e7b347fd9/20170602_135810.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/39/1f/59509a51532c284e78347d2c/20170602_140038.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/b3/ff/59509a53532c284e7b347fda/20170602_135851.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/08/23/59509a5c532c284e7b347fe8/20170602_140359.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/87/82/59509a5d532c284e78347d30/20170602_140251.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/e2/c7/59509a69532c284e7b347feb/20170602_141034.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/50/75/59509a2c532c284e78347d11/0-1.jpg", "https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/e8/2a/59509a2e532c284e7b347fd7/0-2.jpg"]');
  $(document).on('click', '.product_55e77efee76f6870ab005461 .open-photo-browser', function (e) {
    e.preventDefault();
    App.productPhotoBrowser = App.f7.photoBrowser({
      // zoom: 400,
      type: 'popup',
      theme: 'dark',
      lazyLoading: true,
      photos: App.productPhotos,
      onClose: function (photobrowser) {
        // console.log('close');
      }
    });
    App.productPhotoBrowser.open();
    ga('send', 'event', 'ux', 'click', 'product-photo-browser');
  });
  $('.readmore-plain-invitation-detail').readmore({
    collapsedHeight: 400,
    speed: 100,
    moreLink: '<a href="#">더 읽어보기</a>',
    lessLink: '',
  });
  // map
    var coordinate = JSON.parse('{"lat":37.555605,"lng":127.0072893}');
    var oPoint = new naver.maps.LatLng(coordinate.lat, coordinate.lng);
    var map = new naver.maps.Map($('.product_55e77efee76f6870ab005461 #product-map')[0], {
      center: oPoint,
      scrollWheel: false,
      draggable: true,
      zoom: 11,
      minZoom: 5,
      maxZoom: 14,
      zoomControl: true,
      zoomControlOptions: {
        position: naver.maps.Position.TOP_RIGHT
      }
    });
    var circle = new naver.maps.Circle({
      map: map,
      center: oPoint,
      radius: 150,
      fillColor: '#2196f3',
      fillOpacity: 0.3,
    });
  // swiper
  var productSwiperOption = {
    slidesPerView: 3,
    spaceBetween: 16,
    lazyLoading: true,
    lazyLoadingInPrevNext: true,
    // pagination: '.swiper-pagination',
    // paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    // Responsive breakpoints. when window width is <= ?px
    breakpoints: {
      320: {
        width: screen.width - 100,
        slidesPerView: 1,
      },
      480: {
        width: screen.width - 100,
        slidesPerView: 1,
      },
      640: {
        width: screen.width - 100,
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
    },
  };
  var featuredSwiper = App.f7.swiper('.featured-products-wrapper .featured-swiper', productSwiperOption);
  try {
    featuredSwiper.on('slideChangeEnd', function (swiper, event) {
      ga('send', 'event', 'swiper', 'slide', 'product-detail-featured-' + swiper.activeIndex);
    });
  } catch (e) {
    console.log(e);
  }
</script>

</div>
        </div>
      </div>
    </div>

    <footer id="footer" class="desktop-footer">
  <div class="footer-block-wrapper">
    <div class="footer-inner">
      <div class="row">
        <div class="col-33">
          <div class="main">
            <div class="heading">
              집밥
            </div>

            <ul>
              <li>
                <a href="/about/about_us">소개</a>
              </li>

              <li>
                <a href="/press/news">미디어</a>
              </li>

              <li>
                <a target="_blank" href="http://help.zipbob.net">도움말</a>
              </li>

              <li>
                <strong><a href="/terms/privacy">개인정보 처리방침</a></strong>
              </li>

              <li>
                <a href="/terms">이용약관</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-33">
          <div class="main">
            <div class="heading">
              둘러보기
            </div>

            <ul>
              <li>
                <a href="/reviews">후기</a>
              </li>

              <li>
                <a href="/interviews">수다</a>
              </li>

              <li>
                <a href="/stories">스토리</a>
              </li>

              <li>
                <a href="/zigi?ref=footer">모임 만들기</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-33">
          <div class="main">
            <div class="heading">
              우수지기
            </div>

            <ul class="list">
              <li>
                <a href="/badges/best_host_2016">2016</a>
              </li>

              <li>
                <a href="/badges/best_host_2015">2015</a>
              </li>

              <li>
                <a href="/badges/best_host_2014">2014</a>
              </li>

              <li>
                <a href="/badges/best_host_2013">2013</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-divider">
    </div>

    <div class="footer-bottom">
      <div class="zipbob-brand">
        <div class="logo">
          <img src="https://dppgjjx7k7m5m.cloudfront.net/assets/2_icon-ios-d6135680f443bb2bf68e844e94d41a4a993dbb95473a336211613b3dba02f163.png" alt="2 icon ios">
        </div>

        <div class="sns">
          <a href="http://www.facebook.com/zipbobnet" class="facebook" target="_blank">
            페이스북
          </a>
          <span>·</span>

          <a href="https://instagram.com/zipbobnet/" class="instagram" target="_blank">
            인스타그램
          </a>
          <span>·</span>

          <a href="http://zipbob-blog.net/" class="naver" target="_blank">
            블로그
          </a>
          <span>·</span>

          <a href="https://story.kakao.com/ch/zipbobnet" class="kakaostory" target="_blank">
            카카오스토리
          </a>
        </div>
      </div>

      <div class="copyright">
        <span class="text">
          상호명: (주)집밥 | 대표: 박설미 | 개인정보관리책임자 : 박설미
        </span>

        <span class="text">
          사업자 등록번호: 215-87-73877 | 통신판매업신고: 제 2013-서울송파-0228호
        </span>

        <span class="text">
          서울특별시 성동구 왕십리로 88 노벨빌딩 4층 | <a href="mailto:help@zipbob.net">help@zipbob.net</a>
        </span>
      </div>

      <div class="copyright">
        <span class="text">
          ©2012-2017. ZIPBOB. ALL RIGHTS RESERVED.
        </span>
      </div>
    </div>
  </div>
</footer>


    
      <script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>

<script>
  $(function() {
    $(document).on('click', '#product_master_variant_attributes_location_attributes_address', function (e) {
      App.f7.popup('.postcode-popup');
      var element_layer = document.getElementById('postcode-wraper');
      new daum.Postcode({
        // theme: themeObj,
        width: '100%',
        height: '100%',
        oncomplete: function(data) {
          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수
          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
          }
          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if (data.userSelectedType === 'R') {
            // 건물명이 있을 경우 추가한다.
            if (data.buildingName !== '') {
              extraAddr = data.buildingName;
            }
          }
          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('product_master_variant_attributes_location_attributes_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('product_master_variant_attributes_location_attributes_address').value = fullAddr;
          document.getElementById('product_master_variant_attributes_location_attributes_address2').value = extraAddr;
          document.getElementById('product_master_variant_attributes_location_attributes_city').value = data.sido;
          document.getElementById('product_master_variant_attributes_location_attributes_region').value = data.sigungu;
          document.getElementById('product_master_variant_attributes_location_attributes_sido').value = data.sido;
          document.getElementById('product_master_variant_attributes_location_attributes_sigugun').value = data.sigungu;
          document.getElementById('product_master_variant_attributes_location_attributes_dongmyun').value = data.bname;
          document.getElementById('product_master_variant_attributes_location_attributes_address2').focus();
          App.f7.closeModal('.postcode-popup')
        },
      }).embed(element_layer, {
        autoClose: false
      });
    });
    $(document).on('click', '#variant_location_attributes_address', function (e) {
      App.f7.popup('.postcode-popup');
      var element_layer = document.getElementById('postcode-wraper');
      new daum.Postcode({
        // theme: themeObj,
        width: '100%',
        height: '100%',
        oncomplete: function(data) {
          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수
          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
          }
          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if (data.userSelectedType === 'R') {
            // 건물명이 있을 경우 추가한다.
            if (data.buildingName !== '') {
              extraAddr = data.buildingName;
            }
          }
          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('variant_location_attributes_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('variant_location_attributes_address').value = fullAddr;
          document.getElementById('variant_location_attributes_address2').value = extraAddr;
          document.getElementById('variant_location_attributes_city').value = data.sido;
          document.getElementById('variant_location_attributes_region').value = data.sigungu;
          document.getElementById('variant_location_attributes_sido').value = data.sido;
          document.getElementById('variant_location_attributes_sigugun').value = data.sigungu;
          document.getElementById('variant_location_attributes_dongmyun').value = data.bname;
          document.getElementById('variant_location_attributes_address2').focus();
          App.f7.closeModal('.postcode-popup')
        },
      }).embed(element_layer, {
        autoClose: false
      });
    });
  });
</script>

<div class="popup postcode-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">주소 찾기</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <div id="postcode-wraper" class="page-content">
  </div>
</div>

    <div class="popup search-filter-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">필터</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <form class="product-search-form" action="/s" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="✓">
    <div class="search-form-block-wrapper">
      <div class="content-block">
        <div class="list-block no-hairline inputs-list main-filter-block">
          <ul>
            <li class="category-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">카테고리</div>
                  <div class="item-input item-input-field">


                    <select name="category" class="product-category">
                      <option value="">모든 주제</option>
<option value="talk">대화/일상</option>
<option value="food">요리/음식</option>
<option value="culture">문화/예술</option>
<option value="activity">활동/놀이</option>
<option value="diy">공예/DIY</option>
<option value="learning">지식/배움</option>
<option value="meet">만남/연애</option>
                    </select>
                  </div>
                </div>
              </div>
            </li>

            <li class="sort-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">정렬</div>
                  <div class="item-input item-input-field">

                    <select name="sort" class="product-sort">
                      <option value="meeted">날짜순</option>
<option value="created">개설순</option>
<option value="reviews">후기순</option>
<option value="orders">참가자순</option>
<option value="encores">앵콜순</option>
                    </select>
                  </div>
                </div>
              </div>
            </li>

            <li class="date-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">날짜</div>
                  <div class="item-input item-input-field">
                    <input name="meet_at" value="" type="text" placeholder="언제 시간되세요?" class="open-search-calendar" readonly="">
                  </div>
                </div>
              </div>
            </li>
          </ul>

          <div class="content-block date-button-block">
            <div class="buttons-row">
              <a class="button button-raised righ-now" data-date-range="2018-05-23 - 2018-05-27" href="#">이번 주</a>
              <a class="button button-raised weekend" data-date-range="2018-05-25 - 2018-05-27" href="#">주말</a>
              <a class="button button-raised next-week" data-date-range="2018-05-28 - 2018-06-03" href="#">다음 주</a>
            </div>
          </div>
        </div>

        <div class="zigi-filter-wrapper">
          <div class="content-block-title">
            지기
          </div>

          <div class="content-block">
            <div class="list-block media-list">
              <ul>
                <li>
                  <label class="label-checkbox item-content">
                    <input type="checkbox" name="best_host" id="best_host" value="best_host">
                    <div class="item-media"><i class="icon icon-form-checkbox"></i></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title">우수지기</div>
                      </div>

                      <div class="item-text">
                        오랫동안 믿음직한 활동을 보여준 지기를 만나 보세요.
                      </div>
                    </div>
                  </label>
                </li>

                <li>
                  <label class="label-checkbox item-content">
                    <input type="checkbox" name="culture_21st" id="culture_21st" value="culture_21st">
                    <div class="item-media"><i class="icon icon-form-checkbox"></i></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title">문예지기</div>
                      </div>

                      <div class="item-text">
                        매달 마지막 주는 21세기 문예지기와 함께 문화·예술 활동을 즐기세요!
                      </div>
                    </div>
                  </label>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="submit-block-wrapper">
          <div class="content-block">
            <input type="submit" name="commit" value="검색하기" data-disable-with="검색중..." class="button button-big button-fill">
          </div>
        </div>

        <a class="button external" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="search-filter-reset-button" href="/s">필터 삭제</a>
      </div>
    </div>
</form></div>

<script>
  $(document).on('click', '.open-search-filter-popup', function (e) {
    e.preventDefault();
    App.f7.popup('.search-filter-popup');
    ga('send', 'event', 'ux', 'click', 'search-filter-popup');
  });
  $(document).on('click', '.search-filter-popup .buttons-row .button', function (e) {
    e.preventDefault();
    var dateRange = Dom7(this).data('date-range');
    console.log(dateRange);
    Dom7('.search-filter-popup .open-search-calendar').val(dateRange);
  });
  var startDate = new Date();
  var minDate = startDate.setHours(0, 0, 0, 0);
  var maxDate = new Date(startDate.getFullYear(), startDate.getMonth() + 1, startDate.getDate() + 3);
  var calendarDefault = App.f7.calendar({
    input: '.open-search-calendar',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월' , '9월' , '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    // value: App.selectedMeetAt,
    minDate: minDate,
    maxDate: maxDate,
    yearPicker: false,
    rangePicker: true,
    headerPlaceholder: '언제 시간되세요?',
    toolbarCloseText: '닫기',
  });
</script>

    <div class="popup map-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">위치</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <div id="full-page-map" class="map" style="height: 100vh;"></div>
</div>


        <script type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js"></script>

  <script>
    $(function() {
      $(document).on('click', '.inipay-desktop-btn', function (e) {
        e.preventDefault();
        INIStdPay.pay('inipay-desktop-payment-form');
      });
    });
  </script>

<script src="https://mup.mobilians.co.kr/js/ext/ext_inc_comm.js"></script>

<script>
  $(function() {
    $(document).on('click', '.mcash-btn', function (e) {
      e.preventDefault();
      if (App.util.isCordova()) {
        if (device.platform === 'iOS') {
          var options = "location=no,closebuttoncaption=닫기";
        } else {
          var options = "location=yes";
        }
        var inAppBrowserRef = window.open(App.mcash_order_url, '_blank', options);
        inAppBrowserRef.addEventListener('loadstart', function(event) {
          console.log('loadstart', event);
          // handling cancel
          if (event.url.match('/steps/payment')) {
            inAppBrowserRef.close();
          }
          if (event.url.match('/payment/fail')) {
            inAppBrowserRef.close();
            window.location = event.url
          }
          if (event.url.match('/steps/complete')) {
            inAppBrowserRef.close();
            window.location = event.url
          }
        });
        inAppBrowserRef.addEventListener('loadstop', function(event) {
          console.log('loadstop', event);
        });
        inAppBrowserRef.addEventListener('loaderror', function(event) {
          console.log('loaderror', event);
        });
        inAppBrowserRef.addEventListener('exit', function(event) {
          console.log('exit', event);
        });
      } else {
        var form = document.getElementById('mcash-payment-form');
        MCASH_PAYMENT(form);
      }
    });
  });
</script>

    <script>
</script>

    
  

<div class="offline-ui offline-ui-up"><div class="offline-ui-content"></div><a href="" class="offline-ui-retry"></a></div><script src="//browser-update.org/update.min.js"></script><div id="hs-beacon"><div data-reactroot=""><iframe style="border: none; bottom: 0px; height: 0px; position: fixed; right: 0px; top: 0px; width: 0px; z-index: 11111; left: 0px; background: rgba(0, 0, 0, 0.5);"></iframe></div></div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/RQ7NiRXMcYA.js?version=42#channel=f4679ec3e57f34&amp;origin=https%3A%2F%2Fwww.zipbob.net" style="border: none;"></iframe></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div></div></body>
</html>