<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 소리 | Starbucks Korea</title>
<jsp:include page="../common/header_head.jsp" />
<!-- 해당 페이지용 css 및 스타일 부분 -->
<link href="/common/css/style_util.css?v=240319" rel="stylesheet">
<script>
	var todayH = 20241025084620;
</script>
	<style>
	.btn_suggestion_inquiry2 { position:absolute; border-radius:3px; height:28px; width:185px; background:#006633; text-align:center; border:1px solid #bb9f65; margin:-30px 0 0 0; margin-left:140px;  }
	.btn_suggestion_inquiry2 a { display:block; font-size:12px; font-weight:bold; height:28px; line-height:28px; text-align:center; width:180px;  color:#fff; }

	table.suggestion_use_info_tbl td p.icon_prepare1 span { background:#666; border-radius:3px; color:#fff; text-align:center; padding:5px 15px 5px 15px; }

@media screen and (max-width:640px) {
	
	table.suggestion_use_info_tbl { width:100%; }
	table.suggestion_use_info_tbl td,
	table.suggestion_use_info_tbl td p.icon_prepare1 span, 
	table.suggestion_use_info_tbl td p.icon_receive span, 
	table.suggestion_use_info_tbl td p.icon_complete span { font-size:11px; }

}
	
	</style>
</head>

<body>
<!--헤더 공용코드 전 실행할부분-->
<div id="wrap">
	<jsp:include page="../common/header.jsp" />
	<!-- 메인 내용 영역 -->
				<div id="container">
				<!-- 서브 타이틀 -->
				<header class="ms_sub_tit_wrap">
					<div class="ms_sub_tit_bg">
						<div class="ms_sub_tit_inner">
							<h4><img alt="고객의 소리" src="/common/img/util/reward/ms_suggestion_ttl.png"></h4>
							<ul class="smap">
								<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/my/index.do">My Starbucks</a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/my/vocList.do"><span class="kor">참여 현황</span></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/my/vocList.do"><span class="kor">고객의 소리</span></a></li>
							</ul>
						</div>
					</div>
				</header>
				<!-- 서브 타이틀 end -->
				<!-- 내용 -->
				<div class="ms_cont_wrap v_seq220615"><!-- 고객의 소리 개선 220615 -->
					<!-- ms_cont -->
					<div class="ms_cont">						
						<!-- (고객의 소리) 고객의 소리 문의 하기 -->
						<section class="my_suggestion_inquiry">
							<!-- s: 고객의 소리 개선 220615 -->
							<dl class="suggestion_inquiry_text">
								<dt><span>귀한 말씀 들려 주십시오.</span><span>작은 소리도 듣겠습니다.</span></dt>
								<!-- <dd>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.<br>보다 나은 서비스로 보답하겠습니다.</dd> --><!-- 삭제 220830 -->
							</dl>
							<ul class="inquiry_date">
								<li><span id="tel_consultant_time">전화상담(1522-3232) : </span></li>							
								<!-- <li><span>고객의 소리 : 365일, 09:00~18:00</span></li> --><!-- 삭제 220830 -->
								<li class="description">※ 답변완료 시, APP PUSH로 알려드립니다.</li>
								<li class="description">※ 최근 3개월 문의내역만 조회 가능합니다.</li> <!-- 추가 220830 -->
							</ul>
							<!-- e: 고객의 소리 개선 220615 -->
							<p class="btn_suggestion_inquiry"><a href="/customer/suggestionWrite.do">고객의 소리 문의 하기</a></p>
							<!-- e: 220615 문구 수정 -->
							<!-- <p class="btn_suggestion_inquiry2"><a href="/my/opinionList.do">2017. 12. 22 이전 나의 문의내역</a></p> -->
						</section>
						<!-- (고객의 소리) 고객의 소리 문의 하기 end -->

						<!-- (고객의 소리) list -->
						<section class="my_suggestion_list">
							<div class="suggestion_list_inner">

								<dl class="content_tabmenu" style="display:none;">
									<!-- 1번 시작 -->
									<dt class="tab tab_first tab_01"><h6><a href="#tab_01" onclick="i.goPage(1,'', 'G'); return false;">전체</a></h6></dt>
									<dt class="tab tab_02"><h6><a href="#tab_02" onclick="i.goPage(1,'N', 'G'); return false;">접수완료 </a></h6></dt>			
									<dt class="tab tab_last tab_03" style="margin-left:0"><h6><a href="#tab_03" onclick="i.goPage(1,'Y', 'G'); return false;">답변완료 </a></h6></dt>			
								</dl><!-- 삭제 220830 -->
								<dl class="sto_find_tab" style="margin-top:10px; display: none;"> <!-- 숨김 220830 -->
									
<!-- 									<dt class="dt1"><a href="javascript:i.goPage(1,'G', 'W1');" id="tpW1">1주일</a></dt> -->
<!-- 									<dt class="dt2"><a href="javascript:i.goPage(1,'G', 'M1');" id="tpM1">1개월</a></dt> -->
<!-- 									<dt class="dt3"><a href="javascript:i.goPage(1,'G', 'M3');" id="tpM3">3개월</a></dt> -->
									
<!-- 									<dt><p class="icon_receive"><a href="#tab_01" onclick="i.goPage(1,'G', 'W1'); return false;"><span>1주일</span></a> |  -->
<!-- 									<a href="#tab_01" onclick="i.goPage(1,'G', 'M1'); return false;"><span>1개월</span></a> |  -->
<!-- 									<a href="#tab_01" onclick="i.goPage(1,'G', 'M3'); return false;"><span>3개월</span></a></p></dt> -->
								</dl>
								<dl class="">

																													
									<dd class="panel on">		

															
										<!-- 전체 -->
										<!-- (고객의 소리) 목록 -->
										<table class="suggestion_use_info_tbl" summary="고객의 소리 구분, 분야, 제목, 첨부파일, 작성일, 답변여부에 대한 테이블">
											<caption>고객의 소리 구분, 분야, 제목, 첨부파일, 작성일, 답변여부에 대한 테이블</caption>
											<colgroup>
												<col width="50">
												
												<col width="560">
												<col width="110">
												<!-- <col width="113"> -->
												<col width="110">
											</colgroup>
											<thead>
												<tr>
													<th class="en" scope="col">No</th>
													
													<th scope="col">제목</th>
													<th scope="col">작성일</th>
													<!-- <th scope="col">답변예정일</th> -->
													<th scope="col">답변여부</th>
												</tr>
											</thead>
											
											<tbody id="all">	
											
											</tbody>
										</table>
										<!-- (고객의 소리) 목록 end -->

										<!-- (고객의 소리) 페이징 -->
										<div class="suggestion_tbl_pagination">
											<ul class="pager" id="allPage">
											
											</ul>
										</div>
										<!-- (고객의 소리) 페이징 end -->
										<!-- 전체 end -->
									</dd>
									<!-- 1번 끝 -->

								</dl>
							</div>
						</section>
						<!-- (고객의 소리) list end -->						
					</div>
					<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="javascript:void(0);">My 리워드<span class="sbox_arrow_down"></span></a>
			<ul>
				<!-- 160609 텍스트 수정 -->
				<li><a href="/my/reward.do" required="login">· 리워드 및 혜택</a></li>
				<li><a href="/my/reward_star_history.do" required="login">· 별 히스토리</a></li>
				<!-- 160609 텍스트 수정 end -->
			</ul>
		</li>
		<li>
			<a href="/my/index.do" required="login">My 스타벅스 카드</a>
		</li>
		<li>
			<a href="javascript:void(0);">My 스타벅스 모바일 카드<span class="sbox_arrow_down"></span></a> <!-- 240412 문구 수정 --> 
			<ul>
				<li><a href="/msr/sceGift/gift_step1.do" required="login">· 선물하기</a></li>
				<li><a href="/my/egiftCard.do" required="login">· 선물 내역</a></li>
				<li><a href="/my/egiftCard_shopping_bag.do" required="login">· 장바구니 내역</a></li>
			</ul>
		</li>
		<li class="msRnb_btn">
			<a href="javascript:void(0);" required="login">My 쿠폰<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="/my/ecoupon.do?t=REG">· 등록하기</a></li>
				<li><a href="/my/ecoupon.do?t=GIFT">· 선물하기</a></li>
				<li><a href="/my/ecoupon.do?t=USE">· 사용하기</a></li>
			</ul>
		</li>
		<li class="msRnb_btn"><a href="/my/calendar.do" required="login">My 캘린더</a></li>
		<!-- <li class="msRnb_btn"><a href="/my/drink_shop.do" required="login">My 음료/매장</a></li> -->
		<li class="msRnb_btn"><a href="/my/my_menu.do" required="login">My 메뉴</a></li>
		
		
		
		<li>
			<a href="/my/vocList.do" required="login">My 고객의 소리</a>
		</li>
		<!-- <li class="msRnb_btn"><a href="/my/order_status_list.do" required="login">케익 주문 현황</a></li> -->
		<li class="msRnb_btn"><a href="/my/eReceiptList.do" required="login">전자영수증</a></li>
		<li class="msRnb_btn"><a href="javascript:void(0);"  onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
		<li class="msRnb_btn"><a href="/edt/expressDtList.do" required="login">My DT Pass</a></li>
		<li>
			<a href="javascript:void(0);">개인정보관리<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="/my/myinfo_modify_login.do" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="/my/myinfo_out.do" required="login">· 회원 탈퇴</a></li>
				<li><a href="/my/myinfo_modify_pwd.do" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
					<!-- //네비 -->
					</div>
			<!-- 내용 end -->
		</div>
					<!-- //ms_cont -->
	<jsp:include page="../common/footer.jsp" />
<!-- 해당 페이지 스크립트 부분 -->	
</div>
		<form id="opForm" name="opForm" method="POST">
			<input type="text" name="pageIndex" id="pageIndex" value='1' />
			<input type="text" name="YN_ANSWER" id="YN_ANSWER" value='${YN_ANSWER}' />
			<input type="text" name="TP_SEARCH_DT" id="TP_SEARCH_DT" value='W1' />
			<input type="text" name="ID_VOC" id="ID_VOC" value='' />
		</form>
		<script type="text/javascript" src="/common/js/my/vocList.js?V=6"></script>
		<script type="text/javascript">
		 	var sta;
		 	var yn_answer = $("#YN_ANSWER").val();
		 	var tp_search_dt = $("#TP_SEARCH_DT").val();
			i.goPage($("#pageIndex").val(), yn_answer, tp_search_dt);
		</script>
</body>
</html>