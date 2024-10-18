<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title id="titleJoin">Starbucks Korea</title>

	<link href="/common/css/style_main.css?v=240415" rel="stylesheet">
	<link href="/common/css/style_main_newProm.css?v=210219" rel="stylesheet"> <!-- 20201023 수정 -->
	<jsp:include page="header_head.jsp" />
	<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0px;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:'lucida grande', tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://connect.facebook.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0px;margin:0px;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://connect.facebook.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0px 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0px -1px 0px;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0px -1px 0px}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://connect.facebook.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://connect.facebook.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0px;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
</style>
</head>

<body>
<div class="loading_dimm" style="display:none; z-index:20000;"></div><div class="loading_img" style="display:none; z-index:20001;"></div>

    <span itemscope="" itemtype="http://schema.org/Organization">
        <link itemprop="url" href="https://www.starbucks.co.kr/">
        <a itemprop="sameAs" href="https://www.instagram.com/starbuckskorea"></a>
        <a itemprop="sameAs" href="https://twitter.com/starbuckskorea"></a>
        <a itemprop="sameAs" href="https://www.facebook.com/StarbucksKorea"></a>
        <a itemprop="sameAs" href="https://www.youtube.com/channel/UCaxvyTYdWaDXupmgj5ttDUQ"></a>
        <a itemprop="sameAs" href="https://play.google.com/store/apps/details?id=com.starbucks.co"></a>
        <a itemprop="sameAs" href="https://apps.apple.com/kr/app/id466682252"></a>
        <a itemprop="sameAs" href="https://brand.naver.com/starbucks"></a>
    </span>
    <div id="wrap">
	<jsp:include page="header.jsp" />

	<!-- main visual  /  -->
	<div id="container"><!-- 접근성_20171201 container 추가 -->
		<div id="topWrap">
			<!-- 플로팅 뱃지 안내 -->
			<div class="layer_floating">
				
			</div>
			<!-- //플로팅 뱃지 안내 -->

			
			
				
					<!-- s: 메인 TOP 배너(240919) -->
