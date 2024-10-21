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
<script type="text/javascript" src="/common/js/esabsbuxkr.js?single"></script>
<!-- 220117 수정 -->
<link rel="shortcut icon"
	href="../common/img/common/favicon.ico?v=200828" type="image/ico">
<!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../common/css/reset.css" rel="stylesheet">
<link href="../common/css/style.css?v=230809" rel="stylesheet">
<link href="../common/css/jquery.bxslider.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper.css" rel="stylesheet">
<link href="../common/css/idangerous.swiper.scrollbar.css"
	rel="stylesheet">
<link href="../common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="../common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="../common/css/jquery-ui.css" rel="stylesheet">
<link href="../common/css/ezmark.css" rel="stylesheet">
<link href="../common/css/style_dt.css?v=240722" rel="stylesheet">

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="/common/css_ie/style.css" rel="stylesheet">
	<script>
		document.createElement('header');
		document.createElement('nav');
		document.createElement('section');
		document.createElement('figure');
		document.createElement('article');
		document.createElement('aside');
		document.createElement('footer');
	</script>
<![endif]-->

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
	var eFrequencySeq = '240';
	var eFrequencyPlannerYn = 'N';
</script>

<link href="../common/css/style_menu.css?v=240412" rel="stylesheet">
<link href="../common/css/ezmark.css" rel="stylesheet">
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



		<!-- container -->
		<div id="container">
			<!-- 서브 타이틀 -->
			<div class="sub_tit_wrap">
				<div class="sub_tit_inner">
					<h2>
						<img src="../common/img/menu/menu_tit1.jpg" alt="음료">
					</h2>
					<ul class="smap">
						<li><a href="/"><img
								src="../common/img/common/icon_home.png" alt="홈으로"></a></li>
						<li><img class="arrow"
							src="../common/img/common/icon_arrow.png" alt="하위메뉴"></li>
						<li class="en"><a href="index.do.html">MENU</a></li>
						<li><img class="arrow"
							src="../common/img/common/icon_arrow.png" alt="하위메뉴"></li>
						<li><a href="drink_list.do.html" class="this">음료</a></li>
					</ul>
				</div>
			</div>
			<!-- 서브 타이틀 end -->
			<div class="content">
				<!-- 분류 보기 -->
				<div class="product_kind_wrap">
					<p class="tit">분류 보기</p>
					<div class="product_kind_btn">
						<a href="javascript:void(0)" role="button"> <!-- 접근성_20171123 role 추가 -->
							<img src="../common/img/menu/list_up_btn.png" alt="분류보기 메뉴 접기">
							<!-- 접근성_20171123 alt 값 추가 + menu.js-->
						</a>
					</div>
					<div class="product_toggle_wrap">
						<dl class="product_kind_tab">
							<dt class="dt1">
								<a href="javascript:void(0)" id="categoryTab" class="selected"
									role="button" title="카테고리별 음료선택">카테고리</a>
							</dt>
							<!-- 접근성_20171123 role, title 추가 -->
							<dd>
								<div class="product_select_wrap">
									<form action="" method="post">
										<fieldset>
											<legend class="hid">음료 카테고리 별 분류 보기</legend>
											<ul class="cate_list">
												<!-- jsp 수정 : class 추가 -->
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_all" id="product_0"
													checked> <label for="product_0">전체
														상품보기</label></li>
												<li><input type="checkbox" name="product_cold_brew" id="product_1" > 
													<label for="product_1">콜드 브루 커피</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_brewed" id="product_2">
													<label for="product_2">브루드 커피</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_espresso"
													id="product_3"> <label
													for="product_3">에스프레소</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_frappuccino"
													id="product_4"> <label
													for="product_4">프라푸치노</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_blended" id="product_5">
													<label for="product_5">블렌디드</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_refresher"
													id="product_6"> <label
													for="product_6">스타벅스 리프레셔</label></li>
												<!-- 20220613 신규 추가 -->
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_fizzio" id="product_7">
													<label for="product_7">스타벅스 피지오</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_tea" id="product_8">
													<label for="product_8">티(티바나)</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_etc" id="product_9">
													<label for="product_9">기타 제조 음료</label></li>
												<li><input style='vertical-align: middle;'
													type="checkbox" name="product_juice" id="product_10">
													<label for="product_10">스타벅스 주스(병음료)</label></li>
											</ul>
										</fieldset>
									</form>
								</div>
							</dd>
							<dt class="dt2">
								<a href="javascript:void(0)" id="themeTab" title="테마별 음료보기">테마</a>
								<!-- 접근성_20171123 role, title 추가 -->
							</dt>
							<dd>
								<ul class="service_bn">




									<li><a href="javascript:void(0)" role="button"><img
											src="../common/img/menu/niSUfY_20240926092341281.jpg"
											alt="10월 프로모션" data-sbseq="W0000498"
											style="width: 335px; height: 90px"></a></li>







								</ul>
							</dd>
						</dl>
					</div>
				</div>
				<!-- 분류 보기 end -->
				<!-- 음료 리스트(카테고리 별) -->
				<div class="product_result_wrap product_result_wrap01">
					<div class="product_view_tab_wrap">
						<div id="mn_select_wrap">
							<p class="cf_s_p">
								<input type="button" class="select" title="상세분류 옵션 선택하기">
								<!-- 접근성_20171123 title 추가 -->
								<span class="cf_s_span">상세분류</span>
							</p>
							<ul class="opt">
								<li><span><input type="checkbox"
										name="select_kind1-1" id="select_kind1-1" data-target="new">
										<label class="mark01" for="select_kind1-1">신규 출시된 메뉴</label></span></li>
								<li><span><input type="checkbox"
										name="select_kind1-2" id="select_kind1-2" data-target="sell">
										<label class="mark02" for="select_kind1-2">한정기간 출시되는
											시즌성 메뉴</label></span></li>
								<!-- <li><span><input type="checkbox" name="select_kind1-3" id="select_kind1-3" data-target="recomm" /> <label for="select_kind1-3">추천</label></span></li> -->
								<!--  li><span><input type="checkbox" name="select_kind1-4" id="select_kind1-4" data-target="sold" /> <label for="select_kind1-4">SOLD OUT</label></span></li -->
							</ul>
						</div>
						<dl class="product_view_tab product_view_tab01">
							<dt class="dt1">
								<a href="javascript:void(0);" role="button" class="selected a1">사진으로
									보기</a>
							</dt>
							<!-- 접근성_20171123 role 추가 -->
							<dd>
								<div class="product_list">


									<!-- 음료 목록을 반복 출력 -->
									<c:forEach var="category" items="${categoryList}">
										<dl class="category_${category.categoryId}">
											<c:choose>
												<c:when test="${category.categoryId == 10 }">
													<dt>
														<a href="javascript:void(0)">${category.categoryName}</a>
													</dt>
												</c:when>
												<c:otherwise>
													<dt>
														<a href="javascript:void(0);">${category.categoryName}</a>
														<i class="summaryIcon"><img
															src="../common/img/menu/logo_decaf.png" alt=""></i><span
															class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
													</dt>
												</c:otherwise>
											</c:choose>

											<dd style="display: block;">
												<ul>
													<c:forEach var="drink" items="${drinkList}">
														<c:if test="${drink.categoryId == category.categoryId}">
															<li class="menuDataSet" new="${drink.newProduct}" sell=""
																recomm="0" sold="N">
																<dl style="display: block;">
																	<dt>
																		<a href="javascript:void(0)" class="goDrinkView"
																			prod="${drink.drinkNo}"> <img src="${drink.URL}"
																			alt="${drink.name}">
																		</a>
																	</dt>
																	<dd>${drink.name}</dd>
																</dl>
															</li>
														</c:if>
													</c:forEach>
												</ul>
											</dd>
										</dl>
									</c:forEach>
								</div>


								<!-- 160928 검색결과 없을 때 -->
								<div class="product_no_result" style="display: none;">
									<p>검색 결과가 없습니다.</p>
								</div>
								<!-- 160928 검색결과 없을 때 end -->
							</dd>
							<dt class="dt2">
								<a href="javascript:void(0);" class="a2 drinkInfo" role="button">영양정보로
									보기</a>
								<!-- 접근성_20171123 role 추가 -->
							</dt>
							<dd>
								<c:forEach var="category" items="${categoryList}">
									<h3>${category.categoryName }</h3>
									<c:choose>
										<c:when test="${category.categoryId != 10 }">
											<p class="standard">* Tall 사이즈 기준</p>
										</c:when>
									</c:choose>

									<!-- 240411 문구 추가 -->
									<table class="coffeeInfo mb60">
										<caption class="hid">메뉴, 칼로리, 당류, 단백질, 나트륨, 포화지방,
											카페인 정보</caption>
										<colgroup>
											<col width="16%">
											<col width="14%">
											<col width="14%">
											<col width="14%">
											<col width="14%">
											<col width="14%">
											<col width="14%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">메뉴</th>
												<th scope="col">칼로리(Kcal)</th>
												<th scope="col">당류(g)</th>
												<th scope="col">단백질(g)</th>
												<th scope="col">나트륨(mg)</th>
												<th scope="col">포화지방(g)</th>
												<th scope="col">카페인(mg)</th>
											</tr>
										</thead>
										<c:forEach var="drink" items="${drinkList }">
											<c:if test="${drink.categoryId == category.categoryId}">
												<tbody >
													<tr>
														<td>${drink.name }</td>
														<td>${drink.kcal }</td>
														<td>${drink.sugars }</td>
														<td>${drink.protein }</td>
														<td>${drink.sodium }</td>
														<td>${drink.satFat }</td>
														<td>${drink.caffeine }</td>
													</tr>
												</tbody>
											</c:if>
										</c:forEach>
										</table>
								</c:forEach>


							</dd>
						</dl>
					</div>
				</div>
				<!-- 음료 리스트(카테고리 별) end -->

				<!-- 음료 리스트(서비스 별) -->
				<!-- <div class="product_result_wrap product_result_wrap02">
					<div class="product_view_tab_wrap">
						<dl class="product_view_tab product_view_tab02">
							<dt style="display: none;"></dt>
							<dd>
								<div class="product_list">
									<dl>
										<dd>
											<ul>
											</ul>
										</dd>
									</dl>
								</div>
							</dd>
						</dl>
					</div>
				</div> -->
				<!-- 음료 리스트(서비스 별) end -->
			</div>
		</div>
		<!-- container end -->


		<jsp:include page="../common/footer.jsp" />



		<script src="../common/js/jquery-1.10.2.min.js"></script>
		<script src="../common/js/%40common.js"></script>
		<script src="../common/js/jquery-ui.min.js?v=220207"></script>
		<script src="../common/js/idangerous.swiper-2.1.min.js"></script>
		<script src="../common/js/idangerous.swiper.scrollbar-2.1.js"></script>
		<script src="../common/js/jquery.bxslider.min.js"></script>
		<script src="../common/js/skdslider.min.js"></script>
		<script src="../common/js/jquery.drive.js"></script>
		<script src="../common/js/jquery.easing-1.3.min.js"></script>
		<script src="../common/js/jquery.elevatezoom.js"></script>
		<script src="../common/js/jquery.flip.js"></script>
		<script src="../common/js/jquery.jsmovie.1.4.4.min.js"></script>
		<script src="../common/js/jquery.mCustomScrollbar.concat.js"></script>
		<script src="../common/js/jquery.number.min.js"></script>
		<script src="../common/js/jquery.rotate.2.3.js"></script>
		<script src="../common/js/jquery.scrollbar.js"></script>
		<script src="../common/js/jquery.scrollTo-1.4.2-min.js"></script>
		<script src="../common/js/jquery.superscrollorama.js"></script>
		<script src="../common/js/jquery.transform2d.js"></script>
		<script src="../common/js/jquery.transform3d.js"></script>
		<script src="../common/js/greensock/TweenMax.min.js"></script>
		<script src="../common/js/masonry.pkgd.js"></script>
		<script src="../common/js/common.js"></script>
		<script src="../common/js/gnb.js?v=240902"></script>
		<script src="../common/js/header.js?v=230716"></script>
		<script src="../common/js/footer.js?v=221122"></script>

		<script src="../common/js/jquery.tmpl.js"></script>
		<script src="../common/js/jquery.tmplPlus.min.js"></script>
		<script src="../common/js/jquery.ezmark.min.js"></script>







		<script src="../common/js/openevent/openevent.js"></script>
		<script src="../common/js/open_event_control.js"></script>


		<script src="../common/js/jquery.transit.min.js"></script>
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

		<script src='../common/js/makePCookie.js'></script>


		<form name="drinkListForm" method="get">
			<input type="hidden" name="product_cd">
		</form>
		<input type="hidden" name="themeType" id="themeType" value="">
		<input type="hidden" name="selIndex" id="selIndex" value="">
	</div>

	<script src="../common/js/jquery.ezmark.min-1.js"></script>
	<script src="../common/js/menu.js"></script>
	<script src="../common/js/jquery.async.min.js"></script>

	<script>
		// 상세분류 셀렉트바 숨기기
		$("#mn_select_wrap .opt").hide();

		//셀렉트바를 클릭했을 때
		$("#mn_select_wrap .select, #mn_select_wrap p span").bind("click",
				function() {
					$("#mn_select_wrap .opt").toggle();
				});

		//마우스가 셀렉트 영역을 벗어났을 때
		$("#mn_select_wrap").bind("mouseleave", function() {
			$("#mn_select_wrap .opt").hide();
		});
	</script>
	<script>
		
	</script>
