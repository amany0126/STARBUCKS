<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 하는 질문 | Starbucks Korea</title>

<jsp:include page="../common/header_head.jsp" />


		<link href="/common/css/style_util.css" rel="stylesheet">
		<link href="/common/css/style_csi.css" rel="stylesheet">
		<link href="/common/css/style_msr.css" rel="stylesheet">
		<link rel="stylesheet" href="/common/css/style_faq.css">
		<script>
			var todayH = 20241018133916;				
		</script>
	<style type="text/css">

		.csi_faq_best2 { padding:30px; border:1px solid #ddd; border-radius:3px; margin-bottom:30px; }
		.csi_faq_best2 > ul { width:768px;  }
		.csi_faq_best2 > ul:after { content:""; display:block; clear:both; }
		.csi_faq_best2 > ul > li.li1 { width:403px; border-right:1px solid #ddd; float:left; }
		.csi_faq_best2 > ul > li.li2 { width:304px; padding:0 30px; float:right; }
		.csi_faq_best2 > ul > li.li1 p.tit { font-size:18px; font-weight:bold; color:#222; margin-bottom:18px; }
		.csi_faq_best2 > ul > li.li2 p.tit { font-size:18px; font-weight:bold; color:#222; margin-bottom:30px; }
				
		.csi_faq_best2 > ul ul li img { vertical-align:middle; }
	
		.csi_faq_best2 > ul > li.li1 ul dl { width:385px; height:35px }
		.csi_faq_best2 > ul > li.li2 ul dl { width:355px; height:35px }
		.csi_faq_best2 > ul ul dl:after { content:""; display:block; clear:both; }
	
		.csi_faq_best2 > ul ul dl dt { width:35px; float:left; background:url("../img/util/csi/faq_best_line.jpg") right 5px no-repeat; }
		.csi_faq_best2 > ul > li > ul > li { font-size:14px; color:#666; margin-bottom:4px; }
		.csi_faq_best2 > ul ul li span.s1 { width:22px; height:24px; line-height:24px; background:#006633; border-radius:11px; font-size:11px; font-weight:bold; color:#fff; text-align:center; margin-right:7px; float:left; }
		.csi_faq_best2 > ul ul li span.s2 { width:128px; float:right; padding-top:5px; line-height:1.2; }
	
		.csi_faq_best2 > ul > li.li1 ul dl dd { width:340px; padding-right:9px; padding-top:3px; line-height:1.4; float:right; font-size:13px; }
		.csi_faq_best2 > ul > li.li2 ul dl dd { width:310px; padding-right:9px; padding-top:3px; line-height:1.4; float:right; font-size:13px; }

		.csi_faq_best2 div.select_box{ height:28px; border:1px solid #ddd; border-radius:3px; position:relative; }
		.csi_faq_best2 div.select_box label.value{ display:block; margin:0 10px 0 10px; text-align:left; height:28px; line-height:28px; font-size:12px; color:#444; font-family:"nbg"; overflow:hidden; }
		.csi_faq_best2 div.select_box select{ padding:0 10px 0 10px; position:absolute; left:0; top:0px; height:28px;text-align:left;line-height:28px;font-size:12px; color:#444; border:0;background:#fff; font-family:"nbg"; filter:alpha(opacity=0); opacity:0; z-index:20; }
	
		.csi_faq_best2 div.select_box01 { width:334px; background:#fff url("../common/img/coffee/select_arrow.png") no-repeat 96% center; }
		.csi_faq_best2 div.select_box01 select { width:336px; }

		div.faq_sch_input { position:absolute; right:20px; top:15px; width:595px; }
		div.faq_sch_input input { width:543px; height:28px; line-height:28px; border:1px solid #ddd; border-radius:3px; float:left; }
		div.faq_sch_input a.sch_btn { width:42px; height:28px; line-height:28px; background:#777; font-size:12px; font-weight:bold; color:#fff; display:block; float:right; text-align:center; border-radius:3px; }

	@media screen and (min-width:960px) and (max-width:1099px) {


/* 		.csi_faq_best { padding:0; border:0; } */
		
		.csi_faq_best2 > ul { width:100%; padding:0; border:0; margin-bottom:0px; }
		.csi_faq_best2 > ul > li.li1 { float:none; padding:0; width:100%; border:0 }
		.csi_faq_best2 > ul > li.li2 { float:none; padding:0; width:100%; }
		.csi_faq_best2 > ul ul dl:after { content:""; display:none; clear:both; }
	
	
		.csi_faq_best2 > ul > li.li2 p.tit { padding-top:0px; margin-bottom:0px; }
	
		.csi_faq_best2 > ul > li.li1 ul dl { width:100%; height:35px }
		.csi_faq_best2 > ul > li.li2 ul dl { width:100%; height:35px }
		.csi_faq_best2 > ul ul dl:after { content:""; display:block; clear:both; }

		.csi_faq_best2 > ul > li.li1 ul dl dd { width:88%; padding-right:0px; padding-top:0px; line-height:1.4; float:right; font-size:13px; }
		.csi_faq_best2 > ul > li.li2 ul dl dd { width:88%; padding-right:0px; padding-top:0px; line-height:1.4; float:right; font-size:13px; }

	
		.csi_faq_best2 div.select_box01 { width:100%; }
		.csi_faq_best2 div.select_box01 select { width:100%; }

		div.faq_sch_input { position:absolute; right:20px; top:15px; width:60%; }
		div.faq_sch_input input { width:80%; height:28px; line-height:28px; border:1px solid #ddd; border-radius:3px; float:left; }
		div.faq_sch_input a.sch_btn { width:42px; height:28px; line-height:28px; background:#777; font-size:12px; font-weight:bold; color:#fff; display:block; float:right; text-align:center; border-radius:3px; }

	}

	@media screen and (max-width:860px) {


/* 		.csi_faq_best { padding:0; border:0; } */
		
		.csi_faq_best2 > ul { width:100%; padding:0; border:0; margin-bottom:0px; }
		.csi_faq_best2 > ul > li.li1 { float:none; padding:0; width:100%; border:0 }
		.csi_faq_best2 > ul > li.li2 { float:none; padding:0; width:100%; }
		.csi_faq_best2 > ul ul dl:after { content:""; display:none; clear:both; }
	
	
		.csi_faq_best2 > ul > li.li2 p.tit { padding-top:0px; margin-bottom:0px; }
	
		.csi_faq_best2 > ul > li.li1 ul dl { width:100%; height:35px }
		.csi_faq_best2 > ul > li.li2 ul dl { width:100%; height:35px }
		.csi_faq_best2 > ul ul dl:after { content:""; display:block; clear:both; }

		.csi_faq_best2 > ul > li.li1 ul dl dd { width:88%; padding-right:0px; padding-top:0px; line-height:1.4; float:right; font-size:13px; }
		.csi_faq_best2 > ul > li.li2 ul dl dd { width:88%; padding-right:0px; padding-top:0px; line-height:1.4; float:right; font-size:13px; }

	
		.csi_faq_best2 div.select_box01 { width:100%; }
		.csi_faq_best2 div.select_box01 select { width:100%; }

		div.faq_sch_input { position:absolute; right:20px; top:15px; width:60%; }
		div.faq_sch_input input { width:78%; height:28px; line-height:28px; border:1px solid #ddd; border-radius:3px; float:left; }
		div.faq_sch_input a.sch_btn { width:42px; height:28px; line-height:28px; background:#777; font-size:12px; font-weight:bold; color:#fff; display:block; float:right; text-align:center; border-radius:3px; }

	}			
		</style>
</head>
<body>
		<!-- s : 230809 태그 기존 자리 원복 -->
		<!-- 팝업 딤 -->
		<div class="pop_up_dimm"></div>
		<!-- 팝업 딤 -->
		
		<div class="faq_best_popup mob_pop" style="display:none"> <!-- 20210809 style 추가 -->
            <div class="pop_header">
                <span class="question_num" id="mob_num"></span>
                <span class="tag_category" id="mob_category"></span>
                <p class="question" id="mob_question">
                    
                </p>
                <button class="btn_pop_close"></button>
            </div>
            <div class="pop_body" id="popBody2">
                <p id="body_content_mob" style="white-space:pre-wrap;">
                
                </p>
            </div>
        </div>
	<!-- VOC 안내팝업 -->
<div id="wrap">
	<jsp:include page="../common/header.jsp" />
	
<div id="container">
				<!-- 서브 타이틀 -->
				<header class="ms_sub_tit_wrap">
					<div class="ms_sub_tit_bg">
						<div class="ms_sub_tit_inner">
							<h4><img alt="자주 하는 질문" src="https://image.istarbucks.co.kr/common/img/util/csi/faq_tit.png?v=210823"></h4> <!-- 20210823 수정 -->
							<ul class="smap">
								<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/util/index.do"><span class="en">Customer Service &amp; Ideas</span></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/util/faq.do">자주 하는 질문</a></li> <!-- 20210809 수정 -->
							</ul>
						</div>
					</div>
				</header>
				<!-- 서브 타이틀 end -->
				<!-- 내용 -->
				<div class="ms_cont_wrap">
					<!-- ms_cont -->
					<div class="ms_cont">
						<div class="csi_faq_vis">
							<p><img class="w_pic" src="https://image.istarbucks.co.kr/common/img/util/csi/faq_vis.png?v=210818" alt="고객님들께서 가장 많이 묻는 질문을 모두 모았습니다. 검색을 통해 궁금한 사항을 빠르게 찾아보세요."><img class="m_pic" src="https://image.istarbucks.co.kr/common/img/util/csi/m_faq_vis.png?v=210818" alt="고객님들께서 가장 많이 묻는 질문을 모두 모았습니다. 검색을 통해 궁금한 사항을 빠르게 찾아보세요."></p> <!-- 20210809 수정 -->
						</div>
						<!-- 새 마크업 영역 -->
                    <div class="faq_best10_area">
                        <strong class="tit">자주 하는 질문 Best 10</strong><!-- 20210809 수정 -->
                        <div class="faq_best10">
                            
                        <div class="best_box big"><input type="hidden" id="id_voc_faq" value="1"><a href="javascript:faqView(,,,undefined);"><span class="txt-wrap"><span class="question_num">Q1.</span><span class="tag_category">#회원</span><p class="question">[쿠폰] e-쿠폰은 어떻게 사용할 수 있나요?</p><textarea name="" class="answer" style="display:none">쿠폰 사용기간 내 매장에 방문하셔서 계정에 등록된 스타벅스 카드 또는 e-쿠폰의 QR코드를 파트너에게 제시해주시면 됩니다.
사이렌 오더로 주문하시는 경우라면, 결제하기 화면에서 사용하실 쿠폰을 직접 선택하실 수 있어요. (일부 사이렌 오더 사용불가 쿠폰 제외)</textarea></span></a></div><div class="best_box big"><input type="hidden" id="id_voc_faq" value="1"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000006920&quot;);"><span class="txt-wrap"><span class="question_num">Q2.</span><span class="tag_category">#회원</span><p class="question">[별] 별 적립 기준은 무엇인가요?</p><textarea name="" class="answer" style="display:none">방문에 감사 드리는 의미로, 스타벅스 리워드 회원이 본인 계정에 등록된 스타벅스 카드로 1,000원 이상 결제 시 영수증당 방문별 1개가 즉시 적립됩니다. (단, 영수증간 금액 합산 적용은 불가하며, 스타벅스 카드 충전 금액은 별 적립 대상이 아닙니다. Extra 또는 Size Upgrade 금액만 결제하는 경우, 방문별 적립 기준 금액 충족 시 별 적립 가능합니다. 교환증으로 상품 교환 시 스타벅스 리워드 혜택 제공이 불가합니다. 에코매장에서 음료 구매 시 스타벅스카드 결제금액에서 컵 보증금을 제외한 금액이 1,000원 이상일 경우 별 적립 가능합니다. )

사이렌 오더를 통해 주문하신 경우, 별 적립 시점은 아래와 같습니다.
- 음료/푸드/원두 주문의 경우, 매장에서 해당 주문을 승인한 시점
- 홀케이크 선물/예약의 경우 홀케이크 수령 시점

스타벅스 카드로 결제 후 고객님께 최상의 서비스를 제공하는 시간은 약 3분이 소요됩니다. 따라서 이 시간 동안 추가 결제 시 방문당 별은 적립되지 않고, 이벤트가 있을 경우 이벤트 별만 적립됩니다.
</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007349&quot;);"><span class="txt-wrap"><span class="question_num">Q3.</span><input type="hidden" id="id_voc_faq-3" value=""><span class="tag_category">#결제/환불</span><p class="question">[카드환불] 스타벅스 카드의 환불 기준은 무엇인가요?</p><textarea name="" class="answer" style="display:none">최종 충전 후 합계 잔액 기준 60%이상 소진한 경우, 나머지 금액에 대하여 매장 또는 APP을 통해 환불 신청 가능합니다.  

1) 매장에서 환불 신청:  스타벅스 카드 반납 후 즉시 환급 가능 / 단, 일부 백화점, 몰 입점 매장 등 일부 매장에서는 환불처리 불가
2) APP에서 신청하기:  로그인 후 Pay &gt; 스타벅스 카드 이미지 하단 '환불' (신청일로부터 영업일 기준 최대 7일 이내 지정한 계좌로 환불됩니다. 
단, 스타벅스 카드로 결제하여 주문이 진행 중인 서비스가 있는 경우 불가하며, 주문 과정이 완료된 후 신청 가능합니다.
고객이 본인의 환불 계좌를 잘못 지정하는 경우 확인 절차 등으로 인해 환불이 다소 지연될 수 있습니다.)</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007423&quot;);"><span class="txt-wrap"><span class="question_num">Q4.</span><input type="hidden" id="id_voc_faq-4" value=""><span class="tag_category">#회원</span><p class="question">[골드레벨] 골드레벨은 어떻게 진입할 수 있나요?</p><textarea name="" class="answer" style="display:none">웰컴레벨에서 첫 번째 별 적립 일로부터 1년 안에 30개의 별을 적립해야 합니다.</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007370&quot;);"><span class="txt-wrap"><span class="question_num">Q5.</span><input type="hidden" id="id_voc_faq-5" value=""><span class="tag_category">#결제/환불</span><p class="question">[운영기준] 유효기간이 만료된 쿠폰도 사용이 가능한가요?</p><textarea name="" class="answer" style="display:none">유효기간이 기재된 모든 쿠폰은 유효기간 만료 후 사용이 불가합니다.</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007454&quot;);"><span class="txt-wrap"><span class="question_num">Q6.</span><input type="hidden" id="id_voc_faq-6" value=""><span class="tag_category">#음료/푸드/상품</span><p class="question">[온라인 스토어] 온라인 스토어는 어떤 서비스인가요?</p><textarea name="" class="answer" style="display:none">스타벅스 애플리케이션의 서비스 중 하나로, 스타벅스 상품을 구매/선물하면 입력한 주소로 배송해드리는 서비스입니다. 선물할 때 수신자의 배송지를 몰라도 휴대폰번호만 입력하면 선물할 수 있으며, 선물을 받으신 분이 지정한 배송지로 직접 배송 받을 수 있습니다.</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007054&quot;);"><span class="txt-wrap"><span class="question_num">Q7.</span><input type="hidden" id="id_voc_faq-7" value=""><span class="tag_category">#음료/푸드/상품</span><p class="question">[온라인 스토어] 배송지 입력 후 배송상태를 확인할 수 있나요?</p><textarea name="" class="answer" style="display:none">배송지 입력 시점에 APP이 설치되어 있었다면 Shop &gt; 쇼핑하러 가기 &gt; 마이페이지 &gt; 주문내역/선물함에서 조회 가능하며, 배송지 입력 시점에 APP이 설치되어 있지 않아 WEB에서 비회원으로서 배송지를 입력했다면 문자 혹은 카카오알림톡으로 받은 선물 URL을 클릭, 인증번호를 입력 후 배송조회 가능합니다.</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007068&quot;);"><span class="txt-wrap"><span class="question_num">Q8.</span><input type="hidden" id="id_voc_faq-8" value=""><span class="tag_category">#매장</span><p class="question">[사이렌오더] 사이렌 오더 이용시간은 어떻게 되나요?</p><textarea name="" class="answer" style="display:none">사이렌 오더는 주문 매장의 운영 시작 시간부터 종료 30분전까지 가능합니다

단, 24시간 운영 매장을 포함한 일부 오후 11시 이후까지 운영되는 매장은 최대 오후 11시까지 사이렌 오더를 이용하실 수 있습니다.</textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007488&quot;);"><span class="txt-wrap"><span class="question_num">Q9.</span><input type="hidden" id="id_voc_faq-9" value=""><span class="tag_category">#딜리버스(배달)</span><p class="question">[스타벅스 딜리버스] 이용 가능한 결제 수단은 어떻게 되나요?</p><textarea name="" class="answer" style="display:none">스타벅스 카드, 신용카드, 모바일 상품권 결제가 가능하며 계정에 등록된 쿠폰 사용 및 임직원 할인도 가능합니다. </textarea></span></a></div><div class="best_box"><a href="javascript:faqView(&quot;&quot;,&quot;&quot;,1,&quot;0000007029&quot;);"><span class="txt-wrap"><span class="question_num">Q10.</span><input type="hidden" id="id_voc_faq-10" value=""><span class="tag_category">#매장</span><p class="question">[My DT Pass] My DT Pass만의 혜택은 무엇인가요?</p><textarea name="" class="answer" style="display:none">① My DT Pass를 등록하시면, Drive Thru 매장 방문 시 사전에 설정하신 결제수단으로 바로 결제할 수 있습니다. 
② 사이렌 오더와 함께 이용하시면, 별도 ‘주문 및 결제 단계 없이’ 상품을 더욱 간편하고 빠르게 수령할 수 있습니다.</textarea></span></a></div></div>
                        <div class="faq_best_popup web">
                            <!-- <div class="pop_header">
                                <span class="question_num">Q1.</span>
                                <span class="tag_category">#별</span>
                                <p class="question">
                                    별 적립 기준은 무엇인가요 ?
                                </p>
                                <button class="btn_pop_close"></button>
                            </div> -->
                            <div class="pop_body mCustomScrollbar _mCS_1 mCS_no_scrollbar" id="popBody"><div id="mCSB_1" class="mCustomScrollBox mCS-dark-3 mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 400px;"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                <p id="body_content" style="white-space:pre-wrap;">
                                
                                </p>
                            </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-dark-3 mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                        </div>
                    </div>
                    <div class="faq_list_area">
                        <div class="faq_srch_area">
                            <a href="#tabs" class="btn_check-all on">전체</a>
                            <div class="input_wrap">
                            	<input type="hidden" name="msr_faq01" id="msr_faq_01">
                                <input type="text" name="msr_bar01" id="msr_bar01" placeholder="검색하실 키워드를 입력하세요">
                                <button class="btn_srch"></button>
                            </div>
                        </div>
                        <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all ui-tabs-collapsible">
                            <ul id="cause_list" class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                            <li class="check-all ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-all" aria-labelledby="ui-id-1" aria-selected="true" aria-expanded="true">
                                <a href="#tabs-all" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1"><span>전체</span></a>
                            </li>
                            
                            <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-2" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-2"><input type="hidden" id="cause_code_1" value="023"><span id="tab-1" value="" onclick="faqCause('023',+1)">딜리버스(배달)</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-3" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-3"><input type="hidden" id="cause_code_2" value="030"><span id="tab-2" value="" onclick="faqCause('030',+2)">분실물</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-4" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-4"><input type="hidden" id="cause_code_3" value="028"><span id="tab-3" value="" onclick="faqCause('028',+3)">회원</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-5" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-5"><input type="hidden" id="cause_code_4" value="020"><span id="tab-4" value="" onclick="faqCause('020',+4)">결제/환불</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-6" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-6"><input type="hidden" id="cause_code_5" value="019"><span id="tab-5" value="" onclick="faqCause('019',+5)">음료/푸드/상품</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-7" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-7"><input type="hidden" id="cause_code_6" value="022"><span id="tab-6" value="" onclick="faqCause('022',+6)">매장</span></a></li><li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-all" aria-labelledby="ui-id-8" aria-selected="false" aria-expanded="false"><a href="#tabs-all" onclick="" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-8"><input type="hidden" id="cause_code_7" value="024"><span id="tab-7" value="" onclick="faqCause('024',+7)">이벤트/프로모션</span></a></li></ul>
                            <div id="tabs-all" aria-labelledby="ui-id-8" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-hidden="false"><div class="accrodion-wrap ui-accordion ui-widget ui-helper-reset" id="accrodionWrap" role="tablist"><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-9" aria-controls="ui-id-10" aria-selected="false" aria-expanded="false" tabindex="0"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] GPS 인식이 잘 안 됩니다. 어떻게 해야 하나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-10" aria-labelledby="ui-id-9" role="tabpanel" aria-hidden="true" style="display: none;"><p>GPS 설정이 켜져 있음에도 불구하고 GPS 인식이 되지 않는 경우라면, 휴대폰 GPS 센서에 문제가 있거나 GPS 인식이 어려운 실내일 수 있습니다. <br>다른 장소에서 GPS 인식을 시도하시거나 매장 내부에서 직접 주문을 전송하여 주시기 바랍니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-11" aria-controls="ui-id-12" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 매장 변경은 어떻게 하나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-12" aria-labelledby="ui-id-11" role="tabpanel" aria-hidden="true" style="display: none;"><p>사이렌 오더 화면 하단의 매장 표시 바 버튼을 누르시면 언제든 방문 예정 매장을 변경할 수 있습니다. 장바구니 및 결제하기 단계에서도 결제 및 주문하기 전까지 변경이 가능합니다.<br>단, 주문이 완료된 이후에는 매장 변경이 불가능합니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-13" aria-controls="ui-id-14" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 기타&gt;앱(APP)/홈페이지 ] </span><span class="tit">애플리케이션을 설치하고 실행하니 '마이크'에 대한 권한을 요구합니다. 어떤 목적으로 권한이 필요한가요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-14" aria-labelledby="ui-id-13" role="tabpanel" aria-hidden="true" style="display: none;"><p>스타벅스 사이렌 오더 이용 시, 현재 위치한 매장을 인식하는 과정에서 마이크를 사용하게 됩니다.<br>마이크에 대한 권한을 승인하시지 않는 경우에는 애플리케이션 실행 시 현재 매장의 이름을 인식할 수 없고, 사이렌 오더 시, 현재 매장이 자동 선택되지 않습니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-15" aria-controls="ui-id-16" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 기타&gt;앱(APP)/홈페이지 ] </span><span class="tit">[애플리케이션] 스타벅스 매장찾기 기능은 무엇인가요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-16" aria-labelledby="ui-id-15" role="tabpanel" aria-hidden="true" style="display: none;"><p>스타벅스 APP 첫 화면에서 우측 하단에 ‘Other’ -&gt; ‘매장 정보’ 메뉴를 통해 스타벅스 매장을 찾아보실 수 있습니다. <br>매장 찾기는 현재 있는 곳을 기반으로 근처 매장을 찾을 수 있으며 매장명, 주소 등 키워드 검색을 통해서 원하는 매장을 찾을 수 있습니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-17" aria-controls="ui-id-18" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 사이렌 오더 결제 및 주문은 어떻게 취소할 수 있나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-18" aria-labelledby="ui-id-17" role="tabpanel" aria-hidden="true" style="display: none;"><p>사이렌 오더로 음료/푸드를 주문하신 경우는 주문 즉시 메뉴가 준비되고, 시간이 경과함에 따라 품질 저하가 발생하기 때문에 결제 이후 변경 또는 취소가 불가합니다.<br>사이렌 오더로 원두, 머그와 같은 상품을 주문하신 경우는 당일 영업시간 내  주문매장 미방문 시 결제 및 주문이 자동 취소되며, 수령 이후에도 상품(MD)의 환불 정책에 따라 14일 이내 상품, 영수증, 쿠폰 등 지참 후 구매매장 방문 시 환불이 가능합니다.<br>단, 그라인딩된 원두는 재판매가 불가하므로 주문 취소와 환불이 불가하며, 함께 주문하신 상품이 있는 경우 해당 상품의 가액만 환불됩니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-19" aria-controls="ui-id-20" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 사이렌 오더를 이용하여 원두를 주문하였는데 환불할 수 있나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-20" aria-labelledby="ui-id-19" role="tabpanel" aria-hidden="true" style="display: none;"><p>그라인드 하지 않은 미 개봉 원두는 주문일로부터 14일 이내, 영수증을 소지하여 해당 매장에 방문하시면 환불 받으실 수 있습니다. 그라인드된 원두는 개봉되어 환불이 불가능합니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-21" aria-controls="ui-id-22" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 지금까지 사이렌 오더로 주문한 내역을 어디서 볼 수 있나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-22" aria-labelledby="ui-id-21" role="tabpanel" aria-hidden="true" style="display: none;"><p>최근 1년까지 사이렌 오더 주문내역을 히스토리에서 확인할 수 있습니다.<br>*위치: 스타벅스 앱 하단 메뉴 &gt; Other &gt; 히스토리<br><br>단, 로그인을 하지 않고 비회원으로 주문하신 경우, APP 삭제 시에 모든 이력이 초기화되며 홈페이지에서 주문내역을 전자영수증으로 확인할 수 있습니다. <br>[스타벅스 홈페이지&amp;Customer Service 비회원 전자영수증 조회]에서 결제 수단, 거래일자, 카드번호, 결제금액 등을 입력하여 주문내역 조회가 가능합니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-23" aria-controls="ui-id-24" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 사이렌 오더로 주문 시에도 쿠폰이나 제휴카드를 사용할 수 있나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-24" aria-labelledby="ui-id-23" role="tabpanel" aria-hidden="true" style="display: none;"><p>스타벅스 리워드 무료음료 쿠폰, 제조음료 1+1 쿠폰, 커피&amp;푸드 쿠폰 등을 사이렌 오더에서 사용가능 합니다. <br>텀블러 쿠폰과 같은 영수증 쿠폰, MMS로 선물받은 쿠폰도 앱의 'Coupon'에서 등록하여 사이렌 오더에서 사용 가능합니다.<br><br>제휴카드 혜택은 아래의 내용과 같이 적용됩니다. 단, 무료 아메리카노를 제공하는 VIP 서비스는 사이렌 오더에서 이용이 불가합니다.<br>- KT : 사이즈 업그레이드 월 1회<br>* 통신사에 등록된 생년월일을 입력하여 본인 인증 절차가 필요합니다.<br><br>이 외 쿠폰이나 제휴카드 혜택 적용을 희망하시는 경우에는 매장 POS에서 직접 결제해 주시기 바랍니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-25" aria-controls="ui-id-26" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 신용카드 또는 SSG페이로 결제 후 주문했는데 ‘my 리워드’ 메뉴에 별이 추가되지 않았습니다. 왜 그런가요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-26" aria-labelledby="ui-id-25" role="tabpanel" aria-hidden="true" style="display: none;"><p>사이렌 오더를 통해 주문하셨더라도, 등록된 스타벅스 카드 외 결제수단(신용카드 또는 SSG페이)으로 결제하시는 경우에는 별이 적립되지 않습니다.</p></div><h3 class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons" role="tab" id="ui-id-27" aria-controls="ui-id-28" aria-selected="false" aria-expanded="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e"></span><span class="tag_category">[ 매장&gt;매장운영 ] </span><span class="tit">[사이렌오더] 등록된 스타벅스 카드의 잔액이 주문하려는 메뉴의 가격보다 적습니다. 충전 후 다시 사이렌 오더 주문과정을 거쳐야 하나요?</span></h3><div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-id-28" aria-labelledby="ui-id-27" role="tabpanel" aria-hidden="true" style="display: none;"><p>잔액이 부족한 경우 충전 안내 메시지를 드립니다. 안내에 따라 충전을 하신 이후에 바로 결제를 진행하실 수 있습니다.</p></div></div></div>
                            <div id="tabs-1">
                                <div class="accrodion-wrap ui-accordion ui-widget ui-helper-reset" id="accrodionWrap" role="tablist">
                                   
                                </div>
                            </div>
                            
                          </div>
                    </div>
                    <!-- //새 마크업 영역 -->
						<div class="faq_pagination">
							<ul class="pager"><li class=" active"><a href="javascript:void(0)">1</a></li><li class=""><a href="javascript:void(0)">2</a></li><li class=""><a href="javascript:void(0)">3</a></li><li class=""><a href="javascript:void(0)">4</a></li><li class=""><a href="javascript:void(0)">5</a></li><li class=""><a href="javascript:void(0)">6</a></li><li class=""><a href="javascript:void(0)">7</a></li><li class=""><a href="javascript:void(0)">8</a></li><li class=""><a href="javascript:void(0)">9</a></li><li class=""><a href="javascript:void(0)">10</a></li><li class="control"><a href="javascript:void(0)"><img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a></li></ul>
						</div>

						<div class="csi_faq_contact">
							<p class="p1">원하는 답변을 찾지 못하셨나요?</p>
							<p class="p2">고객의 소리를 통해 질문을 해 주시면 빠른 시간안에 답변을 드리도록 하겠습니다.</p>
							<p class="p2" style="margin-top: 6px;" id="tel_consultant_time">전화상담(1522-3232) : 평일, 09:00~18:00</p>
							<p class="contact_btn"><a href="/customer/suggestionWrite.do">고객의 소리 문의하기</a></p>
						</div>

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
</div>
	<jsp:include page="../common/footer.jsp" />
			<script src="/common/js/customer/faq_voc.js？v=220106"></script> 
			<script src="/common/js/jquery.ezmark.min.js"></script> 
			
	
									<script type="text/x-jquery-tepl" id="faqListTemplate">

										<li ><dl>
										<dt><span class="s1">Q${$item.index()}</span></dt>
										<a href="javascript:faqView('', '', 1, '${$item.id_voc_faq()}');""><dd>${$item.title()}</dd></a>
										</dl></li>
										
									</script>
														
		<script>
		
		//$("#msr_bar01").keyup(function(e){if(e.which == 13){$(".sch_btn").click();}});	
		  
		//초기값설정
		var page=1;
		var category = 'F17'
		var searchKeyword = "";
		var seq = '';

		$(document).ready(function(){
			
			////////////////////////////오픈이벤트
			//$.openevent.getStamp('D');  
				$('.faq_best_popup.mob_pop').hide();
				/* 150614 성연욱 - 자주하는 질문 추가 */
				$(".select_box select").on("change",function(){
					$(this).prev().html($(this).find("option:selected").text());
					}).prev().html(function() {
					return $(this).next().find("option:selected").text();
				});

				/* $('.csi_faq_wrap > dd').eq(0).show();
				$('.csi_faq_wrap > dt').bind('click', function(){
					$(this).toggleClass('on');
					$(this).next().slideToggle();
				}); */
				/* 150614 성연욱 - 자주하는 질문 추가 end */
				
				Best10Setting();
				
				causeListSetting();
				
				//tabs
		        $("#tabs").tabs({
		            collapsible:true
		        });
		        //accordion
		        /* $(".accrodion-wrap").accordion({
		            collapsible:true,
		            heightStyle: "content"
		        }); */

		        //custom scroll
		        $('#popBody').mCustomScrollbar({theme:"dark-3"});
		        
		        $('#popBody2').mCustomScrollbar({theme:"dark-3"});

		        //자주하는 질문
		        bestQuestion();

		        //전체 faq 버튼 컨트롤
		        btnAllFaq();
		        
		     	// Change phone call customer service time
		    	var startTime = 20240115070000;
		    	var currentContent = $('#tel_consultant_time').text();
		    	if (todayH >= startTime) {		    	
		    		$('#tel_consultant_time').text(currentContent + '평일, 09:00~18:00');
		    	} else {
		    		$('#tel_consultant_time').text(currentContent + '365일, 07:00~22:00');
		    	}
			});
		
		function causeListSetting(){
			for(var i = 1; i < 8; i++){
				$('#cause_list').append('<li><a href="#tabs-all" onclick=""><input type="hidden" id="cause_code_'+i+'" value=""><span id="tab-'+i+'" value=""></span></a></li>');	
			}
			//$('#cause_list').append('<li><a href="#tabs-all"><span id="tab-8">기타</span></a></li>');
			//$('#cause_list').append('<input type="hidden" id="cause_code_8" value="008">');
		}
		
		// 탑10
		/* function Best10Setting(){
			for(var i = 1; i < 3; i++){
				var html = '';
				var id_voc_faq;
				html += '<div class="best_box big">';
				html += '<input type="hidden" id="id_voc_faq"  value="1">';
				html += '<a href="javascript:faqView(,,,'+id_voc_faq+');">';
				html += '<span class="txt-wrap">';
				html += '<span class="question_num">Q'+i+'.</span>';				
				html += '<span class="tag_category">#</span>';
				html += '<p class="question"></p>';
				//html += '<input type="hidden" class="answer">';
				html += '<textarea name="" class="answer" style=display:none></textarea>';
				html += '</span>';
				html += '</a>';
				html += '</div>';
				$('.faq_best10').append(html);
			}
			
			for (var i = 3; i < 11; i++){
				var html = '';
				html += '<div class="best_box">';
				html += '<a href="javascript:;">';
				html += '<span class="txt-wrap">';
				html += '<span class="question_num">Q'+i+'.</span>';
				html += '<input type="hidden" id="id_voc_faq-'+i+'" value="">';
				html += '<span class="tag_category">#</span>';
				html += '<p class="question"></p>';
				//html += '<input type="hidden" class="answer">';
				html += '<textarea name="" class="answer" style=display:none></textarea>';
				html += '</span>';
				html += '</a>';
				html += '</div>';
				$('.faq_best10').append(html);
			}
		}  */
		
		//자주하는 질문
	    function bestQuestion(){
	        //자주하는 질문 팝업 컨트롤
	        var filter = "win16|win32|win64|mac|macintel";
	        $('.best_box a').on('click', function(){
				//console.log($(this).children().children('span.question_num').text());
				
				var qnum = $(this).children().children('span.question_num').text();
                var qcategory = $(this).children().children('span.tag_category').text();
                var question = $(this).children().children('p.question').text();
                var answer = $(this).children().children('.answer').html();
                
	            if ( navigator.platform ) { 
	                if (filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) {
	                	
/* 	                	$('.faq_best_popup mob_pop').children().children('.question_num').text(qnum);
	                    $('.faq_best_popup mob_pop.pop_header').children('span.tag_category').text(qcategory);
	                    $('.faq_best_popup mob_pop.pop_header').children('p.question').text(question); */
	                    $('#mob_num').text(qnum);
	                    $('#mob_category').text(qcategory);
	                    $('#mob_question').text(question);
	                    $('#body_content_mob').html(answer);
	                	
		                //mobile
		                if(question != ""){
		                	
		                	//mobile 
		                	$('.pop_up_dimm').show();
			                $('.faq_best_popup.mob_pop').show();
			                /*
							230809 모바일,웹뷰 position 지움							
			                // $('#wrap').css({
							// 'position':'fixed',
			                //     'left':'0',
			                //     'right':'0',
			                //     'overflow':'hidden'
			                // });
							*/
		                }else{
		                	$('.best_box a').removeClass('on');		                	
		                }
		                
	                }else{
	                	
	                	$('.pop_header').children('span.question_num').text(qnum);
	                    $('.pop_header').children('span.tag_category').text(qcategory);
	                    $('.pop_header').children('p.question').text(question);
	                    $('#body_content').html(answer);
	                	
		                //pc
		                if(question != ""){
		                	$('.pop_up_dimm').show(); // 230809 딤 hide -> show수정
		                	$('.faq_best_popup').show();
			                $('.faq_best_popup.mob_pop').hide();
		                }
	                }
	            }
	        });

	        $('.pop_header .btn_pop_close').on('click', function(){
	            
	            if ( navigator.platform ) { 
	                if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) { 
	                //mobile 
	                $('.pop_up_dimm').hide();
                	$('.faq_best_popup.mob_pop').hide();
	                $('.best_box a').removeClass('on');
					/*
					230809 모바일,웹뷰 position 지움
					// $('#wrap').css({
					//     'position':'relative',
					//     'left':'0',
					//     'right':'0',
					//     'overflow':'auto',
					// 	'z-index':'1000',
					// });
					*/
	                }else{ 
	                //pc 
	                $('.faq_best_popup').hide();
	                $('.pop_up_dimm').hide();
	                $('.faq_best_popup.mob_pop').hide();
	                $('.best_box a').removeClass('on');
	                }
	            }

	        });

	        //자주하는 질문 on/off
	        $('.best_box a').click(function() {
	            if($('.best_box a').hasClass('on')) {
	                $('.best_box a').removeClass('on');
	                $(this).addClass('on');
	            }else{
	                $(this).addClass('on');
	            }
	        });
	    }

	    //전체 faq 버튼 컨트롤
	    function btnAllFaq() {
	        $('.btn_check-all').click(function() {
	            if(!$(this).hasClass('on')){
	            	$('#cause_list').children('li').removeClass('ui-tabs-active ui-state-active');
	            	$.coustomer.faqList('', '', '', 1,'');
	            	$(this).toggleClass('on');
	            } else {
	            	$(this).toggleClass('on');
	            }
	            
	        });
	    }
		
		</script>
</body>
</html>