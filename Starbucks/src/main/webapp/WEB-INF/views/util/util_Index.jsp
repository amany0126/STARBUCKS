<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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

<jsp:include page="../common/header_head.jsp" />
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
	<!-- <div class="pop_up_voc" style="display:none"></div>
    <div class="sugNoticePop" style="display:none">
        <div class="sugNoticePop_body">
            <p class="sugNoticePop_close">
                <a href="javascript:void(0);">닫기</a>
            </p>
            <strong class="subPopTit"></strong>
            <div class="subPopCon">
	            <div class="subPopBox">
	                <ul>
	                    <li class="subContent"></li>
	                </ul>
	            </div>
	            <div class="subPopBtn">
	                <a href="#">자주 하는 질문 바로가기</a>
	            </div>
	        </div>
        </div>
    </div> -->
	<!-- VOC 안내팝업 -->
	<div id="wrap">
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
										<ul id="bestList" class="csi_faq_list1"><li><a href="util/faq.do" "="">[쿠폰] e-쿠폰은 어떻게 사용할 수 있나요?</a></li><li><a href="util/faq.do" "="">[별] 별 적립 기준은 무엇인가요?</a></li><li><a href="util/faq.do" "="">[카드환불] 스타벅스 카드의 환불 기준은 무엇인가요?</a></li><li><a href="util/faq.do" "="">[골드레벨] 골드레벨은 어떻게 진입할 수 있나요?</a></li><li><a href="util/faq.do" "="">[운영기준] 유효기간이 만료된 쿠폰도 사용이 가능한가요?</a></li></ul>
									</div>
									<div class="faq_wrap_inner_r">
											<strong>고객의 소리</strong>
											<p>문의에 대한 처리현황을 확인할 수 있습니다.</p>
										<c:choose>
						              	 <c:when test="${ empty  sessionScope.loginUser }">
										
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
												<!-- <a class="btn_ask" href="/customer/suggestionWrite.do">고객의 소리 문의하기</a> -->
						              	 </c:when>
						              	 <c:otherwise>
						              
											<!-- 접수 -->
											<!-- <div class="voc_stat" >
													<p class="icon_voc01">접수완료</p>
													<strong>1</strong>
												</div> -->
											<!-- 접수 end -->
											<!-- 접수 & 답변 -->
											<div class="voc_both_stat">
												<div class="voc_stat_l">
													<p class="icon_voc01">접수완료</p>
													<a href="/my/vocList.do?YN_ANSWER=N"><strong id="reSuc"></strong></a>
												</div>
												<div class="voc_stat_r">
													<p class="icon_voc02">답변완료</p>
													<a href="/my/vocList.do?YN_ANSWER=Y"><strong id="repSuc"></strong></a>
												</div>
											</div>
											<!-- 접수 & 답변 end -->
											<a class="btn_ask" href="/customer/suggestionWrite.do">고객의 소리 문의하기</a>
						              	 </c:otherwise>
						              </c:choose>
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
		<form name="customFrm" method="post" onsubmit="return false">
			<input type="hidden" id="cate_cd" name="cate_cd" value="F17" /> <input
				type="hidden" id="seq" name="seq" value="1" /> <input type="hidden"
				id="searchKeyword" name="searchKeyword" value="" />
		</form>
	<jsp:include page="../common/footer.jsp" />
			<script src="/common/js/jquery.ezmark.min.js"></script>
			<script type="text/javascript" src="/common/js/common_jhp.js"></script>
			<script src="/common/js/customer/customer_voc.js"></script>
			<!-- 상용 -->
			<script type="text/x-jquery-tepl" id="webData">
				<li>
					<a href="/util/website_tip_view.do?status=web&seq=${seq}">
						<figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/${img_nm}"></figure>
						<div>
							<p>
								<span><strong>${title}</strong></span>
								<span>{{html $item.content()}}</span>
							</p>
						</div>
					</a>
				</li> 
			</script>

		<!-- 상용 -->
		<script type="text/x-jquery-tepl" id="appData">
				<li>
					<a href="/util/website_tip_view.do?status=app&seq=${seq}">
						<figure><img alt="" src="//image.istarbucks.co.kr/upload/tip/${img_nm}"></figure>
						<div>
							<p>
								<span><strong>${title}</strong></span>
								<span>{{html $item.content()}}</span>
							</p>
						</div>
					</a>
				</li>
			</script>
		<script>
			//초기값설정
			var page = 1;
			var category = 'F17'
			var searchKeyword = "";
			var seq = 0;

			$(document).ready(function() {
				// 150604 성연욱 추가
				$('.store-slider').each(function() {
					$(this).swiper({
						slidesPerView : 3,
						calculateHeight : true
					});
				});
				// 150604 성연욱 추가 end

				$('#pickDate1, #pickDate2').datepicker();

				var sbox = $('.my_ms_select select');
				sbox.change(function() {
					var sbox_name = $(this).children('option:selected').text();
					$(this).siblings('label').text(sbox_name);
				});

				var msdcSlider = $('.my_ms_card_detail_cont ul').bxSlider({
					pager : false,
					slideMargin : 0
				});

				var mrSlider = $('.my_ms_rank_each ul').bxSlider({
					pager : false,
					slideMargin : 0
				});

				/* 구명준 추가 시작  */

				// input 디자인
				$('input[type=checkbox]').ezMark();

				$('#ckAll, #ck2All').click(function() {
					$('input:checkbox').prop('checked', this.checked).change();
				});

				$(".shopArea_right").mCustomScrollbar();

				/* 구명준 끝 */

				
                
                function fn_getSrvTime(){ //20180214 타 스토어 페이지에 대한 영향으로 분리처리
					var xmlHttp;
					if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
						xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
						xmlHttp.open('HEAD',window.location.href.toString(),false);
						xmlHttp.setRequestHeader("Content-Type", "text/html");
						xmlHttp.send('');
						return new Date(xmlHttp.getResponseHeader("Date"));
					} else if (window.ActiveXObject) {
						xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
						xmlHttp.open('HEAD',window.location.href.toString(),false);
						xmlHttp.setRequestHeader("Content-Type", "text/html");
						xmlHttp.send('');
						return new Date(xmlHttp.getResponseHeader("Date"));
					}
				}
                
                var dEd  = new Date(2019, 2-1, 7, 9, 0, 0);
                var today = fn_getSrvTime();
                if (today < dEd) {
                    $('.pop_up_dimm, .sugNoticePop').fadeIn();
                    $('p.sugNoticePop_close a').click(function(){
                        $('.pop_up_dimm, .sugNoticePop').fadeOut();
                    });
                }
                
                $(".subFaqBtn").on("click", function(e){
                    location.href="/util/faq.do";
                });
                /*
                Date.prototype.IsoNum = function (n) {
                    var tzoffset = this.getTimezoneOffset() * 60000; //offset in milliseconds
                    var localISOTime = (new Date(this - tzoffset)).toISOString().slice(0,-1);
                    return localISOTime.replace(/[-T:\.Z]/g, '').substring(0,n || 20); // YYYYMMDD
                };
                
                //Mon Oct 01 2018 00:00:00 GMT+0900 (대한민국 표준시)
                var start_dt = new Date(2019, 1-1, 29, 0, 0, 0); //팝업노출시작날짜
                var end_dt = new Date(2019, 2-1, 7, 9, 0, 0);  //팝업노출종료날짜
                var par = {
    					"start_dt" : start_dt.IsoNum(14)
    					, "end_dt" : end_dt.IsoNum(14)
    			};
                
    			___ajaxCall("/util/getServerTimeCheck.do", par , true, "json", "post", function(_response) {
    				if(_response.result == "Y"){
   					  $('.pop_up_dimm, .sugNoticePop').fadeIn();
   	                    $('p.sugNoticePop_close a').click(function(){
   	                        $('.pop_up_dimm, .sugNoticePop').fadeOut();
   	                    });
   	                    
   	                    $(".subFaqBtn").on("click", function(e){
   	                        location.href="/util/faq.do";
   	                    });
   	                    //console.log(_response.current_dt);
    				}else if (_response.result == "N"){
    					//console.log(_response.current_dt);
    				}else{
    					//console.log(_response.current_dt);
    				}
    				
    			}, function(data) {
//     				alert("호출실패");
    			});
    			*/
                
			});

			/* 구명준 추가 */

			$(function() {

				content_tabmenu(); //content_tabmenu 설정					

				selectbox_init(); //selectbox 디자인 설정

				pop_init(); //pop_init 팝업 설정

				pop_slide_init(); //pop_slide_init 슬라이드 설정

				box_tabmenu(); //box_tabmenu 설정		

				m_mybrink_list(); //m_mybrink_list 설정	( 나만의 음료 모바일 list )

			});

			function content_tabmenu() {

				$(".content_tabmenu > .tab").bind(
						"click focusin",
						function() {
							if (!$(this).hasClass("on")) {
								$(this).parent().children(".on").removeClass(
										"on");
								var index = $(this).addClass("on").closest(
										".content_tabmenu").children(".tab")
										.index(this);
								$(this).parent().children(".panel").hide().eq(
										index).show();
							}
							return false;
						});
				$("div.finder_list > dl > dd > ul > li").bind(
						"click focusout",
						function() {
							if (!$(this).hasClass("on")) {
								$(this).parent().children(".on").removeClass(
										"on");
								var index = $(this).addClass("on").closest(
										".content_tabmenu").children(".tab")
										.index(this);
								$(this).parent().children(".panel").hide().eq(
										index).show();
							}
							return false;
						});

				$('.content_tabmenu > .tab').eq(3).click();

			}

			function selectbox_init() {

				$(".select_box select").on(
						"change",
						function() {
							$(this).prev().html(
									$(this).find("option:selected").text());
						}).prev().html(function() {
					return $(this).next().find("option:selected").text();
				});

			}

			function pop_init() {

				$('.btn_shop_area, .btn_shop_bookmark').click(function() {
					$('.pop_up_dimm, .shopArea_pop01').fadeIn();
				});

				$('.shopArea_pop01 p.btn_pop_close a').click(
						function() {
							$('.pop_up_dimm, .shopArea_pop01').fadeOut();

							// 150604 성연욱 추가 - 팝업 초기화
							$('div.box_info dl.box_tabmenu dt').removeClass(
									'on');
							$('div.box_info dl.box_tabmenu dd.panel').hide();
							// 150604 성연욱 추가 - 팝업 초기화 end
						});

			}

			function pop_slide_init() {
				var mrSlider = $('.my_ms_shopArea_bar ul').bxSlider({
					pager : false,
					slideMargin : 0
				});
			}

			function box_tabmenu() {
				/* original jQuery
				$(".box_tabmenu > .tab").bind("click ", function(){
					if(!$(this).hasClass("on")) {
						$(this).parent().children(".on").removeClass("on");
						var index = $(this).addClass("on").closest(".box_tabmenu").children(".tab").index(this);
						$(this).parent().children(".panel").hide().eq(index).show();
					}
					return false;
				});
				 */
				// 20150604 성연욱 작업
				$(".box_tabmenu > .tab").bind("click", function() {
					$(this).siblings('dt').removeClass('on');
					$(this).toggleClass('on');
					$(this).next().siblings('dd').hide();
					$(this).next().toggle();
				});
				// 20150604 성연욱 작업 end

			}

			function m_mybrink_list() {

				//셋팅
				$(".info dd.box").show();
				$('dl.info dt.tbox a').text('자세히 보기');

				$("dl.info dt.tbox a").bind("click", function() {
					if ($(this).parents('dt.tbox').hasClass('on')) {
						$(this).text('자세히 보기');
					} else {
						$(this).text('닫기');
					}
				});

				$(".ms_info_box1 dt.tbox a").bind("click", function() {
					$(".ms_info_box1").find("dd.box").each(function() {
						if ($(this).next("dd.box")) {
							$(this).toggle();
							$(this).prev().toggleClass("on");
						} else {
							$(this).hide();
							$(this).prev().removeClass("on");
						}
					});
				});

				$(".ms_info_box2 dt.tbox a").bind("click", function() {
					$(".ms_info_box2").find("dd.box").each(function() {
						if ($(this).next("dd.box")) {
							$(this).toggle();
							$(this).prev().toggleClass("on");
						} else {
							$(this).hide();
							$(this).prev().removeClass("on");
						}
					});
				});

				$(".ms_info_box3 dt.tbox a").bind("click", function() {
					$(".ms_info_box3").find("dd.box").each(function() {
						if ($(this).next("dd.box")) {
							$(this).toggle();
							$(this).prev().toggleClass("on");
						} else {
							$(this).hide();
							$(this).prev().removeClass("on");
						}
					});
				});

				$(".ms_info_box4 dt.tbox a").bind("click", function() {
					$(".ms_info_box4").find("dd.box").each(function() {
						if ($(this).next("dd.box")) {
							$(this).toggle();
							$(this).prev().toggleClass("on");
						} else {
							$(this).hide();
							$(this).prev().removeClass("on");
						}
					});
				});
			}
			/* 구명준 끝 */
		</script>
</body>
</html>