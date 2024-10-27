<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>









<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image"
	content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title>
<link rel="shortcut icon"
	href="../common/img/common/favicon-1.ico?v=200828" type="image/ico">
<!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../common/css/reset-1.css" rel="stylesheet">
<link href="../common/css/style-1.css?v=230809" rel="stylesheet">
<link href="../common/css/jquery.bxslider-1.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper-1.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper.scrollbar-1.css"
	rel="stylesheet">
<link href="../common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="../common/css/jquery.scrollbar-1.css" rel="stylesheet">
<link href="../common/css/jquery-ui-1.css" rel="stylesheet">
<link href="../common/css/ezmark-1.css" rel="stylesheet">
<link href="../common/css/style_dt-1.css?v=240904" rel="stylesheet">



<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-66158138-1', 'auto');
	ga('send', 'pageview');
</script>





<script type="text/javascript">
	var eFrequencyYn = 'N';
	var eFrequencySeq = '260';
	var eFrequencyPlannerYn = 'N';
</script>

<link href="../common/css/style_menu-3.css?v=230724" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div id="wrap">

		<script>
			//appId      : '1012019678818238',
			window.fbAsyncInit = function() {
				FB.init({
					appId : '179159949450639',
					xfbml : true,
					version : 'v2.4'
				});
			};

			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) {
					return;
				}
				js = d.createElement(s);
				js.id = id;
				js.src = "//connect.facebook.net/ko_KR/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		</script>


		<!-- 접근성_20171106 건너뛰기 링크  추가 -->
		<div id="skip-menu">
			<a href="#gnb">메뉴바로가기</a> <a href="#container">콘텐츠 바로가기</a>
		</div>
		<!-- 접근성_20171106 건너뛰기 링크  추가 끝 -->


		<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 -->



		<!-- 로그인 팝업 위치 이슈로 인해 위치 변경 -->
		<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 end -->




		<!-- MSR 영역 -->














		<!-- container -->
		<div id="container">
			<!-- 서브 타이틀 -->
			<div class="sub_tit_wrap">
				<div class="sub_tit_inner">
					<h2></h2>

					<ul class="smap">
						<li><a href="/index.do"><img
								src="../common/img/menu/icon_home.png" alt="홈으로"></a></li>
						<li><img class="arrow"
							src="../common/img/menu/icon_arrow-1.png" alt="하위메뉴"></li>
						<li class="en"><a href="index.do-1.html">MENU</a></li>
						<li><img class="arrow"
							src="../common/img/menu/icon_arrow-1.png" alt="하위메뉴"></li>
						<li><a href="drink_list.do-11.html">음료</a></li>
						<li><img class="arrow"
							src="../common/img/menu/icon_arrow-1.png" alt="하위메뉴"></li>
						<li><a href="javascript:void(0)" class="this">${drinkInfo.name }</a></li>
					</ul>


				</div>
			</div>
			<!-- 서브 타이틀 end -->
			<div class="content02">
				<!-- 제품 상세보기 -->
				<div class="product_view_wrap1">
					<div class="product_view_pic">
						<div class="product_big_pic">
							<p>
								<a href="javascript:void(0)" tabindex="-1" aria-hidden="true"
									role="presentation"> <!-- 접근성_20171123 tabindex, aria, role 추가 -->
									<img class="zoomImg" src="${drinkInfo.URL }"
									data-zoom-image="${drinkInfo.URL }" alt="상세이미지">
								</a>
							</p>
							<p class="more_btn">
								<a href="javascript:void(0)" tabindex="-1" aria-hidden="true"
									role="presentation"><img src="../common/img/menu/more.png"
									alt="상세이미지"></a>
								<!-- 접근성_20171123 alt 추가 -->
							</p>
						</div>
						<div class="product_thum_wrap" id="product_thum_wrap">
							<ul class="product_thum">
								<a href="javascript:void(0)" data-image="${drinkInfo.URL}"
									data-zoom-image="${drinkInfo.URL}"
									class="elevatezoom-gallery active"><img
									src="${drinkInfo.URL }" alt="상세이미지 1번"></a>
							</ul>
						</div>
					</div>
					<div class="product_view_detail">
						<div class="myAssignZone">
							<h4>${drinkInfo.name}
								<br> <span>${drinkInfo.engName }</span>
							</h4>
							<p class="t1">${drinkInfo.content }</p>
							<!-- s: 230623 등록 버튼 위치이동 및 디자인 변경 -->
							<!-- 
								<div class="myDrink"><a href="javascript:void(0)" role="button" title="나만의 음료 등록 옵션 열기">나만의 음료로 등록</a>접근성_20171123 role, title 추가</div>
								 -->
							<!-- e: 230623 등록 버튼 위치이동 및 디자인 변경 -->
						</div>
						<div class="m_view_slide">
							<ul class="m_view_slider">
							</ul>
							<div class="m_view_controller">
								<div class="m_view_controls"></div>
								<div class="m_view_pagers"></div>
							</div>
							<p id="prevBtn">
								<a href="javascript:void(0)" role="button">이전 버튼</a>
								<!-- 접근성_20171123 role 추가 -->
							</p>
							<p id="nextBtn">
								<a href="javascript:void(0)" role="button">다음 버튼</a>
								<!-- 접근성_20171123 role 추가 -->
							</p>
						</div>
						<form action="" method="post">
							<fieldset>
								<legend class="hid">제품 영양 정보</legend>
								<div class="product_view_info">
									<div class="product_info_head">
										<p class="tit">제품 영양 정보</p>
										<div class="product_select_wrap2">

											<div class="selectTxt2" id="product_info01">
												<p>${size.sizeName}
													/ <b>${size.volume}</b>
												</p>
											</div>

											<div class="select_box select_box04" style="display: none;"
												id="productSelectBox">
												<label class="value" for="product_info02">일반</label> <select
													title="제품 영양 정보" id="product_info02">
													<option value="일반">일반</option>
													<option value="라이트">라이트</option>
												</select>
											</div>
										</div>
									</div>
									<div class="product_info_content">
										<ul>
											<li class="kcal">
												<dl>
													<dt>1회 제공량 (kcal)</dt>
													<dd>${drinkInfo.kcal }</dd>
												</dl>
											</li>
											<li class="sat_FAT">
												<dl>
													<dt>포화지방 (g)</dt>
													<dd>${drinkInfo.satFat }</dd>
												</dl>
											</li>
											<li class="protein">
												<dl>
													<dt>단백질 (g)</dt>
													<dd>${drinkInfo.protein }</dd>
												</dl>
											</li>
										</ul>
										<ul>
											<li class="sodium">
												<dl>
													<dt>나트륨 (mg)</dt>
													<dd>${drinkInfo.sodium }</dd>
												</dl>
											</li>
											<li class="sugars">
												<dl>
													<dt>당류 (g)</dt>
													<dd>${drinkInfo.sugars }</dd>
												</dl>
											</li>
											<li class="caffeine last">
												<dl>
													<dt>카페인 (mg)</dt>
													<dd>${drinkInfo.caffeine }</dd>
												</dl>
											</li>
										</ul>
									</div>
									<c:if test="${drinkInfo.allergy != null }">
										<div class="product_factor">
											<p>${drinkInfo.allergy }</p>
										</div>
									</c:if>
									<!-- s: 230623 등록 버튼 위치이동 및 디자인 변경 -->
									<div class="myDrink">
										<a href="javascript:void(0);" role="button"
											title="나만의 음료로 등록 버튼"><span>나만의 음료로 등록</span></a>
									</div>
									<div class="only_my_drink" style="display: none;" role="dialog"
										aria-hidden="true" tabindex="-1">

										<!-- 20160905 티바나 관련 추가 -->
										<p class="bnr_coldbrew_wrap bnr_teavana"
											style="display: none;">
											<a href="/menuStory/teavana.do"><img
												src="../img/event/2023/230125_teavana_banner_img.png"
												alt="스타벅스 티바나 만나보기"></a>
										</p>
										<!-- 20230130 이미지 변경 -->
										<!-- 20160905 티바나 관련 추가 end -->
										<!-- 콜드브루 배너 추가 -->
										<p class="bnr_coldbrew_wrap bnr_coldbrew"
											style="display: none;">
											<a href="/store/store_coldbrew.do"><img
												src="../common/img/menu/bnr_coldbrew.png"
												alt="콜드브루 소개 페이지 바로가기"> <!-- 접근성_20171123 alt 추가 --></a>
										</p>
										<!-- 콜드브루 배너 추가 end -->
									</div>
							</fieldset>
						</form>
					</div>
				</div>
				<div class="product_view_wrap2">
					<!-- s: 230627 하단 문구 수정 -->
					<p class="bottom_txt">${drinkInfo.description }</p>
					<!-- e: 230627 하단 문구 수정 -->
				</div>
				<!-- 제품 상세보기 end -->
			</div>
			<!-- 제품 상세보기 하단공통 -->
			<div class="productView_footmenu">
				<div class="productView_footmenu_inner">
					<div class="productView_top">
						<div class="productView_top_left">
							<p class="tit">프로모션 새소식</p>
							<ul class="promotionList">
								<li>해당 상품과 관련된 진행 중인 프로모션이 없습니다.</li>
								<!-- <a href="javascript:void(0)"> -->
								<!-- 접근성_20171123 이동 페이지 없을 시 anchor tag 제거 -->
							</ul>
							<p class="more">
								<a href="/whats_new/campaign_list.do"><img
									src="../common/img/menu/news_more.png" alt="프로모션 새소식 더보기"></a>
							</p>
						</div>
						<div class="productView_top_right">
							<dl>
								<!-- 160718 수정 -->
								<dt>
									<p class="sirenOrder">
										<a href="/util/app_tip.do"><img
											src="../common/img/menu/sirenOrder_img_171109.png"
											alt="사이렌 오더란?"></a>
										<!-- 접근성_20171123 alt 추가 -->
									</p>
									<!-- 230907 이미지 변경 -->
								</dt>
								<dd>
									<p class="tit">사이렌오더란?</p>
									<p class="txt">매장에서 줄을 서지 않고 주문하는 쉽고 간편한 O2O (Online to
										Offline) 서비스로서 앱을 통해 스타벅스 음료, 푸드 및 원두의 결제 및 주문을 완료하면 매장에서 즉시
										메뉴를 받을 수 있는 스타벅스만의 신개념 서비스 입니다.</p>
								</dd>
								<!-- 160718 수정 end -->
							</dl>
						</div>

					</div>
					<!-- 150717 버튼 다시 추가 -->
					<p class="m_hidden_btn">
						<a href="javascript:void(0)">사이렌오더</a>
					</p>
					<!-- 150717 버튼 다시 추가 end -->

				</div>
			</div>
			<!-- 제품 상세보기 하단공통 end -->
		</div>
		<!-- container end -->
		<form name="drinkViewForm" method="post">
			<input type="hidden" name="product_cd"> <input type="hidden"
				name="pro_seq">
		</form>
		<form name="pairForm" method="post"></form>






		<jsp:include page="../common/footer.jsp" />


		<script src="../common/js/jquery-1.10.2.min-1.js"></script>
		<script src="../common/js/%40common-1.js"></script>
		<script src="../common/js/jquery-ui.min-1.js?v=220207"></script>
		<script src="../common/js/idangerous.swiper-2.1.min-1.js"></script>
		<script src="../common/js/idangerous.swiper.scrollbar-2.1-1.js"></script>
		<script src="../common/js/jquery.bxslider.min-1.js"></script>
		<script src="../common/js/skdslider.min-1.js"></script>
		<script src="../common/js/jquery.drive-1.js"></script>
		<script src="../common/js/jquery.easing-1.3.min-1.js"></script>
		<script src="../common/js/jquery.elevatezoom-1.js"></script>
		<script src="../common/js/jquery.flip-1.js"></script>
		<script src="../common/js/jquery.jsmovie.1.4.4.min-1.js"></script>
		<script src="../common/js/jquery.mCustomScrollbar.concat-1.js"></script>
		<script src="../common/js/jquery.number.min-1.js"></script>
		<script src="../common/js/jquery.rotate.2.3-1.js"></script>
		<script src="../common/js/jquery.scrollbar-1.js"></script>
		<script src="../common/js/jquery.scrollTo-1.4.2-min-1.js"></script>
		<script src="../common/js/jquery.superscrollorama-1.js"></script>
		<script src="../common/js/jquery.transform2d-1.js"></script>
		<script src="../common/js/jquery.transform3d-1.js"></script>
		<script src="../common/js/greensock/TweenMax.min-1.js"></script>
		<script src="../common/js/masonry.pkgd-1.js"></script>
		<script src="../common/js/common-1.js"></script>
		<script src="../common/js/gnb-1.js?v=240902"></script>
		<script src="../common/js/header-1.js?v=230716"></script>
		<script src="../common/js/footer-1.js?v=221122"></script>

		<script src="../common/js/jquery.tmpl-1.js"></script>
		<script src="../common/js/jquery.tmplPlus.min-1.js"></script>
		<script src="../common/js/jquery.ezmark.min-2.js"></script>










		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=10.0, minimum-scale=1.0, user-scalable=yes">
		<link href="../common/css/style_block_popup-1.css?v=20231213"
			rel="stylesheet">

		<!-- s: 231201 추가-->
		<div class="block_popup_20231130 js_block_popup_20231130"
			style="display: none;">
			<div class="inner">
				<img src="../img/event/2023/231201_popup_denger-1.png" alt="경고 이미지"
					class="block_sites_popup_main_img">
				<p class="block_sites_popup_title">
					외부 사이트를 통해 접속하셨나요?<br>공식 홈페이지 주소창을 확인하세요.
				</p>
				<p class="block_sites_popup_text">
					스타벅스 공식 홈페이지 주소: <a href="http://www.starbucks.co.kr/"
						title="http://www.starbucks.co.kr/">www.starbucks.co.kr</a>
				</p>
				<div class="block_sites_progress_status">
					<div class="block_sites_progress_bar js_block_sites_progress_bar"></div>
				</div>
			</div>
		</div>

		<script>
			(function() {
				if ('Y' == "N") {
					showBlockPopup();
				}
			})();

			function showBlockPopup() {
				// 로딩 레이어 팝업 3s 노출
				// 로딩바 색깔 3초안에 100% 채워진 후 바로 닫힘
				var blockPopup = $('.js_block_popup_20231130');

				$('.js_block_popup_20231130').css("display", "block");
				if (blockPopup.css("display") == "block") { // 팝업 노출시 스크롤 막기
					$('body').addClass('block_hidden_20231213');
				}

				$('.js_block_sites_progress_bar').animate({
					width : "100%"
				}, 3000, 'linear', function() {
					$('.js_block_popup_20231130').css("display", "none");
					if (blockPopup.css("display") == "none") {
						$('body').removeClass('block_hidden_20231213');
					}
				});
			}
		</script>
		<!-- s: 231201 추가-->
		<!-- 231207 피싱사이트 대응 -->

		<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->

		<!--
			<script src="/common/js/swiper.jquery.min.js"></script>
			<script src="/common/js/swiper.min.js"></script>
			<script src="/common/js/util.js"></script>
			-->


		<script src="../common/js/openevent/openevent-1.js"></script>
		<script src="../common/js/open_event_control-1.js"></script>

		<script src="../common/js/jquery.transit.min-1.js"></script>
		<script>
			(function($) {
				$.fn.seqfx = function() {
					var elements = this, l = elements.length, i = 0;

					function execute() {
						var current = $(elements[i]);
						i = (i + 1) % l;

						current.animate({
							rotateY : '360deg'
						}, 2000).animate({
							rotateY : '-360deg'
						}, 2000, execute);
					}
					execute();
					return this;
				};
			}(jQuery));
		</script>

		<script src='../common/js/makePCookie-1.js'></script>

		<script src="../common/js/menu-1.js"></script>


		<script type="text/x-jquery-tmpl" id="tpl_productFileLi">
            <li><a href="javascript:void(0)" data-image="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" data-zoom-image="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" class="elevatezoom-gallery"><img src="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" alt="상세이미지 ${img_ORDER}번"></a></li>
        </script>
		<script type="text/x-jquery-tmpl" id="tpl_productMobLi">
            <li><img class="m_view_img" src="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" data-zoom-image="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" alt="" /></li>
        </script>
		<script type="text/x-jquery-tmpl" id="tpl_productPairLi">
            <li>
                <dl>
                    <dt><a href="javascript:void(0)" prod="${product_CD}" cate="${f_CATE_CD}"><img src="${img_UPLOAD_PATH.replace("www", "image")}${file_PATH}" alt="${product_NM}"></a></dt>
                    <dd>
                        <p class="t1">${product_NM}</p>
                        <p class="t2">${content}</p>
                        <p class="more_btn"><a href="javascript:void(0)" prod="${product_CD}" cate="${f_CATE_CD}"><img src="//image.istarbucks.co.kr/common/img/common/detail_view.png" alt="${product_NM} 자세히 보기" /></a></p>
                    </dd>
                </dl>
            </li>
        </script>
		<script type="text/x-jquery-tmpl" id="tpl_promotionLi">
            <li><a href="javascript:void(0)" class="promotionLi" prod="${pro_SEQ}">${product_NM}</a></li>
        </script>
	</div>

	<script src="../common/js/common_jhp-1.js"></script>


	<!-- 150902 DOM 수정 -->
	<div class="only_my_dimm" style="display: none;"></div>
	<div class="only_my_drink" style="display: none;" role="dialog"
		aria-hidden="true">
		<!-- 접근성_20171123 role, aria 추가 -->
		<div class="only_my_head">
			<p class="tit">나만의 음료</p>
			<p class="close">
				<a href="javascript:void(0)" class="btn_close" role="button"> <!-- 접근성_20171123 role 추가 -->
					<img src="../common/img/util/btn_closesa.png" alt="팝업 닫기">
				</a>
			</p>
		</div>
		<!-- Step 1 -->
		<div class="only_my_cont my_drink_step1">
			<div class="my_kind_view">
				<p class="tit">분류 보기</p>
				<ul>
					<li><input type="radio" name="my_kind" id="my_kind_X0000026"
						class="cate" value="3" checked="checked"> <label
						for="my_kind_X0000026">에스프레소</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000046"
						class="cate" value="1"> <label for="my_kind_X0000046">콜드
							브루 커피</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000027"
						class="cate" value="8"> <label for="my_kind_X0000027">티(티바나)</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000039"
						class="cate" value="7"> <label for="my_kind_X0000039">스타벅스
							피지오</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000071"
						class="cate" value="6"> <label for="my_kind_X0000071">스타벅스
							리프레셔</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000031"
						class="cate" value="4"> <label for="my_kind_X0000031">프라푸치노</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000037"
						class="cate" value="5"> <label for="my_kind_X0000037">블렌디드</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000025"
						class="cate" value="2"> <label for="my_kind_X0000025">브루드
							커피</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000024"
						class="cate" value="10"> <label for="my_kind_X0000024">스타벅스
							주스(병음료)</label></li>
					<li><input type="radio" name="my_kind" id="my_kind_X0000034"
						class="cate" value="9"> <label for="my_kind_X0000034">기타</label></li>
				</ul>
			</div>

			<p class="drink_tit"></p>


			<div class="my_drink_step1 my_drink_sel">
				<ul class="drink_area">

				</ul>
			</div>
		</div>
		<!-- Step 1 end -->

		<!-- Step 2 -->
		<div class="only_my_cont my_drink_step2" style="display: none;">
			<dl class="my_sel_drink">
				<dt>
					<img alt="" class="skuImgUrl">
				</dt>
				<dd>
					<p class="t1">
						<!-- 아이스 커피<br><span>Iced Brewed Coffee</span> -->
					</p>
					<div class="select_box">
						<label for="delegateHotYn" class="a11y">HOT/ICE 구분</label>
						<!-- 접근성_20171123 label, class 값 변경 -->
						<select id="delegateHotYn">

							<option value="Hot">Hot</option>
							<option value="Ice">Ice</option>

						</select>
					</div>
				</dd>
			</dl>
			<div class="personal_opt">
				<div class="select_box">
					<label for="delegateSize" class="a11y">음료 사이즈</label>
					<!-- 접근성_20171123 label, class 값 변경 -->
					<select id="delegateSize">
						<!-- 접근성_20171123 title 제거 -->

						<option value="톨">Tall / 355ml</option>
						<option value="그란데 ">Grande / 473ml</option>
						<option value="벤티">Venti / 591ml</option>

					</select>
				</div>
				<div class="select_box">
					<label class="a11y" for="cupType">컵구분</label>
					<!-- 접근성_20171123 label, class 값 변경 -->
					<select title="컵 구분" id="cupType">
						<!-- 접근성_20171123 title 제거 -->

						<option value="0">머그잔</option>
						<option value="1">일회용</option>
						<option value="2">개인컵</option>

					</select>
				</div>
				<p class="btn_ps_opt">
					<a href="javascript:void(0)" role="button">퍼스널 옵션&nbsp;&nbsp;<!-- 접근성_20171123 role 추가 -->
						<img src="../common/img/menu/ps_opt_arrow.png" alt=""></a>
				</p>
			</div>
			<ul class="btn_list">
				<li class="li1"><a href="javascript:void(0)"
					class="btn_go_my_drink_step3" role="button">나만의 음료에 등록</a></li>
				<!-- 접근성_20171123 role 추가 -->
				<li class="li2"><a href="javascript:void(0)" class="btn_close"
					role="button">취소</a> <!-- 접근성_20171123 role 추가 --></li>
			</ul>
		</div>
		<!-- Step 2 end-->

		<!-- 퍼스널 옵션 설정 영역 -->
		<div class="only_my_tit personal_option_detail" style="display: none;">
			<p class="tt">퍼스널 옵션</p>
			<p class="btn_reset">
				<a href="javascript:void(0)" role="button">옵션 초기화 하기</a>
				<!-- 접근성_20171123 role 추가 -->
			</p>
		</div>
		<div class="only_my_cont personal_option_detail"
			style="display: none;">
			<p class="drink_opt_tit">
				<!-- 아이스 쉐이큰 스위트 오렌지 블랙 티 레모네이드 피지오<br><span>Iced Brewed Coffee</span> -->
			</p>
			<dl class="calling_name">
				<dt>콜링네임</dt>
				<dd>
					<!-- 톨 9위드 칩 라이트 토핑 아이스 화이트 초콜릿 모카 -->
				</dd>
			</dl>
			<div class="calling_frame">
				<ul class="calling_list">
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							커피<br> <span>드립 커피</span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="SHOT">
							<!-- 150904 수정 -->
							<p class="hidden_info">에스프레소를 커스텀으로 즐겨보세요!</p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">기본옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">드립 커피</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="Y">
										<span class="select_box"> <label class="a11y"
											for="C0000104">드립 커피</label> <select id="espressoBase"
											data-customgrp="C" data-defaultvalue="4002090000169"><option
													value="드립커피" data-skuname="드립 커피"
													data-callingname="" data-callingseq="8404"
													selected="selected">드립 커피</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">에스프레소 샷</p>
									<p class="p2" data-applytype2="02" data-stdrecipeflag="N">
										<a href="javascript:void(0)" class="btn_minus" data-minqty="0"><img
											src="/common/img/menu/minus.jpg" alt="에스프레소 샷 수량 감소"
											class="mCS_img_loaded"></a> <a class="num" id="shotQty"
											href="javascript:void(0)" data-skuno="4002090000114"
											data-skuname="에스프레소 샷" data-callingname="1"
											data-callingseq="8201" data-baseqty="0" data-customgrp="S"
											tabindex="-1" aria-hidden="true" role="presentation">0</a> <a
											href="javascript:void(0)" class="btn_plus" data-maxqty="9"
											data-maxqtymsg=""><img src="/common/img/menu/plus.jpg"
											alt="에스프레소 샷 수량 증가" class="mCS_img_loaded"></a>
									</p>
								</li>
								<li>
									<p class="p1">에스프레소 옵션</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000291">선택 안 함</label> <select id="espressoOption"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="블론드" data-skuname="블론드"
													data-callingname="블론드" data-callingseq="8207">블론드</option>
												<option value="디카페인" data-skuname="디카페인"
													data-callingname="디카페인" data-callingseq="8207">디카페인</option>
												<option value="1/2디카페인" data-skuname="1/2디카페인"
													data-callingname="1/2디카페인" data-callingseq="8207">1/2디카페인</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="커피"
										data-applytype1="02" title="커피 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="커피 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							시럽<br> <span></span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="SYRUP">
							<!-- 150904 수정 -->
							<p class="hidden_info">시럽 권장수량 : 숏(2) 톨(3) 그란데(4) 벤티(5)</p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">바닐라 시럽</p>
									<p class="p2" data-applytype2="02" data-stdrecipeflag="N">
										<a href="javascript:void(0)" class="btn_minus" data-minqty="0"><img
											src="/common/img/menu/minus.jpg" alt="바닐라 시럽 수량 감소"
										class="mCS_img_loaded"></a> <a class="num" id="bSyrupQty"
											href="javascript:void(0)" data-skuno="4002090000024"
											data-skuname="바닐라 시럽" data-callingname="펌프 바닐라"
											data-callingseq="8730" data-baseqty="0" data-customgrp="R"
											tabindex="-1" aria-hidden="true" role="presentation">0</a> <a
											href="javascript:void(0)" class="btn_plus" data-maxqty="9"
											data-maxqtymsg=""><img src="/common/img/menu/plus.jpg"
											alt="바닐라 시럽 수량 증가" class="mCS_img_loaded"></a>
									</p>
								</li>
								<li>
									<p class="p1">헤이즐넛 시럽</p>
									<p class="p2" data-applytype2="02" data-stdrecipeflag="N">
										<a href="javascript:void(0)" class="btn_minus" data-minqty="0"><img
											src="/common/img/menu/minus.jpg" alt="헤이즐넛 시럽 수량 감소"
											class="mCS_img_loaded"></a> <a class="num" id="hSyrupQty"
											href="javascript:void(0)" data-skuno="4002090000026"
											data-skuname="헤이즐넛 시럽" data-callingname="펌프 헤이즐넛"
											data-callingseq="8707" data-baseqty="0" data-customgrp="R"
											tabindex="-1" aria-hidden="true" role="presentation">0</a> <a
											href="javascript:void(0)" class="btn_plus" data-maxqty="9"
											data-maxqtymsg=""><img src="/common/img/menu/plus.jpg"
											alt="헤이즐넛 시럽 수량 증가" class="mCS_img_loaded"></a>
									</p>
								</li>
								<li>
									<p class="p1">카라멜 시럽</p>
									<p class="p2" data-applytype2="02" data-stdrecipeflag="N">
										<a href="javascript:void(0)" class="btn_minus" data-minqty="0"><img
											src="/common/img/menu/minus.jpg" alt="카라멜 시럽 수량 감소"
											class="mCS_img_loaded"></a> <a class="num" id="cSyrupQty"
											href="javascript:void(0)" data-skuno="4002090000028"
											data-skuname="카라멜 시럽" data-callingname="펌프 카라멜"
											data-callingseq="8703" data-baseqty="0" data-customgrp="R"
											tabindex="-1" aria-hidden="true" role="presentation">0</a> <a
											href="javascript:void(0)" class="btn_plus" data-maxqty="9"
											data-maxqtymsg=""><img src="/common/img/menu/plus.jpg"
											alt="카라멜 시럽 수량 증가" class="mCS_img_loaded"></a>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="시럽"
										data-applytype1="02" title="시럽 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="시럽 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							베이스<br> <span>물</span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="">
							<!-- 150904 수정 -->
							<p class="hidden_info">정량 초과 시 기본 레시피대로 제조됩니다.</p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">기본옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">물</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="Y">
										<span class="select_box"> <label class="a11y"
											for="C0000041">물</label> <select id="C0000041"
											data-customgrp="C" data-defaultvalue="4002090000072"><option
													value="물 없이" data-skuname="물 없이"
													data-callingname="노워터" data-callingseq="8405">물 없이</option>
												<option value="물 적게" data-skuname="물 적게"
													data-callingname="레스 워터" data-callingseq="8405">물
													적게</option>
												<option value="물" data-skuname="물"
													data-callingname="워터" data-callingseq="8406"
													selected="selected">물</option>
												<option value="4002090000078" data-skuname="물 많이"
													data-callingname="엑스트라 워터" data-callingseq="8405">물
													많이</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="베이스"
										data-applytype1="02" title="베이스 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="베이스 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							얼음<br> <span>얼음</span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="">
							<!-- 150904 수정 -->
							<p class="hidden_info">얼음의 양과 음료의 양은 무관합니다.</p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">기본옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">얼음</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="Y">
										<span class="select_box"> <label class="a11y"
											for="C0000042">얼음</label> <select id="C0000042"
											data-customgrp="C" data-defaultvalue="400209000064"><option
													value="4002090000061" data-skuname="얼음 없이"
													data-callingname="노 아이스" data-callingseq="9100">얼음
													없이</option>
												<option value="4002090000062" data-skuname="얼음 적게"
													data-callingname="라이트 아이스" data-callingseq="9100">얼음
													적게</option>
												<option value="400209000064" data-skuname="얼음"
													data-callingname="위드 아이스" data-callingseq="9100"
													selected="selected">얼음</option>
												<option value="4002090000063" data-skuname="얼음 많이"
													data-callingname="엑스트라 아이스" data-callingseq="9100">얼음
													많이</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="얼음"
										data-applytype1="01" title="얼음 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="얼음 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							휘핑 크림<br> <span></span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="WHIP">
							<!-- 150904 수정 -->
							<p class="hidden_info"></p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">일반 휘핑</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000024">선택 안 함</label> <select id="C0000024"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="4002090000081" data-skuname="일반휘핑 적게"
													data-callingname="라이트 휩" data-callingseq="9401">일반휘핑
													적게</option>
												<option value="4002090000029" data-skuname="일반 휘핑"
													data-callingname="위드 휩" data-callingseq="9401">일반
													휘핑</option>
												<option value="4002090000082" data-skuname="일반휘핑 많이"
													data-callingname="엑스트라 휩" data-callingseq="9401">일반휘핑
													많이</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="휘핑 크림"
										data-applytype1="01" title="휘핑 크림 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="휘핑 크림 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							드리즐<br> <span></span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="">
							<!-- 150904 수정 -->
							<p class="hidden_info"></p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">카라멜 드리즐</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000032">선택 안 함</label> <select id="C0000032"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="4002090000054" data-skuname="카라멜 드리즐 적게"
													data-callingname="라이트 드리즐" data-callingseq="9501">카라멜
													드리즐 적게</option>
												<option value="4002090000002" data-skuname="카라멜 드리즐"
													data-callingname="위드드리즐" data-callingseq="9501">카라멜
													드리즐</option>
												<option value="4002090000055" data-skuname="카라멜 드리즐 많이"
													data-callingname="엑스트라 드리즐" data-callingseq="9501">카라멜
													드리즐 많이</option>
										</select>
										</span>
									</p>
								</li>
								<li>
									<p class="p1">초콜릿 드리즐</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000033">선택 안 함</label> <select id="C0000033"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="4002090000052" data-skuname="초콜릿 드리즐 적게"
													data-callingname="라이트 모카드리즐" data-callingseq="9502">초콜릿
													드리즐 적게</option>
												<option value="4002090000003" data-skuname="초콜릿 드리즐"
													data-callingname="위드 모카드리즐" data-callingseq="9502">초콜릿
													드리즐</option>
												<option value="4002090000053" data-skuname="초콜릿 드리즐 많이"
													data-callingname="엑스트라 모카드리즐" data-callingseq="9502">초콜릿
													드리즐 많이</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="드리즐"
										data-applytype1="02" title="드리즐 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="드리즐 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							컵&amp;리드 옵션<br> <span></span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="">
							<!-- 150904 수정 -->
							<p class="hidden_info">매장컵에는 돔리드가 제공되지 않습니다.</p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">리드</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000264">선택 안 함</label> <select id="C0000264"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="4002090000309" data-skuname="돔 리드"
													data-callingname="돔 리드" data-callingseq="9900">돔
													리드</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list"
										data-categoryname="컵&amp;리드 옵션" data-applytype1="01"
										title="컵&amp;리드 옵션 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list"
										title="컵&amp;리드 옵션 옵션 초기화" role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<!-- 150915 구명준 -->
						<p class="name">
							기타<br> <span></span>
						</p> <!-- 150915 구명준 end -->
						<p class="btn">
							<a href="javascript:void(0)" role="button">상세옵션</a>
						</p>
						<div class="hidden_opt" data-optiontype="??????????">
							<!-- 150904 수정 -->
							<p class="hidden_info"></p>
							<!-- 150904 수정 end -->
							<p class="hidden_opt_tit">추가옵션</p>
							<ul class="opt_select">
								<li>
									<p class="p1">기타</p>
									<p class="my_bev_select" data-applytype2="01"
										data-stdrecipeflag="N">
										<span class="select_box"> <label class="a11y"
											for="C0000048">선택 안 함</label> <select id="C0000048"
											data-customgrp="C" data-defaultvalue=""><option
													value="" callingname="">선택 안 함</option>
												<option value="4002090000070" data-skuname="여유 공간 남겨주세요"
													data-callingname="위드 룸" data-callingseq="9698">여유
													공간 남겨주세요</option>
										</select>
										</span>
									</p>
								</li>
							</ul>
							<div class="btns">
								<ul>
									<li class="li1"><a href="javascript:void(0)"
										class="btn_save_ps_opt_cst_sku_list" data-categoryname="기타"
										data-applytype1="02" title="기타 옵션 적용" role="button">적용하기</a></li>
									<li class="li2"><a href="javascript:void(0)"
										class="btn_init_ps_opt_cst_sku_list" title="기타 옵션 초기화"
										role="button">초기화</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<ul class="btn_list personal_option_detail" style="display: none;">
				<li class="li1"><a href="javascript:void(0)" class="btn_ps_ok"
					role="button" title="선택한 옵션 적용하기">확인</a> <!-- 접근성_20171123 role, title 추가 --></li>
				<li class="li2"><a href="javascript:void(0)"
					class="btn_ps_cancel" role="button">취소</a> <!-- 접근성_20171123 role 추가 --></li>
			</ul>
		</div>
		<!-- 퍼스널 옵션 설정 영역 end -->
	</div>
	<!-- Step 3 -->
	<!-- 150915 구명준 -->
	<div class="only_my_drink2" style="display: none;" role="dialog"
		aria-hidden="true">
		<!-- 접근성_20171123 role, aria 추가 -->
		<div class="only_my_head">
			<p class="tit">나만의 음료 이름을 지어보세요</p>
			<p class="close">
				<a href="javascript:void(0)" class="btn_close" role="button"> <!-- 접근성_20171123 role 추가 -->
					<img src="../common/img/util/btn_closesa.png" alt="팝업 닫기">
				</a>
			</p>
		</div>
		<div class="only_my_cont">
			<p class="drink2_cont_input">
				<label for="nickname" class="a11y">음료이름</label>
				<!-- 접근성_20171123 label 추가 -->
				<input type="text" id="nickname">
			</p>
			<ul class="btn_list">
				<li class="li1"><a href="javascript:void(0)"
					class="btn_myMenuRegister" title="나만의 음료로 등록" role="button">확인</a></li>
				<!-- 접근성_20171123 role, title 추가 -->
				<li class="li2"><a href="javascript:void(0)" class="btn_close"
					role="button">취소</a></li>
				<!-- 접근성_20171123 role 추가 -->
			</ul>
		</div>
	</div>



	<script type="text/javascript">

