<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
Customer Service & Ideas | Starbucks Korea
</title>
<link href="/common/css/style_util.css" rel="stylesheet">
<link href="/common/css/style_csi.css" rel="stylesheet">
<link href="/common/css/style_util2.css?v=190131" rel="stylesheet">

<style type="text/css">

/* 	.main_search_bg { background:url("../common/img/util/csi/main_search_bg_voc.png"); border-radius:3px; height:230px; position:relative; width:830px; } */
/* 	.main_search_bg ul { background:url("../common/img/util/csi/search_list_bg.gif"); height:14px; left:181px; position:absolute; top:194px; width:219px; } */

	ul.csi_faq_list1 li { width:482px; float:none; }
	ul.csi_faq_list1 li a { float:left; width:482px; line-height:1.3; }

@media screen and (min-width:961px) and (max-width:1100px) {
/* 	.main_search_bg { width:690px; height:242px; background-size:690px 242px; } */
	
	ul.csi_faq_list1 li a { width:264px; }

}

@media screen and (min-width:641px) and (max-width:960px) {
	/*메인*/
/* 	.main_search_bg { width:100%; background:url("../common/img/util/csi/main_search_bg2.png") no-repeat; background-size:100% auto; background-position:center center; } */

}

@media screen and (max-width:860px) {

	ul.csi_faq_list1 li { width:100%; }
	ul.csi_faq_list1 li a { width:100%; margin-left:5; }

}
	
    /*s::20180914 추석 연휴 고객의 소리 팝업 수정*/
    .sugNoticePop {min-height: 392px;}
    .sugNoticePop_body .subPopBox {min-height: 156px; box-sizing: border-box; padding: 20px 0 15px 15px;}
    /*e::20180914 추석 연휴 고객의 소리 팝업 수정*/
         
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
		<div id="container">
			<!-- 서브 타이틀 -->
			<header class="ms_sub_tit_wrap">
				<div class="ms_sub_tit_bg">
					<div class="ms_sub_tit_inner">
						<h4>
							<img alt="Customer Service &amp; Idea" src="//image.istarbucks.co.kr/common/img/util/csi/csi_ttl.png">
						</h4>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
							<li><a href="/util/index.do"><span class="en">Customer
										Service &amp; Ideas</span></a></li>
						</ul>
					</div>
				</div>
			</header>
			<!-- 서브 타이틀 end -->
			<!-- 내용 -->
			<div class="ms_cont_wrap">
				<!-- ms_cont -->
				<div class="ms_cont">
					<form class="faq_search_frm" method="post" onsubmit="return false">
						<fieldset>
							<legend>FAQ, 이용안내, 팁 검색폼</legend>
							<div class="main_search_bg">
								<img class="m_pic" src="//image.istarbucks.co.kr/common/img/util/csi/m_main_search_bg.png" alt=""><!-- 150817 DOM 수정 -->
								<div class="main_search_txt">
									<!-- 20210914 수정 -->
									<strong>궁금하신 점을 검색해 보세요.</strong>
									<p>
										검색창에 원하는 정보를 키워드로 입력하세요.<br>
										FAQ, 이용 안내, 팁 등 다양한 내용을 검색을 통해 확인하실 수 있습니다.
									</p>
									<!-- //20210914 수정 -->
								</div>
								<div class="main_search_input">
									<input placeholder="검색어를 입력하세요" type="text" name="msr_bar01" id="msr_bar01"> <a href="javascript:searchBtn('S');" class="sch_btn" id="sch_btn">검색</a>
								</div>
								<ul>
									<li class="main_search_key01"><a href="javascript:searchBtn('A', '카드 등록')">카드 등록</a></li>
									<li class="main_search_key02"><a href="javascript:searchBtn('A', '골드 레벨')">골드 레벨</a></li>
									<li class="main_search_key03"><a href="javascript:searchBtn('A', '별 적립')">별 적립</a></li>
									<li class="main_search_key04"><a href="javascript:searchBtn('A', '생일 쿠폰')">생일 쿠폰</a></li>
								</ul>
							</div>
							<!-- FAQ & 고객의 소리 -->
							<div class="faq_wrap">
								<div class="faq_wrap_inner">
									<div class="faq_wrap_inner_l">
										<strong class="en">FAQ</strong>
										<p>자주 하는 질문을 모아놓았습니다. 궁금하신 내용을 검색해 주세요.</p> <!-- 20210809 수정 -->
										<ul id="bestList" class="csi_faq_list1"><li><a href="javascript:faqView('0000006920', '000' , '');" "="">[쿠폰] e-쿠폰은 어떻게 사용할 수 있나요?</a></li><li><a href="javascript:faqView('0000007349', '000' , '');" "="">[별] 별 적립 기준은 무엇인가요?</a></li><li><a href="javascript:faqView('0000007423', '000' , '');" "="">[카드환불] 스타벅스 카드의 환불 기준은 무엇인가요?</a></li><li><a href="javascript:faqView('0000007370', '000' , '');" "="">[골드레벨] 골드레벨은 어떻게 진입할 수 있나요?</a></li><li><a href="javascript:faqView('0000007454', '000' , '');" "="">[운영기준] 유효기간이 만료된 쿠폰도 사용이 가능한가요?</a></li></ul>
									</div>
									<div class="faq_wrap_inner_r">
										<strong>고객의 소리</strong>
										<p>문의에 대한 처리현황을 확인할 수 있습니다.</p>


										
											<!-- 로그인 -->
											<div class="voc_login">
												<div class="voc_login_inner">
													<figure>
														<img alt="" src="//image.istarbucks.co.kr/common/img/util/csi/voc_login_pic.png">
													</figure>
													<p>
														<span>로그인이 필요한<br>서비스입니다.
														</span>
													</p>
												</div>
											</div>
											<!-- 로그인 end -->
										

										

										
											<!-- 로그인 버튼 -->
											<a class="btn_login" href="javascript:$.loginLib.showLayerLogin();">로그인</a>
										

										

									</div>
								</div>
							</div>
							<!-- FAQ & 고객의 소리 end -->

							<!-- 스타벅스 이용 팁 -->
							<div class="sb_use_tip_wrap">
								<header>
									<h5 id="hTap">홈페이지 이용 팁</h5>
									<aside>
										<span class="tip_num"><strong>1</strong>/2</span>
										<!-- 150720 DOM 수정 - 클래스 추가 -->
										<p>
											<a class="back" href="javascript:void(0);">앞으로</a> <a class="forward" href="javascript:void(0);">뒤로</a>
										</p>
									</aside>
								</header>
								<!-- 150722 DOM 수정 - 스타벅스 이용 팁 기능 수정 -->
								<section class="sb_use_tip_slide">

									<!-- 홈페이지 이용팁 -->
									<div class="sb_slide_wrap on web">
										<div class="bx-wrapper" style="max-width: 680px; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 233px;"><ul class="webWrap" style="width: 715%; position: relative; transition-duration: 0s; transform: translate3d(-708px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=web&amp;seq=2301">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/WvocTV_20171116064030118.jpg"></figure>       <div>        <p>         <span><strong>빠르고 편리한 매장 찾기 서비스</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=web&amp;seq=2300">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/AoJaXh_20150811140826043.jpg"></figure>       <div>        <p>         <span><strong>다양한 스타벅스 콘텐츠</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=web&amp;seq=2304">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/AoJaXh_20150811141338012.jpg"></figure>       <div>        <p>         <span><strong>나만의 맞춤형 통계 정보</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=web&amp;seq=2303">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/bUgEMv_20210819161042454.jpg"></figure>       <div>        <p>         <span><strong>한눈에 보는 스타벅스 리워드 정보</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=web&amp;seq=2302">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/AoJaXh_20150811141057829.jpg"></figure>       <div>        <p>         <span><strong>일상을 공유하는 My  캘린더</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=web&amp;seq=2301">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/WvocTV_20171116064030118.jpg"></figure>       <div>        <p>         <span><strong>빠르고 편리한 매장 찾기 서비스</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=web&amp;seq=2300">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/AoJaXh_20150811140826043.jpg"></figure>       <div>        <p>         <span><strong>다양한 스타벅스 콘텐츠</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=web&amp;seq=2304">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/AoJaXh_20150811141338012.jpg"></figure>       <div>        <p>         <span><strong>나만의 맞춤형 통계 정보</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 328px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=web&amp;seq=2303">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/bUgEMv_20210819161042454.jpg"></figure>       <div>        <p>         <span><strong>한눈에 보는 스타벅스 리워드 정보</strong></span>         <span></span>        </p>       </div>      </a>     </li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
									</div>

									<!-- 애플리케이션 이용팁 -->
									<div class="sb_slide_wrap app">
										<div class="bx-wrapper" style="max-width: 680px; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 233px;"><ul class="appWrap" style="width: 1015%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=app&amp;seq=2394">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162529127.jpg"></figure>       <div>        <p>         <span><strong>빠르고 편하게 선물하는 스타벅스 모바일 카드</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=app&amp;seq=2393">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162302552.jpg"></figure>       <div>        <p>         <span><strong>스타벅스-빅스비 음성주문 서비스</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=5186">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162438747.jpg"></figure>       <div>        <p>         <span><strong>내 손안에서 간편하게 만나는 스타벅스, 사이렌 오더</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=3608">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162412602.jpg"></figure>       <div>        <p>         <span><strong>스타벅스 리워드</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=3221">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162555736.jpg"></figure>       <div>        <p>         <span><strong>스타벅스 리워드 e-Coupon</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=2398">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162508494.jpg"></figure>       <div>        <p>         <span><strong>친환경적이고 편리한 e-Frequency</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=2397">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/u3VUmD_20231103135655261.jpg"></figure>       <div>        <p>         <span><strong>언제 어디서나 구매와 선물을 편하게, 스타벅스 온라인 스토어</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=2396">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162210751.jpg"></figure>       <div>        <p>         <span><strong>소중한 사람에게 선사하는 스타벅스, Gift</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=2394">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162529127.jpg"></figure>       <div>        <p>         <span><strong>빠르고 편하게 선물하는 스타벅스 모바일 카드</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;">      <a href="/util/website_tip_view.do?status=app&amp;seq=2393">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162302552.jpg"></figure>       <div>        <p>         <span><strong>스타벅스-빅스비 음성주문 서비스</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=app&amp;seq=5186">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162438747.jpg"></figure>       <div>        <p>         <span><strong>내 손안에서 간편하게 만나는 스타벅스, 사이렌 오더</strong></span>         <span></span>        </p>       </div>      </a>     </li><li style="float: left; list-style: none; position: relative; width: 100px; margin-right: 24px;" class="bx-clone">      <a href="/util/website_tip_view.do?status=app&amp;seq=3608">       <figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/M28AW1_20210304162412602.jpg"></figure>       <div>        <p>         <span><strong>스타벅스 리워드</strong></span>         <span></span>        </p>       </div>      </a>     </li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
									</div>


									<!-- 제휴카드 안내 -->
									<!-- 
										<div class="sb_slide_wrap">
											<ul class="slider">
												<li>
													<a href="/util/website_tip_view.do">
														<figure><img alt="" src="//image.istarbucks.co.kr/common/img/util/csi/tip_img02.jpg"></figure>
														<div>
															<p>
																<span><strong>3스타벅스 회원이 되고 싶으세요? 스타벅스 회원이 되고 싶으세요? 스타벅스 회원이 되고 싶으세요? 스타벅스 회원이 되고 싶으세요?</strong></span>
																<span>문의에 대한 처리현황을 확인할 수 있습니다. 문의에 대한 처리현황을 확인할 수 있습니다. 문의에 대한 처리현황을 확인할 수 있습니다.</span>
															</p>
														</div>
													</a>
												</li>
											</ul>
										</div> -->
								</section>
								<section class="sb_use_tip_each">
									<ul>
										<li class="sb_use_tip_each1"><a href="/util/web_tip.do">
												<p>
													<strong>홈페이지 이용 팁</strong><br>회원가입부터<br>카드등록까지 방법
													안내
												</p>
										</a></li>
										<li class="sb_use_tip_each2"><a href="/util/app_tip.do">
												<p>
													<strong>애플리케이션 이용 팁</strong><br>애플리케이션 다운로드
												</p>
										</a></li>
										<li class="sb_use_tip_each3"><a href="/util/partnership_card.do">
												<p>
													<strong>제휴카드 안내</strong><br>스타벅스 할인 및 혜택<br>제휴카드
													안내
												</p>
										</a></li>
									</ul>
								</section>
							</div>
							<!-- 스타벅스 이용 팁 end -->
						</fieldset>
					</form>
				</div>
				<!-- //ms_cont -->
                <!-- 네비 -->
                
<nav class="ms_nav" id="msRnb">
	<ul>
		<li class="msRnb_btn"><a href="/util/faq.do">자주 하는 질문</a></li> <!-- 20210809 수정 -->
		<li class="msRnb_btn"><a href="/customer/suggestionWrite.do">고객의 소리</a></li>
		<li class="msRnb_btn"><a href="/util/storecareList.do">스토어 케어</a></li>
		<li><a href="javascript:void(0);">스타벅스 이용 팁<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="/util/web_tip.do">· 홈페이지 이용 팁</a></li>
				<li><a href="/util/app_tip.do">· 애플리케이션 이용 팁</a></li>
				<li><a href="/util/partnership_card.do">· 제휴카드 안내</a></li>
			</ul></li>
		<li class="msRnb_btn"><a href="/util/online_survey.do">고객 경험 설문조사</a></li> <!-- 20210811 수정 -->
		
		
		<li class="msRnb_btn"><a href="/util/guest_eReceipt.do">비회원 전자영수증 조회</a></li>
		
	</ul>
</nav>
                <!-- //네비 -->
			</div>
			<!-- 내용 end -->
		</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>