<script>

$(document).ready(function () {

	   const checkboxes = document.querySelectorAll('input[type="checkbox"][name^="product_"]');
	   const allCheckbox = document.getElementById("product_0"); // '전체상품보기' 체크박스

	   // 카테고리 체크박스 변경 시 필터 적용
	   $(".product_select_wrap input:checkbox").on("change", function () {
	      applyCategoryFilter();  // 체크박스 변경 시 필터 적용
	   });

	   // "영양정보로 보기" 버튼 클릭 시 필터 적용
	   $(".drinkInfo").on("click", function () {
	      applyCategoryFilter();  // "영양정보로 보기" 버튼 클릭 시 필터 적용
	   });

	   // 선택된 카테고리에 맞게 음료 목록 및 영양 정보 필터링
	   function applyCategoryFilter() {
	      // '전체상품보기' 체크박스가 선택되어 있는지 확인
	      if ($("#product_0").is(":checked")) {
	         // 모든 카테고리와 해당 음료 목록 및 영양 정보를 보이게 처리
	         $(".product_list dl").css("display", "block");  
	         $(".product_list dd").css("display", "block");  // 카테고리 안의 dd 태그도 함께 표시
	         $(".coffeeInfo").css("display", "block"); // 영양정보 테이블도 함께 표시
	      } else {
	         // 모든 카테고리와 음료 목록 및 영양 정보를 숨기기
	         $(".product_list dl").css("display", "none");
	         $(".product_list dd").css("display", "none");
	         $(".coffeeInfo").css("display", "none"); // 영양정보 테이블 숨기기

	         // 선택된 카테고리만 보이게 함
	         $(".product_select_wrap input:checkbox:checked").each(function () {
	            var categoryId = $(this).attr("id").split("_")[1];
	            $(".category_" + categoryId).css("display", "block");  // 선택된 카테고리 보이기
	            $(".category_" + categoryId + " dd").css("display", "block");  // 해당 카테고리의 dd도 표시
	            $(".category_" + categoryId + " dl").css("display", "block"); // 선택된 카테고리의 dl 표시
	            $(".category_" + categoryId + " .coffeeInfo").css("display", "block"); // 선택된 카테고리의 영양정보 테이블도 표시
	         });
	      }
	   }

	   // 체크박스 클릭 시 동작
	   checkboxes.forEach(function(checkbox) {
	      checkbox.addEventListener('change', function() {
	         if (checkbox.id === 'product_0' && checkbox.checked) {
	            // '전체상품보기' 체크박스가 선택되었을 때: 다른 모든 체크박스를 해제하고 모든 카테고리 표시
	            checkboxes.forEach(function(box) {
	               if (box.id !== 'product_0') {
	                  box.checked = false;
	               }
	            });
	            applyCategoryFilter();  // 필터 적용
	         } else {
	            // '전체상품보기' 체크박스를 해제하고, 선택된 카테고리만 표시
	            allCheckbox.checked = false;  // '전체상품보기' 체크박스를 해제
	            applyCategoryFilter();
	         }
	      });
	   });

	   // 페이지 로드 시 기본적으로 모든 카테고리를 표시
	   applyCategoryFilter();
	});
</script>


	<script src="../common/js/menu/patch4sm.js"></script>
</body>
</body>
</html>