$(document).ready(function() {
	
	var m_arrPsOptCstList = new Array();
	
	 
    
    // "나만의 음료로 등록" 버튼 클릭 시 Step 1 팝업 열기
    $(".myDrink > a").off("click").on("click", function() {
	$(".only_my_drink").fadeIn().attr("aria-hidden", "false").attr("tabindex", "0").focus();
	
	let defaultCategory = $('[name="my_kind"]:checked').val();
    showDrinkListByCategory(defaultCategory);

});
    
    // 분류 선택 시 음료 리스트 갱신
    $(document).on("click", '[name="my_kind"]', function() {
        let selectedCategory = $(this).val();
        showDrinkListByCategory(selectedCategory);
    });

    // 팝업 닫기 버튼
    $(".btn_close").on("click", function() {
        $(".only_my_drink").fadeOut().attr("aria-hidden", "true");
    });

    // Step 1에서 음료 클릭 시 Step 2로 이동
    $(".btn_go_my_drink_step2").on("click", function() {
        $(".my_drink_step1").hide();
        $(".my_drink_step2").show();
    });


    // 퍼스널 옵션 버튼 클릭 시 옵션 영역 표시
    $(".btn_ps_opt a").on("click", function() {
        $(".my_drink_step2").hide();
        $(".personal_option_detail").show();
    });

    // 퍼스널 옵션에서 취소 클릭 시 Step 2로 돌아가기
    $(".btn_ps_cancel").on("click", function() {
        $(".personal_option_detail").hide();
        $(".my_drink_step2").show();
    });

    // 퍼스널 옵션 확인 버튼 클릭 시 Step 2로 돌아가기
    $(".btn_ps_ok").on("click", function() {
        $(".personal_option_detail").hide();
        $(".my_drink_step2").show();
    });
    
    // 이름 짓기 확인 버튼 클릭시
    $(".btn_myMenuRegister").on("click", function(){
    	$(".only_my_drink2").hide();
    	
    	// 음료 저장 함수 (함수 내에 저장 alert)
    	
    	
    });
    
    // 분류 별 음료 리스트 출력
    function showDrinkListByCategory(categoryId) {
        __ajaxCall(
            "/selectCate",  
            { selectedId: categoryId }, 
            true,
            "json",
            "post",
            function(drinks) {
                if (drinks.length > 0) {
                    let drinkListHtml = '';

                    // 음료 리스트 생성
                    drinks.forEach(function(drink) {
                        let drinkName = drink.name;
                        let drinkNo = drink.drinkNo;
                        let imgUrl = drink.url;
                        let engName = drink.engName;

                        drinkListHtml += generateDrinkHtml(drinkNo, drinkName, imgUrl, engName);
                    });

                    
                    $(".drink_area").html(drinkListHtml);
                } 
            },
            function(_error) {
                console.error("AJAX 호출 실패", _error);
            }
        );
    }

    
    

    
    // 커스텀 스크롤 활성화
    $('.only_my_drink div.my_drink_sel').mCustomScrollbar({
        advanced: {
            autoExpandHorizontalScroll: true,
            updateOnContentResize: true
        }
    });
    
    // 퍼스널 옵션 스크롤
    $('.calling_frame').mCustomScrollbar();
    
    function generateDrinkHtml(drinkNo, drinkName, Url, engName) {
        let drinkList = "<li><dl><dt><a href=\"javascript:void(0)\" class=\"btn_go_my_drink_step2\" data-idx=\"\" data-skuno=\"" + drinkNo + "\">";
        drinkList += "<img src=\"" + Url + "\" alt=\"" + engName + "\"></a></dt>";
        drinkList += "<dd><a href=\"javascript:void(0)\" class=\"btn_go_my_drink_step2\" data-idx=\"\" data-skuno=\"" + drinkNo + "\">" + drinkName + "</a>";
        drinkList += "</dd></dl></li>";        

        return drinkList;
    }
    
 // Step 1에서 음료 선택 시 Step 2로 이동
    $(document).on("click", ".drink_area li", function() {
        // 선택한 음료 정보를 가져오기
        let selectedDrink = {
            name: $(this).find("a").text(), // 음료 이름
            imgUrl: $(this).find("img").attr("src"),  
            drinkNo: $(this).data("skuno"),  // 음료 번호
            engName: $(this).find("img").attr("alt")
        };

        // Step 2로 이동하며 선택한 음료 정보를 표시
        goToStep2(selectedDrink);
    });

    // Step 2로 이동하는 함수
    function goToStep2(selectedDrink) {
    		
        // Step 1 숨기고 Step 2 보여주기
        $(".my_drink_step1").hide();
        $(".my_drink_step2").show();

        // 선택한 음료 정보를 Step 2에 표시
        $(".my_sel_drink .skuImgUrl").attr("src", selectedDrink.imgUrl); 
        $(".my_sel_drink .t1").html(selectedDrink.name + "<br><span>" + selectedDrink.engName + "</span>");
        
        $(".drink_opt_tit").html(selectedDrink.name + "<br><span>" + selectedDrink.engName + "</span>");
        
        
        // Step 2에서 온도 선택을 표시
        $("#delegateHotYn").on("change", function() {
            let selectedTem = $(this).val();
            let selectedSize = $("#delegateSize").val();
            console.log(selectedTem);
            updateCallingName(selectedDrink.name,selectedSize, selectedTem);
        });
        
        // Step 2에서 사이즈 선택을 표시
        $("#delegateSize").on("change", function() {
            let selectedSize = $(this).val();
            let selectedTem = $("#delegateHotYn").val();
            console.log(selectedSize);
            updateCallingName(selectedDrink.name, selectedSize, selectedTem);
        });

        // 기본 사이즈 선택된 값으로 CallingName 업데이트
        let selectedSize = $("#delegateSize").val();
        let selectedTem = $("#delegateHotYn").val();
        updateCallingName(selectedDrink.name, selectedSize, selectedTem); 
    }
    
    
 	// CallingName 업데이트 함수
    function updateCallingName(drinkName, drinkSize, drinkTem) {
        // callingName에 음료 이름과 사이즈를 조합하여 출력
        $(".calling_name > dd").html(drinkTem + " " + drinkSize + " " + drinkName);
       
    }
 	
 	
    $(document)
	.on(
			'click',
			'.only_my_drink ul.calling_list li p.btn a',
			function() {
				if ($(this).hasClass('on')) {
					$(this).removeClass('on');
					$(this).parent().next()
							.slideUp();
				} else {
					// reset
					$(
							'.only_my_drink ul.calling_list li p.btn a')
							.removeClass('on');
					$('div.hidden_opt')
							.slideUp();

					// run
					$(this).addClass('on');
					$(this).parent().next()
							.slideDown();
				}
			});
    
 // (수량) [빼기] / [더하기]
	$(document).on("click", ".btn_minus", minusQty);
	$(document).on("click", ".btn_plus", plusQty);
	
	// 수량형 빼기 처리
	function minusQty() {
		var $num = $(this).next();
		var nQty = Number($num.text());
		var nMinQty = Number($(this).data("minqty"));

		if (nQty > nMinQty) {
			$num.text(nQty - 1);
		}

	}

	// 수량형 더하기 처리
	function plusQty() {
		var $num = $(this).prev();
		var nQty = Number($num.text());
		var nMaxQty = Number($(this).data("maxqty"));
		var strMaxQtyMsg = $(this).data("maxqtymsg");

		if (nQty >= nMaxQty) {
			if (strMaxQtyMsg != "") {
				alert(strMaxQtyMsg);
			} else {
				alert("더 이상 추가 할 수 없습니다.");
			}

			return;
		}

		$num.text(nQty + 1);
	}
	

	

	// 적용하기 버튼
	$(document).on("click",
			".btn_save_ps_opt_cst_sku_list",
			savePsOptCstSkuList);
	
	// 초기화 버튼
	$(document).on("click",
			".btn_init_ps_opt_cst_sku_list",
			initPsOptCstSkuList);

    
 // 옵션을 선택할 수 있는 패널을 열고 닫기
    $(document).on("click", ".btn", function() {
        let $hiddenOpt = $(this).parent().next(".hidden_opt");

        // 숨겨진 영역을 토글 (열기/닫기)
        $hiddenOpt.slideToggle();  // 클릭 시 숨겨진 부분을 토글 
    });
 
 
 	
 // [초기화]
	function initPsOptCstSkuList() {
		var nIdx = $(".btn_init_ps_opt_cst_sku_list").index(this);

		$(".hidden_opt").eq(nIdx).find(".p2 , .my_bev_select").each(
				function() {
					var applyType2 = $(this).data("applytype2");
					var skuNo = "";

					switch (applyType2) {
					case "01":
						var $sel = $(this).find("select");
						var defaultValue = $sel.data("defaultvalue");
						$sel.val(defaultValue).trigger("change");
						break;

					case "02":
						var $num = $(this).find(".num");
						$num.text($num.data("baseqty"));
						break;

					case "03":
						break;
					}
				});

		m_arrPsOptCstList[nIdx] = "";
		
	}

 
	// [적용하기]
	function savePsOptCstSkuList() {
		var nIdx = $(".btn_save_ps_opt_cst_sku_list").index(this);
		var applyType1 = $(this).data("applytype1");
		
		if (applyType1 == "01") {
			var nSelected = "";
			$(".hidden_opt").eq(nIdx).find(".p2 , .my_bev_select").each(
					function() {
						var applyType2 = $(this).data("applytype2");

						switch (applyType2) {
						case "01":
							var selVal = $(this).find("select[data-skuname]").val();
							
							switch (selVal) {
							case "":
							default:
								nSelected += selVal;
								break;
							}
							break;

						case "02":
							var curQty = $(this).find(".num").text();
							if (Number(curQty) > 0) {
								nSelected;
							}
							break;

						case "03":
							break;
						}
					});


		}
		
		var qty = 0;
		$(".hidden_opt").eq(nIdx).find(".p2 , .my_bev_select").each(
				function() {
					var applyType2 = $(this).data("applytype2");
					var skuNo = "";
					var realCustomQty = "1";

					switch (applyType2) {
					case "01":
						skuNo = $(this).find("select").val();
						break;

					case "02":
						var $num = $(this).find(".num");
						realCustomQty = $num.text();
						if (realCustomQty > 0) {
							skuNo = $num.data("skuno");
						}
						break;

					case "03":
						skuNo = $(this).find("input").val();
						break;
					}
					if (skuNo != undefined && skuNo != "") {
						if (m_arrPsOptCstList[nIdx] == "") {
							m_arrPsOptCstList[nIdx] = skuNo + ":"
									+ realCustomQty;
						} else {
							m_arrPsOptCstList[nIdx] += "|" + skuNo + ":"
									+ realCustomQty;
						}
					}
				});
		
	}
    
 
    

    // 다음 단계로 이동
    $(".btn_next_step").on("click", function() {
        $(".my_drink_step1").hide();
        $(".my_drink_step2").show();

        // 선택된 음료 정보 가져오기
        var selectedDrinkName = $(".drink_tit").text();
        console.log(selectedDrinkName);
        $(".selected_drink_name").text(selectedDrinkName);
    });

    // 나만의 음료에 등록 버튼 클릭 시
    $(".btn_go_my_drink_step3").on("click", function() {
    	$(".only_my_drink").attr("aria-hidden", "true").attr("tabindex",
		"-1").fadeOut(); // 접근성_20171123 aria, tabindex 추가
	$(".only_my_drink2").attr("aria-hidden", "false").attr("tabindex",
		"0").fadeIn(); // 접근성_20171123 aria, tabindex 추가

	$("#nickname").attr("placeholder", m_title);

	$("#nickname").focus();
        
    });

    // 등록하기 버튼 클릭 시
     $(".btn_register_my_drink").on("click", function() {
        var nickname = $("#custom_nickname").val();
        if (!nickname) {
            nickname = $(".final_drink_name").text();
        }

        alert("나만의 음료로 등록되었습니다: " + nickname);
        $(".only_my_drink_popup").fadeOut();
    }); 
});

</script>

</body>
</html>