<style type="text/css">
  .main-visual_wrap {height:32vw; background-image:url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_bg.jpg');}
  .main-visual_wrap .main-visual_inner {max-width:100%;}
  .main-visual_slogan, .btn_slogan {position:absolute; width: 22.76%; left: 11.5%;}
  .main-visual_slogan {top: 35.49%;}
  .btn_slogan {z-index: 10; top: 62.02%; left: 11.5%; text-align: center;}
  .btn_slogan a {width:28%; margin:0 auto; color: #1a3c34; border:2px solid #1a3c34; transition:background-color .7s, color .7s, border-color .7s; -webkit-transition:background-color .7s, color .7s, border-color .7s; text-decoration: none;}
  .btn_slogan a:hover {background-color:#1a3c34; color: #fff; text-decoration: underline;}
  .main-visual_set {height:100%;}
  .set_01 {z-index: 8; top: 35.49%; left: 48.5%; width: 17%;}
  .set_02 {z-index: 9; top: 17.59%; left: 37.5%; width: 15%;}
  .set_03 {z-index: 8; top: 17.59%; right: 24.6%; width: 15%;}
  .set_common:after {display:none;}
  .reserve_magazine_wrap .reserve_detail-btn_wrap {width:100% !important;} /* (필수)리저브 매거진 */
  #topWrap {border-top:0}
  /* media queries pc */
  /* @media screen and (max-width:1400px) {
      .main-visual_wrap {background-position:36% bottom;}
      .main-visual_slogan, .btn_slogan {left:-6%; width: 400px;}
      .set_01 {top: 35.7%; left: 34.5%;}
      .set_02 {top: 35.7%; right: 7.2%;}
      .set_03 {top: 16.3%; left: 35%;}
      .set_04 {top: 19.7%; right: -6.5%;}
      .btn_slogan {top:63.5%;}
  } */
  @media screen and (min-width:960px) and (max-width:1340px) { /* 기존 1130px */
      /*
      .main-visual_wrap {height:41vw; background-position:28% bottom;}
      .main-visual_wrap .main-visual_inner {max-width:100%;}
      .main-visual_slogan, .btn_slogan {top: 34%; left: 6.5%; width: 28%;}
      .btn_slogan {top:62%;}
      .set_01 {top: 34%; left: 41.5%; width: 25%;}
      .set_02 {top: 33.5%; right: 15.2%; width: 20.5%;}
      .set_03 {top: 16.1%; left: 42%; width: 21%;}
      .set_04 {top: 18%; right: 5.4%; width: 23%;}
      */
      .btn_slogan a {font-size: 13px; width:34%}
  }
  /* media queries mobile */
  @media screen and (max-width:960px) { 
      .layer_floating {top:108px; width:25.7%; right:1.8%;} /* 시즌 음료 가림 */     
      .main-visual_wrap {width:auto; height:277vw; background-image:url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_bg_mo.jpg'); background-position:center top; box-sizing:border-box; margin-top:9px;}
      .main-visual_slogan {width: 66.5%;top: 8.5%;left: 50%; transform: translateX(-50%);}
      .main-visual_slogan .m-slogan {width: 100%; display: block;} 
      .main-visual_slogan .pc-slogan {display: none;}
      .pc-drink {display:none;}
      .m-drink {display:block;}
      .set_common {bottom:auto; margin: 0;}
      .set_01 {z-index: 8;top: 20.1%;left: 11.9%;width: 92.8%;max-width: 100%;}
      .set_02 {z-index: 9;top: 39.1%;left: 15%;width: 70.1%;max-width: 100%;overflow: hidden;}
      .set_03 {z-index: 10;top: 60.93%; left: 15%;width: 88.9%;max-width: 100%;}
      .btn_slogan {z-index:10; top:87.21%; left: 50%; transform:translateX(-50%); width:100%; margin:0 auto; padding-top:0; height:auto; bottom:auto;}
      .btn_slogan a {width:31.89%; color:#1a3c34; border-color:#1a3c34; line-height:10vw; font-size:25px; font-weight:bold; border-radius: 3px;}
      .btn_slogan a:hover {background-color:#1a3c34;}
  }
  @media screen and (max-width:480px) {
    .btn_slogan a {font-size:16px;}
  }
  @media screen and (max-width:320px) {
      .main-visual_wrap {height:273.8vw;}
  }
</style>
<div class="main-visual_wrap">
    <div class="main-visual_inner">
        <div class="main-visual_slogan">
          <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_txt01.png" alt="MEET THE BUDDY'S MOMENT" class="pc-slogan">
          <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_txt01_mo.png" alt="MEET THE BUDDY'S MOMENT" class="m-slogan">
        </div>
    
        <div class="main-visual_set">
            <div class="set_common set_01">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink01.png" alt="블랙 글레이즈드 라떼" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink01_mo.png" alt="블랙 글레이즈드 라떼" class="m-drink">
            </div>
            <div class="set_common set_02">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink02.png" alt="마롱 헤이즐넛 라떼" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink02_mo.png" alt="마롱 헤이즐넛 라떼" class="m-drink">
            </div>
            <div class="set_common set_03">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink03.png" alt="골든 에플 블랙 티" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_top_drink03_mo.png" alt="골든 에플 블랙 티" class="m-drink">
            </div>
        </div>
      
        <div class="btn_slogan">
            <a href="https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2621">자세히 보기</a>
        </div>
    </div>
</div>
<!-- e: 메인 TOP 배너(240919) -->
				
				
			
		</div>
		

			
			<section class="line_notice">
				<div class="line_notice_left"></div>
				<div class="line_notice_right"></div>
				<div class="line_notice_bg">
					<div class="line_notice_bgl">
						<div class="line_notice_inner">
							<dl class="line_notice_inner_l">
								<dt class="notice_ttl">
									<img src="https://image.istarbucks.co.kr/common/img/common/notice_ttl.png" alt="공지사항">
								</dt>
								<dd>
									<ul class="news_result">
									</ul>
								</dd>
							</dl>
							<p class="line_notice_inner_r">
								<span><a href="javascript:void(0);" title="공지사항 더보기">더보기</a><!-- 접근성_20171201 title 추가 --></span>
							</p>
						</div>
					</div>
					<div class="line_notice_bgr">
						<a href="javascript:void(0);">
							<p class="prom_ttl">스타벅스 프로모션</p>
							<span class="btn_prom"><img src="https://image.istarbucks.co.kr/common/img/common/btn_prom_down.png" alt="스타벅스 프로모션 펼쳐보기" role="button" /><!-- 접근성_20171201 alt, role 추가 --></span><!-- 150818 성연욱 수정 -->
						</a>
					</div>
				</div>
			</section>
			<!-- notice end -->
			<!-- 프로모션 배너 -->
			<section class="main_prom_bnr">
				<div class="main_prom_bnr_swiper slider">
					<ul class="main_prom_bxslider">
					</ul>
					<div class="main_slider_controller">
						<div class="main_slider_controls"></div>
						<div class="main_slider_pagers"></div>
					</div>
					<p class="main_prevBtn"><a href="javascript:void(0)"><span class="a11y">이전 프로모션</span></a></p>
					<p class="main_nextBtn"><a href="javascript:void(0)"><span class="a11y">다음 프로모션</span></a></p>
				</div>
			</section>
			<!-- 프로모션 배너 end -->
			
			<!-- 메인 스타벅스 리워드 리뉴얼 -->
			<section class="new-rewards_wrap" style="display:none;">
				<div class="new-rewards_inner">
					<div class="new-rewards_logo">
						<img src="https://image.istarbucks.co.kr/common/img/main/rewards-logo.png" alt="Starbucks Rewards" /> <!-- 20200821 수정 -->
					</div>
					
					<div class="new-rewards_conts">
						<div class="info-cont">
							<div class="info-cont_txt">
								<h2>
									스타벅스만의 특별한 혜택, <br class="mobile-br"> <br class="pc-br"><strong>스타벅스 리워드</strong>
								</h2>
								<p>
									<strong>스타벅스 회원이세요?</strong> <br class="mobile-br"> 로그인을 통해 <br class="pc-br">나만의 리워드를 확인해보세요.
									<br>
									<strong>스타벅스 회원이 아니세요?</strong> <br class="mobile-br"> <br class="pc-br">가입을 통해 리워드 혜택을 즐기세요.
								</p>
							</div>
							<div class="btn-signin_group">
								<a href="/mem/join.do" class="btn-signin_join">회원가입</a>
								<a href="javascript:$.loginLib.showLayerLogin();" class="btn-signin_login">로그인</a>
							</div>
						</div>
						
						<div class="gift-cont">
							<div class="gift-cont_txt">
								<p>
									회원 가입 후, 스타벅스 모바일 카드를 <br class="pc-br"><br class="mobile-br"><strong>"나에게 선물하기"로 구매하시고, <br class="mobile-br">편리하게 등록하세요!</strong>
									<br>
									카드를 등록하여 스타벅스 리워드 회원이 되신 후, <br class="pc-br"><br class="mobile-br">첫 구매를 하시면 무료 음료쿠폰을 드립니다!
								</p>
								<!-- 240412 문구 수정 -->
							</div>
							<div class="btn_egift">
								<a href="/msr/sceGift/gift_step1.do">스타벅스 모바일 카드 선물하기</a> <!-- 240412 문구 수정 --> 
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- //메인 스타벅스 리워드 리뉴얼 -->
			
			<div class="line_msr" style="display:none;">
				<div class="line_msr_wrap msr_new"><!-- 20200120 class="msr_new" 추가 -->
					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<p class="level_star_bg en">0</p>
						<div class="msr_info_area">
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en">Gold Level</strong><br><strong>무료음료</strong> 획득 별까지<br><strong>3개</strong> 남았습니다. --></p>
							<p class="btn_reward_level"><a href="/my/reward.do" title="마이 리워드" class="btn_reward">리워드 및 혜택</a></p>
						</div>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- MSR 회원 end -->
					<!-- 일반회원 -->
					<div class="msr_lead" style="display:none;">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="msr/msreward/level_benefit.do" title="회원 등급별 혜택">
						<p class="icon_msr_cup"></p>
						<div class="msr_info_area">
							<p class="msr_lead_txt">
								<span class="user_greet_txt"><strong><!-- 스벅매니아 --></strong>님, 안녕하세요!</span>
								<span class="userNextStarTxt"><em>혜택에 편리함까지 더한</em> 스타벅스 리워드를 즐겨보세요.</span>
							</p>
						</div>
						</a>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line" aria-hidden="true"></span><!-- 접근성_20171106 aria 추가 -->

					<!-- [D]: 240220 : 카드인포영역 교체 - 결제시스템고도화 -->
					<!-- s: 240220 : 스타벅스 모바일 카드 구매 -->
					<div class="sb_card_regi">
						<a href="/msr/sceGift/gift_step1.do">
							<p class="icon_add_card" onclick="location.href ='/msr/sceGift/gift_step1.do';"><img alt="카드등록 아이콘" src="https://image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
							<p class="sb_card_regi_txt"><strong>스타벅스 모바일 카드 구매하기</strong><br />스타벅스 카드를 구매하고<br />특별한 혜택을 이용하세요.</p>
							<a class="btn_main_card_regi" href="" required="login">구매하기</a>
						</a>
					</div>
					<!-- e: 240220 : 스타벅스 모바일 카드 구매 -->
					<!-- [D]: 240220 : 카드인포영역 교체 end -->
				</div>
			</div>
			

		
		
			
				<!-- s: 시즌 프로모션 배너(240919) -->
<style type="text/css">
  #main-bean_wrap {background: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_bg.jpg') center/cover no-repeat; height: 550px; position: relative;}

  /*
  #main-bean_wrap:before, #main-bean_wrap:after {position: absolute; bottom: 0; display: block; background-repeat: no-repeat; content: '';}
  #main-bean_wrap:before {bottom: 0; left: 0; width: 234px; height: 234px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2022/m_2022_christmas_bean_bg_star_left.png'); background-position: left bottom;}
  #main-bean_wrap:after {bottom: 0; right: 0; width: 234px; height: 234px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2022/m_2022_christmas_bean_bg_star_right.png'); background-position: right bottom;}
  */

  .main-bean_inner {max-width: 1400px;}
  .bean_img_box {z-index: 9; top: 15%; left: 19%; width: 41%;}
  .bean_txt_box {z-index: 9; top: 50%; transform:translateY(-50%); right: 5.4%; width: calc(33% + 1px);}

  .btn_bean_detail {margin-top: 38px;}
  .btn_bean_detail a {color: #2e2823 ; border: 2px solid #2e2823; transition: background-color .7s, color .7s; -webkit-transition: background-color .7s, color .7s;}
  .btn_bean_detail a:hover {background-color: #2e2823; color: #fff;}

  @media all and (max-width:1700px) {
  #main-bean_wrap:before,
  #main-bean_wrap:after {background-size: 86%}

  .main-bean_inner {max-width: 1124px;}
  }

  @media all and (max-width:1500px) {
  #main-bean_wrap {position: relative; height: 500px;}
  #main-bean_wrap:before,
  #main-bean_wrap:after {background-size: 72%}
  .bean_img_box {top:17.8%}

  /* .bean_img_box {z-index: 9; top: 50%; transform:translateY(-50%); left: 32.9%; width: 25%;}
  .bean_txt_box {z-index: 9; top: 34%; right: 4.3%; width: 40%;}
  .btn_bean_detail {margin-top: 34px;} */
  }

  @media all and (max-width:1200px) {
  #main-bean_wrap {height: 43vw;}
  #main-bean_wrap:before,
  #main-bean_wrap:after {background-size: 65%}
  /* .bean_txt_box {right: 16.9% !important; top: 33%; width: 26.6%;} */
  }

  @media all and (max-width:1100px) {
  #main-bean_wrap:before,
  #main-bean_wrap:after {background-size: 60%;}
  .bean_img_box {left: 24.6%}
  .bean_txt_box {right: 9.9%;}
  }

  @media all and (max-width:960px) {
  #main-bean_wrap {background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_bg_mo.jpg'); height: 206.25vw;}

  #main-bean_wrap:before,
  #main-bean_wrap:after {display: none;}

  .bean_img_box {z-index: 10; top: 15% !important; left: 0 !important; right: 0 !important; width: 100%; /*max-width: 520px; transform: translate(-50%, 0);*/}
  .bean_txt_box {z-index: 10; top: 53.9% !important; left: 0 !important; right: 0 !important; bottom:auto !important; max-width: 100% !important; width: 100% !important; transform: translate(0) !important;}
  .bean_img_box img, .bean_txt_box img {width: 100%;}

  .btn_bean_detail {margin: 6.2% auto 0; width: 36%; height:auto;}
  .btn_bean_detail a {line-height:10vw; font-size:25px; font-weight:bold; color: #2f2923; border-color: #2f2923; border-radius: 3px;}
  .btn_bean_detail a:hover {background-color: #2f2923; color: #fff;}

  .m-bean, .m-bean-txt {display: block;}
  .pc-bean, .pc-bean-txt {display: none;}
  }
  
  @media all and (max-width:480px) {
  /* .bean_txt_box {transform: translate(-1.7%, -20%)} */
  .btn_bean_detail a {font-size:16px;}
  }

  @media all and (max-width: 360px) {
  .btn_bean_detail a {font-size: 14px; line-height: 36px;}
  }
</style>
<section id="main-bean_wrap">
  <div class="main-bean_inner"> 
  <div class="bean_img_box" style="opacity: 1; left: 17%;">
      <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_beans.png" alt="밀라노 솔레 & 밀라노 루나" class="pc-bean">
      <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_beans_mo.png" alt="밀라노 솔레 & 밀라노 루나" class="m-bean">
  </div>

  <div class="bean_txt_box" style="opacity: 1; right: 16.3%;">
      <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_txt.png" alt="밀라노 & 시애틀의 스타박스 마스터 로스터들이 공동 개발한 스타벅스 밀라노 듀에토(Duetto) 원두" class="pc-bean-txt">
      <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_promotion_txt_mo.png" alt="밀라노 & 시애틀의 스타박스 마스터 로스터들이 공동 개발한 스타벅스 밀라노 듀에토(Duetto) 원두" class="m-bean-txt">
      <div class="btn_bean_detail">
        <a href="https://www.starbucks.co.kr/whats_new/newsView.do?seq=5662">자세히 보기</a>
      </div>
    </div>
  </div>
</section>
<!-- e: 시즌 프로모션 배너(240919) -->
			
			
		
		

		
		
			
				<!-- s::메인 리저브 배너(240820) -->
<style type="text/css">
    .reserve_wrap {position:relative; height:400px; background:url("https://image.istarbucks.co.kr/upload/common/img/main/2024/240820_pc_reserve_bg_1.jpg") no-repeat center top; background-size:cover; overflow:hidden}
    
    .reserve_inner {position:relative; width:100%; height:100%; margin:0 auto;}
    
    .reserve_title img,
    .reserve_visual img {width:auto;}
    
    .reserve_title {position:relative; z-index:10; padding-top:65px; max-width:1080px; width:100%; margin-left:auto; margin-right:auto; box-sizing:border-box;}
    .reserve_title img {transform:translateX(230px);}
    
    .reserve_visual {display:block; position:absolute; right:-2%; bottom:0; opacity:0;}
    .reserve_visual .reserve_visual-pc {max-width:none;}
    
    /*
    .reserve_visual::before {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/221220_pc_reserve_left_bg.png"); position: absolute; left: 50px; bottom: -1%;}
    .reserve_visual::after {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/221220_pc_resserve_right_bg.png"); position: absolute; right: 0; bottom: -1%;}
    */
    
    .reserve_detail-btn_wrap {position:relative; z-index:10; max-width:1080px; margin: 30px auto; padding-left: 306px; box-sizing:border-box;} 
    .reserve_detail-btn a {display:block; width:100%; height:100%; color: #e8b679; font-size:14px; line-height:36px; text-align:center; border:2px solid #e8b679; border-radius:5px; box-sizing:border-box; transition:background-color .7s, color .7s, border-color .7s; -webkit-transition:background-color .7s, color .7s, border-color .7s}
    .reserve_detail-btn a:hover {color:#fff; background-color:#e8b679;}
    
    .reserve_magazine_wrap .reserve_visual:before, .reserve_magazine_wrap .reserve_visual:after {display:none;}
    .reserve_magazine_wrap .reserve_detail-btn_wrap {width:auto;padding-left:0;}
    @media screen and (min-width:2000px){
        .reserve_visual {right:0; left:0; text-align:center;}
    }
    @media screen and (max-width:1900px){
        .reserve_inner:before {top:12px; width:180px; height:109px; background-size:cover;}
        .reserve_visual {right:-3%;}
    }
    @media screen and (max-width:1800px){
        .reserve_visual {right:-5%;}
    }
    @media screen and (max-width:1700px){
        .reserve_visual {right:-8%;}
    }
    @media screen and (max-width:1600px){
        .reserve_visual {right:-12%;}
    }
    @media screen and (max-width:1500px){
        .reserve_visual {right:-17%;}
    }
    @media screen and (max-width:1400px){
        .reserve_visual {right:-22%;}
    }
    @media screen and (max-width:1300px){
        .reserve_visual {right:-27%;}
    }
    @media screen and (max-width:1200px){
        .reserve_visual {right:-33%;}
    }
    @media screen and (max-width:1120px){
        .reserve_wrap {height:335px;}
    
        .reserve_inner:before {display:none;}
    
        .reserve_title {max-width:none; width:60%; margin-right:0; margin-left:0; padding-top: 48px; padding-left:23%;}
        .reserve_visual {right:-42%; bottom:-6%;}
        .reserve_title img {transform:none;}
    
        .reserve_detail-btn_wrap {max-width:none; width:40%; margin-left:0; padding-left: 29.5%;}
    }
    @media screen and (max-width:1050px){
        .reserve_visual {right:-42%;}
    }
    @media screen and (max-width:980px){
        .reserve_visual {right:-50%;}
    }
    @media screen and (max-width:930px){
        .reserve_wrap {height:100%;}
        .reserve_wrap:after {display:none;}
        
        .reserve_title {display:none}
        
        .reserve_visual {bottom:0; right:auto; width:100%;}          
        .reserve_visual img {max-width:none; width:100%;}
    
        .reserve_visual::before {display: none;}
        .reserve_visual::after {display: none;}
        
        .reserve_detail-btn_wrap {position:static; width:auto; margin: 0; padding-left:0;}
        .reserve_detail-btn {position:absolute; z-index:10; width: 36%; height: 6.5%; left:32%; bottom: 9.5%;}
        .reserve_detail-btn a {color: #fff; border: 2px solid #fff; border-radius: 2px; font-size: 3.8vw; line-height:11vw; font-weight: bold;}
        .reserve_detail-btn a:hover {color: #000; background-color:#fff;}
    }
    @media screen and (max-width:480px){
        .reserve_detail-btn a {line-height: 10vw;}
    }
  </style>
  <section class="reserve_wrap">
      <div class="reserve_inner">
          <div class="reserve_title">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/240820_pc_reserve_logo.png" alt="BRAZIL" class="reserve_visual-pc">
          </div>
          
          <div class="reserve_visual" style="opacity: 1;">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/240820_pc_reserve_coffee_bg.png" alt="" class="reserve_visual-pc">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2024/240820_m_reserve_bg.jpg" alt="" class="reserve_visual-m">
          </div>
          
          <div class="reserve_detail-btn_wrap">
              <div class="reserve_detail-btn">
                  <a href="https://www.starbucks.co.kr/whats_new/newsView.do?seq=5592">자세히 보기</a>
              </div>
          </div>
      </div>
  </section>
  <!-- e::메인 리저브 배너(240820) -->
			
			
		
		


		
		
			
				<!-- s: Pick Your Favorite(240919) -->
<style type="text/css">
  #favWrap {background:url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_bg.jpg') center center fixed no-repeat #45434c; background-size: auto 87%; padding:0; position:relative; background-position: bottom;}
  .fav_img {top: 90px; right: -210px; width: 953px; height: 651px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_img.png');}
  .fav_prod_txt01 {background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_txt01.png'); top: 170px;}
  .wrap_inner .fav_prod_txt02{top: 420px; left:100px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_txt02.png');}
  .btn_fav_prod {top: 600px;}

  @media screen and (max-width:1400px) {
  .fav_img {top: 50%; transform:translateY(-50%); right: 60px; width: 720px; height: 475px;}
  }

  @media screen and (max-width:1100px) {
  .fav_img {top: 50%; transform:translateY(-50%); right: 160px; width: 570px; height: 380px;}
  }

  @media screen and (max-width:960px) {
  #favWrap {background: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_bg_mo.jpg') center -6px no-repeat; background-size: 100% auto; height: 233.75vw; padding: 0; position: relative; width: 100%;}
  .fav_img {position: static; top: auto; right: auto; width: 100vw; height: 30%; margin: 155px auto 0; transform: translateY(0);}
  .fav_prod_txt01 {top:64.7% !important;  width:62.8vw; height:83px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_txt01_mo.png'); transform: translateX(-50%); margin-left:0}
  .wrap_inner .fav_prod_txt02 {top: 73% !important; left:50%; width:82.5vw; height: 100%; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_txt02_mo.png'); transform: translateX(-50%); margin-left:0}
  .btn_fav_prod {top: 87% !important; width: 37vw !important; height: auto !important; margin-top: 0; margin-left: auto; transform: translateX(-50%);}
  .btn_fav_prod a {border-radius: 2px; font-size: 25px; line-height: 10vw;}
  }

  @media screen and (max-width:640px) {
    #favWrap {background-position: center -6px; background-size: cover;}
    .fav_img {width: 100vw; /*height: 314px;*/ margin: 24.6vw auto 0; background-image:url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_img_mo.png') ;}
    /* .btn_fav_prod {width: 115px; height: 34px; line-height: 32px; margin-top: 0;} */
    .btn_fav_prod {width: 36vw !important; height: auto !important; margin-top: 0; margin-left: auto; transform: translateX(-50%);}
    .btn_fav_prod a {line-height: 10vw;}
    .fav_prod_txt01 {top:65.4% !important; width:62.8vw; }
    .wrap_inner .fav_prod_txt02 {top:74% !important; width:81vw; height:100%; }
    .btn_fav_prod {top:88% !important;}
  }

  @media screen and (max-width:480px) {
    #favWrap {background: url('https://image.istarbucks.co.kr/upload/common/img/main/2024/2024_october_pick_bg_mo.jpg') center -3px no-repeat #16151b; background-size: cover; padding: 0; position: relative; width: 100%;}
    /* .fav_img {width: 34%; height: 35%; margin: 65px auto 0;} */
    .btn_fav_prod a {font-size: 14px;}
  }

  @media screen and (max-width: 375px) {
    /* .fav_img {width: 32%; height: 32%;} */
  }  
</style>
<section id="favWrap" class="winter_fav_bg">
  <div class="wrap_inner">
  <div class="fav_prod_txt01">PICK YOUR FAVORITE</div>
  <div class="fav_prod_txt02">다양한 메뉴를 스타벅스에서 즐겨보세요. 스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료, 스타벅스 커피와 완벽한 어울림을 자랑하는 푸드, 다양한 시도와 디자인으로 가치를 더하는 상품, 소중한 사람에게 마음을 전하는 가장 좋은 방법 스타벅스 카드</div>
  <div class="fav_img"></div>
  <div class="btn_fav_prod"><a href="https://www.starbucks.co.kr/menu/index.do">자세히 보기</a></div>
  </div>
</section>
<!-- e: Pick Your Favorite(240919) -->
			
			
		

		


			<!-- 메뉴 -->
			<section id="menuWrap">
				<div class="wrap_inner">
					<div class="menu_txt01"></div>
					<div class="menu_txt02"></div>
					<div class="menu_btn"><a href="/menu/index.do">자세히 보기</a></div>
					<div class="menu_img01"></div>
				</div>
			</section>
			<!-- 메뉴 end -->
			
			<!-- 20200619 수정 -->
			<!-- <section class="reserve3Wrap">
				<div class="reserve3_pc">
					<div class="reserve_left">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_pc.png" alt="" />
					</div>
					<div class="reserve_right">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_pc.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="reserve3_mobile">
					<div class="reserve_top">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_mobile.png" alt="" />
					</div>
					<div class="reserve_bottom">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_mobile.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="look-detail_btn">
					<a href="/coffee/reserve_magazine_list.do">EXPLORE OUR STORY</a>
				</div>
			</section> 20210928 삭제 -->
			<!-- //20200619 수정 -->
			<!-- 20210928 추가 -->
			<section class="reserve_magazine_wrap">
                <div class="reserve_inner">
                    <div class="reserve_title">
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_text_pc.png" alt="리저브 매거진에서 일상 속 특별함을 만나보세요." class="reserve_visual-pc"> <!-- 220120 수정 -->
                    </div>
                    
                    <div class="reserve_visual">
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_visual_pc.png" alt="" class="reserve_visual-pc"> <!-- 220120 수정 -->
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_visual_m.jpg" alt="" class="reserve_visual-m"> <!-- 220120 수정 -->
                    </div>
                    
                    <div class="reserve_detail-btn_wrap">					
                        <div class="reserve_detail-btn">
                            <a href="/coffee/reserve_magazine_list.do">자세히 보기</a>
                        </div>
                    </div>
                </div>
            </section>
			<!-- 20210928 추가 -->
			<!-- 리저브매장 end -->

			<!-- 매장 -->
			<section id="storeWrap">
				<div class="wrap_inner">
					<div class="store_exp_img01"></div>
					<div class="store_exp_img02"></div>
					<div class="store_exp_img03"></div>
					<div class="store_exp_img04"></div>
					<div class="store_txt01">스타벅스를 가까이에서 경험해보세요. 고객님과 가장 가까이 있는 매장을 찾아보세요!</div>
					<div class="store_txt02">차별화된 커피 경험을 누릴 수 있는 리저브 매장, 다양한 방법으로 편리하게 즐길 수 있는 드라이브 스루 매장, 함께해서 더 따뜻할수 있는 지역사회 소통 공간 커뮤니티 매장</div>
					<div class="store_btn"><a href="/store/store_map.do">매장 찾기</a></div>
				</div>
			</section>
			<!-- 매장 end -->
			</div><!-- // 접근성_20171201 container 추가 -->

	<jsp:include page="footer.jsp" />
    <script>
                // 160902 박종현 추가 - 랜덤 노출 영역 선택
                if ((new Date()).getTime() % 2 == 0) {
                    $("#autumn1_img1, .autumn1_bean1_wrap").show();
                    $("#autumn1_img2, .autumn1_bean2_wrap").hide();
                } else {
                    $("#autumn1_img1, .autumn1_bean1_wrap").hide();
                    $("#autumn1_img2, .autumn1_bean2_wrap").show();
                }
    
                var $roll_max = 5;
                var $roll_type = "STB2701";
    
                function GaFloating(msg){
                    ga('create', 'UA-66158138-1', 'auto');
                    ga('send', 'event', 'ACTION_스타벅스 홈페이지_플로팅 배너_클릭', 'click', msg);
                }
    
                $(document).ready(function(){
                    
                    __ajaxCall("/interface/checkLogin.do", {}, true, "json", "post"
                            ,function (_response) {
                                if (_response.result_code == "SUCCESS") {
                                    $(".top_msr_wrap").show();
                                    $(".top_msr_nologin").hide();
                                    $(".sign_out").show();
                                    $(".sign_in").hide();
                                    $(".footer_util_btn .last").hide();	//[150826 추가] 모바일 Join Us 버튼 숨김
                                    
                                    // MSR 영역 셋팅
                                    $.loginLib.getMsrRewardSummary();
                                } else {
                                    $(".top_msr_wrap").hide();
                                    $(".top_msr_nologin").show();
                                }
                            }
                            ,function (_error) {
                            }
                        );
                    
                    /**
                      $('.line_notice_inner_l dd ul').inewsticker({
                        speed       : 2500,
                        effect      : 'slide',
                        dir         : 'ltr',
                        font_size   : 13,
                        color       : '#fff',
                        // font_family : 'arial',
                        delay_after : 1000
                    }); 
                    **/
    
                    var option = {
                            'MENU_CD' : "STB3120"
                    };
                    __ajaxCall('/banner/getBannerList.do', option , true, "JSON", "POST", 
                    function(data) {
                        if(data.list.length > 0) {
                            
                            $.each( data.list, function(x, y) {
                                tmpStr = "";
                                tmpTarget = "";
    
                                if(y.banner_GBN == "I") {
                                    tmpStr += '<li>';
                                    tmpStr += '    <img alt="'+y.alt_MSG+'" src="https://image.istarbucks.co.kr/upload/banner/'+y.img_NM+'">';
                                    if(y.links != "") {
                                        if(y.banner_TARGET == "Y") {
                                            tmpTarget = "target='_blank'";
                                        }
                                        tmpStr += '    <a href="'+y.links+'" '+tmpTarget+'>자세히 보기</a>';
                                    }
                                    tmpStr += '</li>';
                                }
                                
                                $('.main_prom_bxslider').append(tmpStr);
                            });
                            
                            /* 150709 수정 -구명준 */
                            var mpSlider = $('.main_prom_bxslider').bxSlider({
                                onSlideAfter:function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
                                    $('.active_slide').removeClass('active_slide');
                                    $('.main_prom_bxslider > li').eq(currentSlideHtmlObject + 1).addClass('active_slide')
                                },
                                onSliderLoad: function () {
                                    $('.main_prom_bxslider > li').eq(1).addClass('active_slide')
                                },
                                infiniteLoop:true,
                                controls:true,
                                auto:true,
                                autoControls:true,
                                autoControlsCombine:true,
                                pause:2000,
                                autoHover:true,
                                pagerSelector: '.main_slider_pagers',
                                autoControlsSelector: '.main_slider_controls'
                            });
    
                            $(".main_prevBtn a").on("click",function(e){
                                mpSlider.goToPrevSlide();
                                e.preventDefault();
                            });
    
                            $(".main_nextBtn a").on("click",function(e){
                                mpSlider.goToNextSlide();
                                e.preventDefault();
                            });
    
                            $('.main_prom_bnr_swiper div.bx-viewport').append('<p class="bnr_swiper_left_mask"></p><p class="bnr_swiper_right_mask"></p>');
                                
                            /* 150709 수정 -구명준  end */
    
    
                            $('.line_notice_bgr').click(function(){
                                mpSlider.reloadSlider();
                            });
                        }
                    },
                    function() {
                    });
    
                    $('#reserve_medal').flip({
                        axis: 'y',
                        reverse: true,
                        trigger: 'hover'
                    });
                    
                       // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩
                      $('#reserve2_medal').flip({
                        axis: 'y',
                        reverse: true,
                        trigger: 'manual'
                      }).bind('mouseenter focusin',function(){
                        $(this).flip(true);
                      }).bind('mouseleave focusout', function () {
                        $(this).flip(false);
                      });
                       // 접근성_20171201 이벤트 트리거 변경 및 이벤트 바인딩 end
                    
                    /*
                    $('.reserve_medal02').bind('click', function() {
                        location.href = "/store/store_drive.do";
                    });
                    */
                    
                    
                    
                    
                    
                });
    
    
                /*
                var player;
    
                function onYouTubePlayerAPIReady() {
                    player = new YT.Player('teaseYt', {
                        events: {
                            'onReady': onPlayerReady
                        }
                    });
                }
    
                function onPlayerReady(event){
                    $(".bnr_teaching a").click(function() {
                        event.target.playVideo();
                    });
                }
    
                var tag = document.createElement('script');
                tag.src = '//www.youtube.com/player_api';
                var firstScriptTag = document.getElementsByTagName('script')[0];
                firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
                */
    
                $(document).ready(function () {
                    
                    //20171227 삭제
                    //20171123 추가 : 모바일 메인 퀵메뉴 높이값 제어
                    /*$(window).scroll(function(){  
                        if($(window).scrollTop() > 150){ //20171207 수정
                            $(".layer_nitro2").removeClass('layer_nitro2Position');
                        }else{
                            $(".layer_nitro2").addClass('layer_nitro2Position');
                        }
                    });*/
                
                    /* 레드컵 유튜브 */
                    $('.btn_redcup_teasing a, .m_btn_red_movie a').click(function(){
                        $('.redcup_dimm, .redcup_yt_layer').fadeIn();
                    });
                    $('.redcup_yt_close a').click(function(){
                        $('.redcup_dimm, .redcup_yt_layer').fadeOut();
                        var yt = $('#ddayYt').attr('src');
                        $('#ddayYt').attr('src', '');
                        $('#ddayYt').attr('src', yt);
                    });
                    /* 레드컵 유튜브 end */
    
                    /*김민호 수정*/
                    $('#drive_medal').flip({
                        axis: 'y',
                        reverse: true,
                        trigger: 'hover'
                    });
                    /*김민호 수정*/
    
                    /* valentine ani */
                    $('.valentine_layer_close a').bind('click', function(){
                        $('.valentine_layer').fadeOut();
                    });
                    function rotate() {
                        $('.ico_bird1').animate({
                            'rotate':'-15deg'
                        }, 2000).animate({
                            'rotate':'0'
                        }, 2000, rotate);
                    }
                    rotate();
                    function rotate2() {
                        $('.ico_bird2').animate({
                            'rotate':'15deg'
                        }, 2000).animate({
                            'rotate':'0'
                        }, 2000, rotate2);
                    }
                    rotate2();
    
                    setTimeout(function(){
                        heart();
                    }, 6000);
                    
                    function heart() {
                        if ((myWindow > 960)) {
                            $('.ico_heart').jsMovie({
                                sequence:'##.png',
                                from:1,
                                to:22,
                                folder:'common/img/main/valentine/ico_heart/',
                                fps:10,
                                height:129,
                                width:155,
                                playOnLoad:true,
                                performStop:false,
                                repeat:false
                            });
                        } else if ((myWindow > 640) && (myWindow <= 960)) {
                            $('.ico_heart').jsMovie({
                                sequence:'##.png',
                                from:1,
                                to:22,
                                folder:'common/img/main/valentine/ico_heart/',
                                fps:10,
                                height:129,
                                width:155,
                                playOnLoad:true,
                                performStop:false,
                                repeat:false
                            });
                        } else if ((myWindow > 480) && (myWindow <= 640)) {
                            $('.ico_heart').jsMovie({
                                sequence:'##.png',
                                from:1,
                                to:22,
                                folder:'common/img/main/valentine/ico_heart/',
                                fps:10,
                                height:129,
                                width:155,
                                playOnLoad:true,
                                performStop:false,
                                repeat:false
                            });
                        } else {
                            $('.ico_heart').jsMovie({
                                sequence:'##.png',
                                from:1,
                                to:22,
                                folder:'common/img/main/valentine/ico_heart/',
                                fps:10,
                                height:129,
                                width:155,
                                playOnLoad:true,
                                performStop:false,
                                repeat:false
                            });
                        }
                    }
                    /* valentine ani end */
                    
                    
                    $("#NoMore").on("click", function () {
                        Cookies.setCookie("notTodayColdBrew", "Y", 1);
                        $(".layer_coldbrew").fadeOut();
                    });
                    if (Cookies.getCookie("notTodayColdBrew") != "Y") {
                        $(".layer_coldbrew").fadeIn();
                    }
                    
                    /* $(".NoMoreToday_20161021").on("click", function () {
                        Cookies.setCookie("notToday20161021", "Y", 1);
                        $(".hologram_dimm, .hologram_layer_wrap").fadeOut();
                    });
                    if (Cookies.getCookie("notToday20161021") != "Y") {
                        $(".hologram_dimm, .hologram_layer_wrap").fadeIn();
                    }
                    $(".hologram_close").on("click", function () {
                        $(".hologram_dimm, .hologram_layer_wrap").fadeOut();
                    }); */
                    
                    /* 161020 스크립트 추가 */
                    $('input[type=checkbox]').ezMark();
                    function lightning(){
                        $('.lightning').animate({
                            'opacity':'1'
                        }, 2000).animate({
                            'opacity':'0'
                        }, 2000, lightning);
                    }
                    lightning();
    
                    $('.hologram_close a').click(function(){
                        $('.hologram_layer_wrap, .hologram_dimm').fadeOut();
                    });
                    
                    // popup 오늘 하루 보지 않기
                    function getCookie(name) {
                        var nameOfCookie = name + "=";
                        var x = 0;
                        while ( x <= document.cookie.length ) {
                            var y = (x+nameOfCookie.length);
                            if ( document.cookie.substring( x, y ) == nameOfCookie ) {
                                if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length;
                                return unescape( document.cookie.substring( y, endOfCookie ) );
                            }
                            x = document.cookie.indexOf( " ", x ) + 1;
                            if ( x == 0 ) break;
                        }
                        return "";
                    }
                    function setCookie(name, value, expiredays) {
                        var todayDate = new Date();
                        todayDate.setDate( todayDate.getDate() + expiredays );
                        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
                    }
    
                    var ckNameNoPop1Day = "NO_POP_AUTUMN_1_DAY";
    
                    $("#ddayNo").on("click", function () {
                        $('.hologram_layer_wrap, .hologram_dimm').fadeOut();
                    });
                    
                    if (getCookie(ckNameNoPop1Day) != "Y") {
                        $('.hologram_layer_wrap, .hologram_dimm').fadeIn();
                    }
                    /* 161020 스크립트 추가 end */
                    
                    
                    
                });
            </script>
            <script src="/common/js/inewsticker.js"></script>
            
            <script src="/common/js/bbs/main_rolling.js"></script>
            <script src="/common/js/main/index.js?v=200907"></script>
            
            
            
        
    <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div><iframe frameborder="0" scrolling="no" style="background-color: transparent; border: 0px; display: none;"></iframe><div id="GOOGLE_INPUT_CHEXT_FLAG" style="display: none;" input="" input_stat="{&quot;tlang&quot;:true,&quot;tsbc&quot;:true,&quot;pun&quot;:true,&quot;mk&quot;:true,&quot;ss&quot;:true}"></div>
</body>
</html>