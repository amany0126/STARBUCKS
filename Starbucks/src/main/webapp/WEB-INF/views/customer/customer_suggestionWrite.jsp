<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 소리 | Starbucks Korea</title>

<jsp:include page="../common/header_head.jsp" />
<!-- 해당 페이지용 css 및 스타일 부분 -->
</script>

		<link href="/common/css/style_util.css?v=240319" rel="stylesheet">
		<link href="/common/css/style_csi.css" rel="stylesheet">
		<script>
		  var todayH = 20241019101651;
		</script>
	</head>

<style>

	.rel_faq_pop { border-radius:3px; overflow:hidden; position:absolute; left:50%; margin-left:-240px; top:600px; box-shadow:1px 1px 3px #333; z-index:100; display:none; width:480px; }
	.prod_find_pop { border-radius:3px; overflow:hidden; position:absolute; left:50%; margin-left:-240px; top:600px; box-shadow:1px 1px 3px #333; z-index:100; display:none; width:480px; }
	a.btn_find_prod { background:#666; border-radius:3px; color:#fff; display:block; float:left; font-size:12px; font-weight:bold; height:28px; line-height:28px; text-align:center; width:64px; }
	
	div.rel_faq_btnzone p.btn_list { float:left; margin-left:100px; border:1px solid #bb9f65; background:#e2c383; border-radius:3px; width:80px; margin-top:20px; }
	div.rel_faq_btnzone p.btn_list a { color:#222; display:block; font-size:12px; font-weight:bold; height:28px; line-height:28px; text-align:center; width:100%;}


	.prod_remove { background:url("../common/img/footer/recruit/file_remove.gif") no-repeat #fff; border:1px solid #ddd; border-radius:3px; float:left; height:26px; margin-left:10px; overflow:hidden; text-indent:-20000px; width:26px; }
	.prod_add { background:url("../common/img/footer/recruit/file_add.gif") no-repeat #fff; border:1px solid #ddd; border-radius:3px; float:left; height:26px; margin-left:10px; overflow:hidden; text-indent:-20000px; width:26px; }
	
	
	/* .prod_section { margin-bottom:15px; } 고객의 소리 개선 220615 */

	.voc_input_tbl table tr td div.prod_wrap { height:28px; margin-bottom:10px; width:514px; } /* 고객의 소리 개선 220615 */
	.voc_input_tbl table tr td div.prod_wrap:last-child { margin-bottom:0; } /* 고객의 소리 개선 220615 */
	.voc_prod_input { border:1px solid #ddd; border-radius:3px; float:left; height:26px; padding:0; width:392px; }
	.voc_prod_btn { float:left; height:28px; margin-left:10px; overflow:hidden; position:relative; width:62px; }
	.voc_prod_input_btn { background:#777; border:none; border-radius:3px; color:#fff; cursor:pointer; height:28px; width:62px; }
	/* 
	.voc_prod_input { border:1px solid #ddd; border-radius:3px; float:left; height:26px; padding:0; width:402px; margin-right:10px}
	 */	
	 
	.have_result_list ul li p.result_cate { color:#333; font-weight:bold; width:100px; text-align:center}
	.have_result_list ul li p.result_prod { color:#333; font-weight:bold; width:370px; }
	.have_result_list ul li p.result_prod_full { width:290px; }

	.btn_wrap { height:30px; margin-top:20px; }
	.btn_wrap a { display:inline-block; background:#222; border-radius:3px; color:#fff; font-size:12px; font-weight:bold; height:30px; line-height:30px; margin:0 auto; text-align:center; width:60px; }

	.faq_find_cont { padding:30px; background:#fff; }
	dl.faq_find_tab { position:relative; width:420px; }
	dl.faq_find_tab > dt { margin-bottom:20px; }
	dl.faq_find_tab > dt a { border:1px solid #ccc; border-radius:3px; color:#444; display:block; font-size:12px; height:26px; line-height:26px; text-align:center; width:95px; }
	dl.faq_find_tab > dt a.on { color:#fff; background:#006633; }
	dl.faq_find_tab > dt.dt2 { position:absolute; left:102px; top:0; }
	dl.faq_find_tab > dt.dt3 { position:absolute; left:204px; top:0; }
	dl.faq_find_tab p.p1 { font-size:14px; color:#444; line-height:1.4; margin-bottom:10px; }
	dl.faq_find_tab p.p1 span { color:#666; display:block; padding-top:10px; }
	dl.faq_find_tab > dd { display:none; }
	dl.faq_find_tab > dd div.doro_wrap { padding:13px 20px; background:#f4f4f2; border-radius:3px; margin-bottom:20px; }

	.cate_sel_wrap3 { background:url("../common/img/util/sbox_arrow_down.png") 182px 10px no-repeat #fff; border:1px solid #ddd; border-radius:3px; float:left; height:26px; margin:0; position:relative; width:200px; }
	.cate_sel_wrap3 select { height:26px; opacity:0; filter:alpha(opacity=0); width:200px; }
	.cate_sel_wrap3 label { color:#444; font-size:12px; font-weight:bold; left:5px; position:absolute; top:8px; }

	.voc_ttl_input1 { border:1px solid #ddd; border-radius:3px; float:left; height:26px; padding:0; width:502px; } /* 고객의 소리 개선 220615 */

	.voc_input_tbl table tr td textarea.textArea  { background:#fff; border:1px solid #ddd; border-radius:3px; height:173px; padding:5px; width:502px; resize:none; }
	.voc_file_input_hidden { margin-left:2%; width:100%; }
	
	p.input_store_txt { width:280px; }/* 고객의 소리 개선 220615 */
	
	.text_underLine {text-decoration: underline; text-underline-position: under; font-weight: bold;}

	@media screen and (max-width:640px) {

		.voc_ttl_input1 { border:1px solid #ddd; border-radius:3px; float:left; height:26px; padding:0; width:100%; }

		.voc_input_tbl table tr td div.prod_wrap { height:28px; margin-top:10px; width:100%; }
		.voc_prod_input { width:50%; }
		.voc_prod_btn { margin-left:2%; width:20%; }
		.voc_prod_input_btn { width:100%; }

		.voc_input_tbl table tr td textarea.textArea  { background:#fff; border:1px solid #ddd; border-radius:3px; height:173px; padding:5px; width:97%; resize:none; }

		/* 상품찾기팝업 */
		.prod_find_pop { /* border-radius:0; 삭제 220830 */ box-shadow:none; left:0; margin-left:0; top:70px; width:100%; }
		
		/* 상품찾기팝업 */
		.rel_faq_pop { border-radius:0; box-shadow:none; left:0; margin-left:0; top:20%; width:100%; }
		.voc_file_input_hidden { margin-left:2%; width:100%; }
	}
			 
</style>
</head>
<body>
<div class="loading_dimm" style="display:none; z-index:20000;"></div><div class="loading_img" style="display:none; z-index:20001;"></div>
	
			<!-- VOC 안내팝업 위치 변경 2022.07 -->
		<div class="pop_up_voc" style="display:none"></div>
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
	    </div>
		<!-- VOC 안내팝업 --> 
<!--헤더 공용코드 전 실행할부분-->
<div id="wrap">
	<jsp:include page="../common/header.jsp" />

			<div id="container">
				<!-- 서브 타이틀 -->
				<header class="ms_sub_tit_wrap">
					<div class="ms_sub_tit_bg">
						<div class="ms_sub_tit_inner">
							<h4><img alt="고객의 소리" src="//image.istarbucks.co.kr/common/img/util/reward/ms_suggestion_ttl.png"></h4>
							<ul class="smap">
								<li><a href="/util/index.do"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
								<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴"></li>
								<li><a href="/customer/suggestionWrite.do"><span class="en">고객의 소리</span></a></li>
							</ul>
						</div>
					</div>
				</header>
				<!-- 서브 타이틀 end -->
				<!-- 내용 -->
				<div class="ms_cont_wrap v_seq220615"><!-- 고객의 소리 개선, 키워드 클랙스 추가 220615 -->
					<!-- ms_cont -->
					<div class="ms_cont">
						<form id="vocVO" name="vocForm" class="voc_input_frm" action="/voc/registWebHomePageVoc.do" method="post" enctype="multipart/form-data">



						<input id="store_cd" name="store_cd" type="hidden" value="0"/>







							<fieldset>
							<input type="hidden" name="CD_VISIT_STR" id="CD_VISIT_STR">
							<input type="hidden" name="CD_STORE" id="CD_STORE">
							<input type="hidden" name="DS_CSTMR_CTTPC" id="DS_CSTMR_CTTPC">
							<!-- <input type="hidden" name="DS_CSTMR_EMAIL" id="DS_CSTMR_EMAIL"> -->
							<input type="hidden" name="DS_NO_BILL" id="DS_NO_BILL">
							<input type="hidden" name="ERECEIPT_CONTENT" id="ERECEIPT_CONTENT">
							<input type="hidden" id="FIND_STORE_YN" name="FIND_STORE_YN" value=""/>
							
							
								<legend>고객의 소리 입력폼</legend>
								<!-- 귀한 말씀도 -->
								<div class="voc_top_bg">
									<!-- s: 고객의 소리 개선 220615 -->
									<div class="voc_top_txt">
										<p class="pc_txt"><b>스타벅스는 고객님의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br/>이용하시면서 불편한 점이나 개선이 필요한 점이 있다면 알려주세요. 좀 더 나은 서비스로 보답하겠습니다.</b></p><!-- 문구 수정 220830 -->
										<p class="mo_txt"><b>스타벅스는 고객님의<br/> 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br/>이용하시면서 불편한 점이나<br/> 개선이 필요한 점이 있다면 알려주세요. 좀 더 나은 서비스로 보답하겠습니다.</b></p><!-- 문구 수정 220830 -->
										<ul>
											<li><span id="tel_consultant_time">전화상담(1522-3232) : </span></li>
											<!-- <li><span>고객의 소리 : 365일, 09:00~18:00</span></li> 삭제 220830 -->
											<li class="description">※ 답변완료 시, APP PUSH로 알려드립니다.</li>
										</ul>
									</div>
									<!-- e: 고객의 소리 개선 220615 -->
									
									<!-- <i class="icon_voc_speaker"></i> -->
									<a class="btn_ask_list" href="/my/vocList.do">나의 문의 내역 보기</a>
								</div>
								<!-- 귀한 말씀도 end -->
								<!-- 테이블 -->
								<div class="voc_input_tbl">
									<p class="must_input">표시 항목은 필수 입력 사항입니다.</p>
									<table summary="문의분류, 답변 받으실 메일, 연락처, 장소, 제목, 내용, 파일첨부">
										<!-- 항목명 수정 220615 -->
										<caption>문의분류, 답변 받으실 메일, 연락처, 장소, 제목, 내용, 파일첨부에 대한 테이블</caption>
										<colgroup>
											<col width="200">
											<col width="630">
										</colgroup>
										<tr>
											<th scope="row">문의분류<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap" id="inquiry_category">
													<p class="cate_sel_wrap" style="display:none;">
														<label for="TP_VOC_DEMAND">문의유형</label>
														<select name="TP_VOC_DEMAND" id="TP_VOC_DEMAND" >
														</select>
													</p><!--  고객의 소리 개선, 항목 삭제 220615 -->
													<p class="cate_sel_wrap">
														<label for="CD_VOC_CAUSE_1">대분류</label>
														<select name="CD_VOC_CAUSE_1" id="CD_VOC_CAUSE_1" >
														</select>
													</p>
													
													<p class="cate_sel_wrap3">
														<label for="CD_VOC_CAUSE_2">중분류</label>
														<select name="CD_VOC_CAUSE_2" id="CD_VOC_CAUSE_2" >
														</select>
													</p>
													
													<p  id="REL_FAQ_CNT" style="display:none;padding:7px">
														관련 FAQ 13 건
													</p>
												</div>
											</td>
										</tr>
										<tr id="trProd" style="display:none;">
											<th scope="row">제품/상품</th>
											<td>
											
												<div class="prod_section">

													<div class="prod_wrap" id="prod_wrap1">
														<div class="input_wrap"><input class="voc_prod_input" readonly="" type="text" id="NM_GOODS1"></div><!--  고객의 소리 개선 220615 -->
														<div class="voc_prod_btn">
															<input class="voc_prod_input_btn" type="button" value="상품찾기" idx="1"><!-- 고객의 소리 개선 수정 220830 스크립트에서 수정 필요 -->
															<input class="voc_prod_input_hidden"  type=hidden name="CD_GOODS" id="CD_GOODS1">
														</div>
														<!-- <a class="prod_add" href="javascript:void(0);" onClick="$voc.prodInsert(); return false;">더하기 </a> 고객의 소리 개선 수정 220830 스크립트에서 삭제 필요 -->
													</div> 
												</div>
												
											</td>
										</tr>
										<tr style="display:none;">
											<th scope="row">답변 알림 서비스<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="tbl_radio_wrap">
													<input id="TP_CSTMR_RPLY1" name="TP_CSTMR_RPLY" type="radio" value="N">
													<label for="TP_CSTMR_RPLY1">받지 않음</label>
													<input id="TP_CSTMR_RPLY2" name="TP_CSTMR_RPLY" type="radio" value="Y" checked="checked">
													<label for="TP_CSTMR_RPLY2">받음 (APP Push)</label>													
												</div>
												
											</td>
										</tr><!--  고객의 소리 개선, 항목 삭제 220615 -->
										<!--  삭제 220830 -->
										<!-- s: 고객의 소리 개선 수정 220915 -->
										<tr id="trPayment">
											<th scope="row">결제 정보<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<ul class="payment_info_list">
													<li class="find_ebill_wrap">
														<input type="radio" id="find_ebill" name="payment_info" value="find_ebill">
														<label for="find_ebill" class="btn_find_ebill_wrap"><span class="radio"></span><span class="btn_find_ebill">전자영수증 조회</span></label>
														<div class="info_ebill_load_wrap" style="display: none;">
															<ul class="info_ebill_load" style="display: none;"></ul>
														</div>
													</li>
													<li class="insert_wrap" style="text-align: left;">
														<input type="radio" id="insert" name="payment_info" value="insert"><label for="insert" class="insert_input_wrap"><span class="radio"></span>직접입력</label>
														<input type="text" id="insert_input" style="display: none;" placeholder="매장명, 결제일시, 결제금액을 작성해 주세요.">
													</li>
													<li>
														<input type="radio" id="nothing" name="payment_info" value="nothing"><label for="nothing" class="nothing_wrap"><span class="radio"></span>해당없음</label>
													</li>
												</ul>
											</td>
										</tr>
										<!-- e: 고객의 소리 개선 수정 220915 -->
										<tr>
											<th scope="row">방문 매장<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th> <!-- 고객의 소리 개선, 항목명 수정 220615 -->
											<td>
												<!-- s: 고객의 소리 개선, 수정 220615 -->
												<div class="tbl_radio_wrap v_seq220615" id="visit_store_radio_wrap">
													<input id="HOW1" name="how" checked="checked" type="radio" value="Y">
													<label for="HOW1" class="visit_store"><span class="radio"></span>매장 방문</label>
													<input id="HOW2" name="how" type="radio" value="N">
													<label for="HOW2" class="other"><span class="radio"></span>매장 방문 외</label>
												</div>
												<!-- e: 고객의 소리 개선, 수정 220615 -->
												<div class="sel_wrap mt10" id="visit_store_sel_wrap">
													<!-- <p class="visit_txt">방문매장</p> 고객의 소리 개선, 항목 삭제 220615 -->
													<div class="input_wrap"><p class="input_store_txt"></p></div> <!-- 고객의 소리 개선 220615 -->
													<a class="btn_find_store" href="javascript:void(0);">매장찾기</a>
													
												</div>
												<div class="sel_wrap" style="display:none;">
													<p class="visit_txt">방문일</p>
													<div class="pick_date_each">
														<div class="pick_date_each_left"><input id="pickDate1" name="DT_VISIT_STR" title="원하는 날짜를 선택해 주세요." type="text" readonly="readonly" ></div>
														<div class="pick_date_each_right"><label for="pickDate1">날짜 선택</label></div>
													</div>
												</div><!-- 고객의 소리 개선, 항목 삭제 220615 -->
											</td>
										</tr>
										<!-- 고객의 소리 개선 수정 220830 휴대폰 추가 -->
										<tr class="trCellphone">
											<th scope="row">휴대폰<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<p class="phone_sel_wrap">
														<label for="phone1"></label>
															<select id="phone1" onChange="initPhone1();">
															</select>
													</p>
													<p class="cell_hyphen">-</p>
													<input class="cellphone_input" id="phone2_mask" name="phone2_mask" type="text" maxlength="4" ref="num" value='****' 
														onclick="initPhone2();"
	  													onblur="maskingPhone2(this.value);"/>
													<p class="cell_hyphen">-</p>
													<input class="cellphone_input" id="phone3" name="phone3" type="text" maxlength="4" ref="num" value='7174'
														onclick="initPhone3();"/> 
													<input type="hidden" name="phone2" id="phone2"/>
													<input type="hidden" name="phone_change_flag" id="phone_change_flag"/>
												</div>
												<p class="description">입력된 연락처를 우선으로 고객센터(또는 매장)에서 연락드릴 수 있습니다.</p>
											</td>
										</tr> 
										<tr>
											<th scope="row">제목<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<div class="sel_wrap">
													<input class="voc_ttl_input1" id="DS_VOC_TITLE" name="DS_VOC_TITLE" type="text" onpaste="fnPaste(); return false;" oncopy="fnCopy(); return false;"> <!--  style="width:514px"> -->
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">내용<img alt="필수입력" src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
											<td>
												<!-- <textarea id="DS_VOC_CN" name="DS_VOC_CN"  style="height:200px"></textarea> -->
												<textarea class="textArea" id="DS_VOC_CN" name="DS_VOC_CN" onpaste="fnPaste(); return false;" oncopy="fnCopy(); return false;" 
											        placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다."></textarea>
												<br><span id="realByte">0 / 2500byte</span>
											</td>
										</tr>
										
										<tr>
											<th scope="row">첨부파일</th> <!-- 수정 220830 -->
											<td>
											
											
												<div class="file_section">

													<div class="file_wrap" id="file_wrap1">
														<div class="input_wrap"><input class="voc_file_input" id="fileName1"  readonly type="text"></div><!-- 고객의 소리 개선 220615 -->
														<div class="voc_file_btn">
															<input class="voc_file_input_btn" type="button" value="찾아보기">
															<input class="voc_file_input_hidden" onchange="document.getElementById('fileName1').value = this.value;" type="file" name="file_nm1" id="file_nm1">
														</div>
															<a class="file_add" href="javascript:void(0);" onClick="$voc.fileInsert(); return false;">더하기 </a>
													</div> 
													
												</div>
												<!-- 고객의 소리 개선, 문구 수정 220615 -->
												<ul class="file_upload_desc">
													<li>최대 3개까지 추가 가능합니다.</li>
													<li>파일 형식은 jpg, jpeg, png, gif만 가능합니다.</li>
													<li>1개당 최대 5MB, 총 10MB까지 등록 가능합니다.</li>
												</ul>
												<!-- <div class="voc_file_guide2">구매하신 음료,푸드,상품에 대한 문의는 결제 내역(영수증, 결제 기록 등)을 첨부해 주시거나 매장명,결제 일시를 작성해 주시면 보다 신속한 처리가 가능합니다.</div> 220225 수정 -->
												<!-- <div class="voc_file_guide">파일 첨부는 아래의 파일만 등록이 가능하며 최대 2개(1개당 최대 5MB), 총 10MB까지 등록이 가능합니다. <br> <span>(등록 가능 확장자 : jpg, jpeg, png, gif)</span></div> 20210809 수정 -->
											</td>
										</tr>
									</table>
								</div>
								<!-- 테이블 end -->
								
								<div class="voc_info_input_guide">
									<ul>
										<!-- <li>본 고객의 소리는 e-mail을 통한 상담으로만 진행됩니다. 전화 상담 요청은 불가하오니 양해 부탁 드립니다.</li> 고객의 소리 개선, 항목 삭제 220615 -->
										<li>
					                      고객의 소리 민원 처리를 위해 고객님의 연락처로 고객센터(또는 매장)에서 연락드릴 수 있습니다.<!-- 220811 문구 수정 -->
					                    </li>
										<!-- <li>답변은 직접 기재하여 주신 메일주소로 발송되며, 기재 오류 및 계정문제가 발생한 경우에는 답변이 불가할 수 있으므로 메일 주소를 꼭 확인해 주시기 바랍니다.</li> 고객의 소리 개선, 항목 삭제 220615 -->
										<li>관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다.</li>
										<li>공정거래위원회에서 고시한 소비자분쟁해결기준에 의거 소비자 피해에 대한 교환/환불 처리 해드립니다.</li>
									</ul>
								</div>
								<div class="voc_info_input_btns">
									<ul>
										<li class="voc_info_input_btn1"><a href="#none" onclick="$voc.goSubmit(); return false;">고객의 소리 등록 하기</a></li>
										<!-- <li class="voc_info_input_btn2"><a href="#n" onclick="$voc.cancel(); return false;">취소</a></li> -->
									</ul>
								</div>
							</fieldset>
							<!-- 매장 찾기 팝업 20160311 -->
							<div class="myDimm"></div>
							<div class="sto_find_pop">
								<div class="sto_find_head">
									<p class="tit">매장 찾기</p>
									<p class="close"><a href="javascript:void(0)"><img src="//image.istarbucks.co.kr/common/img/responsibility/enviro_pop_close.jpg" alt="" /></a></p>
								</div>
								<div class="sto_find_cont">
									<dl class="sto_find_tab">
										<dt class="dt1"><a href="javascript:void(0)" class="on">주소로 찾기</a></dt>
										<dd class="on">
											<div class="doro_wrap">
												<ul>
													<li>
														<label class="lab" for="find_sigu">시/도</label>
														<div class="select_box select_box01">
															<span class="value">선택</span>
															<select id="store_sido" name="store_sido" onchange="$voc.gunList(this.value)">
																<option onchange="$voc.gunList(this.value)" value="" selected="selected">시/도</option>
																<option value="01">서울</option><option value="02">광주</option><option value="03">대구</option><option value="04">대전</option><option value="05">부산</option><option value="06">울산</option><option value="07">인천</option><option value="08">경기</option><option value="09">강원</option><option value="10">경남</option><option value="11">경북</option><option value="12">전남</option><option value="13">전북</option><option value="14">충남</option><option value="15">충북</option><option value="16">제주</option><option value="17">세종</option>
															</select>
														</div>
													</li>
													<li>
														<label class="lab" for="gugun">시/군/구</label>
														<div class="select_box select_box01">
															<span class="value" id="guNm">선택</span>
															<select id="gugun" name="store_gugun" onchange="$voc.storeList(this.value, this.id)">
																<option selected="selected">구/군</option>
															</select>
														</div>
													</li>
												</ul>
											</div>
											<strong class="result_with resultNm">지역을 선택해주세요.</strong>
											<!-- 검색결과 있는 경우 -->
											<!-- <p class="have_result_with select_with" style="display:none;">아래 목록에서 해당하는 도로명을 선택하세요.<br>다른 매장명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p> -->
											<div class="have_result_list select_list" style="display:none;">
												<ul id="storeList">
													<li></li>
												</ul>
											</div>
											<!-- 검색결과 있는 경우 end -->
											<!-- 검색결과 없는 경우 -->
											<p class="no_result_with no_select_with" style="display:none;">해당 지역으로 검색한 결과가 없습니다.<br>다른 지역으로 검색하려면 다시 선택 해 주세요.</p>
											<!-- 검색결과 없는 경우 end -->
											<div class="btn_stopop_close_wrap" >
												<a href="javascript:void(0);" id="btnCloseStore">닫기</a>
											</div>
										</dd>
										<dt class="dt2"><a href="javascript:void(0)">매장명으로 찾기</a></dt>
										<dd>
											<div class="doro_wrap">
												<ul>
													<li class="last">
														<label class="lab" for="find_gm_name">매장명</label>
														<input class="bar2" type="text" name="find_gm_name2" id="find_gm_name2">
														<p class="btn_search" style="display: block;"><a href="javascript:void(0);" id="searchNm" onclick="$voc.storeList('', this.id)">검색</a></p>
													</li>
												</ul>
											</div>
											<strong class="result_with searchNm">매장명을 입력해주세요.</strong>
											<!-- 검색결과 있는 경우 -->
											<p class="have_result_with search_with" style="display:none;">아래 목록에서 해당하는 도로명을 선택하세요.<br>다른 매장명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p>
											<div class="have_result_list search_list" style="display:none;">
												<ul id="searchStoreList">
													<li></li>
												</ul>
											</div>
											<!-- 검색결과 있는 경우 end -->
											<!-- 검색결과 없는 경우 -->
											<p class="no_result_with search_no_with" style="display:none;">해당 매장으로 검색한 결과가 없습니다.<br>다른 매장명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p>
											<!-- 검색결과 없는 경우 end -->
											<div class="btn_stopop_close_wrap" >
												<a href="javascript:void(0);" id="btnCloseStore">닫기</a>
											</div>
										</dd>
									</dl>
								</div>
							</div>
							<!-- 매장 찾기 팝업 20160311 end -->
							
							<!-- 관련 FAQ 건수 보기 확인 팝업 -->
							<div class="rel_faq_pop">
								<div class="sto_find_head">
									<p class="tit">관련 FAQ</p>
									<p class="close"><a href="javascript:void(0)"><img src="//image.istarbucks.co.kr/common/img/responsibility/enviro_pop_close.jpg" alt="" /></a></p>
								</div>
								<div class="sto_find_cont faq_alert_msg" style="text-align:center">
									
									<strong class="result_with resultNm" >선택하신 분류에 해당하는<br>관련 FAQ가 <span id="cntRelFaq">13</span>건이 있습니다.<br>조회하시겠습니까?</strong>
									<!-- 검색결과 있는 경우 -->
									<!-- <p class="have_result_with select_with" style="display:none;">아래 목록에서 해당하는 도로명을 선택하세요.<br>다른 매장명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p> -->
									<div class="have_result_list select_list" style="display:none;">
										<ul id="faqList">
											<li></li>
										</ul>
									</div>
											
												
									<div style="margin-top:10px">
										<span class="btn_wrap"><a class="" href="javascript:$voc.faqList()">보기</a></span> 
										<span class="btn_wrap close"><a class="" href="javascript:void(0)">취소</a></span>
									</div>
									
<!-- 									<p class="btn_stopop_close_wrap"> -->
<!-- 										<a href="javascript:void(0);">취소</a> -->
<!-- 									</p> -->
									
								</div>
								
								<div  class="sto_find_cont faq_list" style="display:none">
									<div id="faq_cate_path"  style="text-align:right; margin-bottom:10px">
										<strong>분류 : 제품 > 품질맛</strong>
									</div>								
									<dl class="csi_faq_wrap">
									</dl>
									<div class="faq_pagination">
										<ul class="pager">
										</ul>
									</div>
									
									<div style="margin-top:10px; text-align:center">
										
										<span class="btn_wrap close"><a class="" href="javascript:void(0)">계속등록</a></span>
										<span class="btn_wrap"><a class="" href="/my/vocList.do">등록취소</a></span> 
									</div>
									
								</div>
							</div>
							
							<!-- 상품 찾기 팝업 -->
							<div class="prod_find_pop">
								<div class="sto_find_head">
									<p class="tit">상품 찾기</p>
									<p class="close"><a href="javascript:void(0)"><img src="//image.istarbucks.co.kr/common/img/responsibility/enviro_pop_close.jpg" alt="" /></a></p>
								</div>
								<div class="sto_find_cont">
									<dl class="sto_find_tab">
										<dt class="dt1" style="display:none"><a class="on" ></a></dt>
											<dd>
											<div class="doro_wrap">
												<ul>
													<li class="last">
														<label class="lab" for="find_gm_name">상품명</label>
														<input class="bar2" type="text" name="find_prod_name" id="find_prod_name">
														<p class="btn_search" style="display: block;"><a href="javascript:void(0);" id="searchNm" onclick="$voc.prodList('', this.id)">검색</a></p>
													</li>
												</ul>
											</div>
											<strong class="result_with searchNm">상품명을 입력해주세요.</strong>
											<!-- 검색결과 있는 경우 -->
											<p class="have_result_with search_with" style="display:none;">아래 목록에서 해당하는 상품을 선택하세요.<br>다른 상품명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p>
											<div class="have_result_list search_list" style="display:none;">
												<ul id="searchProdList">
													<li></li>
												</ul>
											</div>
											<!-- 검색결과 있는 경우 end -->
											<!-- 검색결과 없는 경우 -->
											<p class="no_result_with search_no_with" style="display:none;">해당 상품으로 검색한 결과가 없습니다.<br>다른 상품명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</p>
											<!-- 검색결과 없는 경우 end -->
											<div class="btn_stopop_close_wrap">
												<a href="javascript:void(0);">닫기</a>
											</div>
										</dd>
									</dl>
								</div>
							</div>
							
							<!-- s: 고객의 소리 개선, 개인정보의 수집 및 이용 목적 팝업 220615 -->
							<div class="personal_consent_pop" style="display: none;">
								<div class="per_con_head">
									<p class="tit">개인정보의 수집 및 이용 목적</p>
									<p class="close"><a href="javascript:void(0)"><img src="//image.istarbucks.co.kr/common/img/responsibility/enviro_pop_close.jpg" alt=""></a></p>
								</div>
								<div class="per_con_cont">
									<table class="per_con_tbl">
										<tr class="title">
											<th>구분</th>
											<th>필수</th>
										</tr>
										<tr class="content">
											<th>항목</th>
											<td>방문 매장명, 휴대전화 번호<br /><!-- 220830 문구 수정 -->
											결제정보(결제 매장명, 결제일시, 결제금액)</td>
										</tr>
										<tr class="content">
											<th>목적</th>
											<td>회원 상담/문의, 민원 처리, 고객 서비스 리워드</td>
										</tr>
										<tr class="content">
											<th>보유기간</th>
											<td class="text_underLine">소비자의 불만 또는 분쟁처리에 관한 기록(전자상거래법: 3년)</td>
										</tr>
									</table>
									<p class="notice">※ 개인 정보 수집에 동의하지 않을 경우 고객의 소리 접수가 불가합니다.</p>
								</div>
								<div class="per_con_footer">
									<input type="radio" id="personal_consent_agree" name="personal_consent">
									<label for="personal_consent_agree" class="personal_consent_agree"><span class="radio"></span>동의합니다.</label>
									<input type="radio" id="personal_consent_disagree" name="personal_consent">
									<label for="personal_consent_disagree" class="personal_consent_disagree"><span class="radio"></span>동의하지 않습니다.</label>
								</div>
							</div>
							<!-- e: 고객의 소리 개선, 개인정보의 수집 및 이용 목적 팝업 220615 -->

							<!-- s: 고객의 소리 개선, 전자영수증 조회 팝업 220615 -->
							<div class="find_ebill_pop" style="display: none;">
								<div class="find_ebill_head">
									<p class="tit">전자영수증 조회</p>
									<p class="close"><a href="javascript:void(0)"><img src="//image.istarbucks.co.kr/common/img/responsibility/enviro_pop_close.jpg" alt=""></a></p>
								</div>
								<div class="find_ebill_cont">
									<div class="notice">
										<ul>
											<li>최근 14일까지의 이력만 조회 됩니다.</li>
											<li>결제정보는 1개만 선택 가능합니다.</li>
										</ul>
									</div>
									<table class="find_ebill_tbl">
										<tr class="title">
											<!-- 항목명 수정 220830 -->
											<th>
                          						<span>거래</span><span>구분</span>
                       	 					</th>
											<th>구분</th>
											<th>매장명</th>
											<th>날짜</th>
											<th><span>결제</span><span>금액</span></th>
										</tr>
									</table>
								</div>
								<div class="find_ebill_footer">
									<ul class="pagination">
									</ul>
									<div class="btn_wrap">
										<a href="javascript:void(0);" class="pop_btn btn_close_pop">취소</a>
										<a href="javascript:void(0);" onClick="javascript:fnSetEReceipt();" class="pop_btn btn_choose">선택</a>
									</div>
								</div>
							</div>
							<!-- e: 고객의 소리 개선, 전자영수증 조회 팝업 220615 -->							
							
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
		
		
	</ul>
</nav>
	                <!-- //네비 -->
				</div>
				<!-- 내용 end -->
			</div>
			
		<iframe id="ifrmProc" name="ifrmProc" style="display:none;"></iframe>
			
				<input type="hidden" id="cate_cd" name="cate_cd" value="F17"> <input type="hidden" id="seq" name="seq" value="0"> <input type="hidden" id="searchKeyword" name="searchKeyword" value="">
	<jsp:include page="../common/footer.jsp" />
<!-- 해당 페이지 스크립트 부분 -->	
			<script src="/common/js/bbs/vocWrite.js"></script>

		<script>
			function getSrvTime(){
				var xmlHttp;
				if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
					xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
					xmlHttp.open('HEAD', window.location.href.toString(),false);
					xmlHttp.setRequestHeader("Content-Type", "text/html");
					xmlHttp.send('');
					return new Date(xmlHttp.getResponseHeader("Date"));
				} else if (window.ActiveXObject) {
					xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
					xmlHttp.open('HEAD', window.location.href.toString(),false);
					xmlHttp.setRequestHeader("Content-Type", "text/html");
					xmlHttp.send('');
					return new Date(xmlHttp.getResponseHeader("Date"));
				}
			}
			$(document).ready(function(){
				
             	// s: 고객의 소리 개선 220615

				// s: 개인정보의 수집 및 이용 목적 팝업
				$voc.cstmrAgreeCnt();
				// e: 개인정보의 수집 및 이용 목적 팝업

				// s: 전자영수증 조회 팝업
				$('.payment_info_list .btn_find_ebill_wrap').click(function() {
					var wt = $(window).scrollTop();

					$('.myDimm').show();
					$('.find_ebill_pop').css({top: wt - 80});
					$('.find_ebill_pop').fadeIn();
					
					tempStoreName = ""; //이전에 선택한 결제정보 초기화
					
					$voc.eReceiptList();

					$('.find_ebill_pop .close a').click(function() {
						$('.find_ebill_pop').fadeOut()
						$('.myDimm').hide();
					})
					
					$('.find_ebill_pop .find_ebill_footer .btn_close_pop').click(function () {
		              	$('.find_ebill_pop').fadeOut();
		              	$('.myDimm').hide();
		            });
					
				})
				// e: 전자영수증 조회 팝업
				
				// s: 결제정보 직접입력
				$('.payment_info_list .insert_input_wrap').click(function() {
					$('#ERECEIPT_CONTENT').val('');
					$('.info_ebill_load_wrap').hide();
					$('#insert_input').val('');
					$('#DS_NO_BILL').val('');
					$('#insert_input').attr("disabled",false);
					
					// 전자영수증 선택 후 자동 셋팅된  매장정보 초기화 (고객이 매장찾기로 직접 선택한 값인 경우 유지하도록 함)
					if($('#FIND_STORE_YN').val() != "Y"){ //매장찾기로 선택여부가 Y가 아닐경우
						$('#CD_STORE').val('');
						$('#store_cd').val('0');
						$('.input_store_txt').html('');
					}
					
				})
				// e: 결제정보 직접입력
				
				// s: 결제정보 해당없음
				$('.payment_info_list .nothing_wrap').click(function() {
					$('#ERECEIPT_CONTENT').val('');
					$('.info_ebill_load_wrap').hide();
					$('#insert_input').val('');
					$('#DS_NO_BILL').val('');
					$('#insert_input').attr("disabled",true);
					
					// 전자영수증 선택 후 자동 셋팅된  매장정보 초기화 (고객이 매장찾기로 직접 선택한 값인 경우 유지하도록 함)
					if($('#FIND_STORE_YN').val() != "Y"){ //매장찾기로 선택여부가 Y가 아닐경우
						$('#CD_STORE').val('');
						$('#store_cd').val('0');
						$('.input_store_txt').html('');
					}
					
				})
				// e: 결제정보 해당없음
				// e: 고객의 소리 개선 220615
				
				// s: 고객의 소리 개선 수정 220915
				$('.payment_info_list :radio[name=payment_info]').on('change', function() {
					var selected = $('input[name=payment_info]:checked').val();
					if(selected == 'insert') {
						$('.payment_info_list #insert_input').show();
					} else {
						$('.payment_info_list #insert_input').hide();
						$('.payment_info_list #insert_input').val('');
					}
				});
				// e: 고객의 소리 개선 수정 220915
					
                
				/* 매장찾기 팝업 160311 */
				var hrlist = $('.sto_find_pop div.have_result_list ul li');
				var hrlist_count = hrlist.length;

				if (hrlist_count >= 4) {
					$('.sto_find_pop div.have_result_list').css({
						'height':'180px'
					});
				} else {
					$('.sto_find_pop div.have_result_list').css({
						'height':'auto'
					});
				}

				$('.sto_find_pop div.have_result_list').mCustomScrollbar();
				$('.prod_find_pop div.have_result_list').mCustomScrollbar();

				$('dl.faq_find_tab > dt > a.on').parent().next().show();

				$('dl.sto_find_tab > dt > a.on').parent().next().show();
				$('dl.sto_find_tab > dt > a').bind('click', function(){
					$('dl.sto_find_tab > dt > a').removeClass('on');
					$(this).addClass('on');
					$('dl.sto_find_tab > dd').hide();
					$(this).parent().next().show();
				});

				$('a.btn_find_store').bind('click', function(){
					var wt = $(window).scrollTop();
					$('.myDimm').show();
					$('.sto_find_pop dl.sto_find_tab > dt > a:eq(0)').click();
					$('.sto_find_pop').css({top: wt - 50});
					$('.sto_find_pop').fadeIn();
				});

				$('.sto_find_pop p.close a, .btn_stopop_close_wrap a, .rel_faq_pop p.close a, .prod_find_pop p.close a, .btn_wrap.close a').bind('click', function(){
					$('.myDimm').hide();
					$('.sto_find_pop, .rel_faq_pop, .prod_find_pop').fadeOut();

// 					//로컬테스트
// 					if( this.id == 'btnCloseStore') {
// 						$('#store_nm').val('종각');
// 						$('#store_sido').val($(this).attr('data-sido'));
// 						$('#gugun').val($(this).attr('data-gugun'));
// 						$('#store_cd').val('45');
// 						$('#CD_VISIT_STR').val('45');
// 						$('.input_store_txt').html('선택하신 매장은 <strong>종각</strong> 입니다.')
// 					}
				});
				/* 매장찾기 팝업 160311 end */								

				//회신방법 이메일 지정시 답변받을 메일 입력 tr 활성화
				$('input[name=TP_CSTMR_RPLY]').click(function() {					
					var val = $(this).val();

				});
				
				//상품찾기
				$('.voc_prod_input_btn').on('click', function(){
					prodSel = $(this).attr('idx');
					$('#find_prod_name').val('');
					$('.prod_find_pop .searchNm').html('상품명을 입력해주세요.');
					
					$('.search_with').hide();
					$('.search_list').hide();
					$('.search_no_with').hide();
					
					var wt = $(window).scrollTop();
					$('.myDimm').show();
					$('.prod_find_pop dl.sto_find_tab > dt > a').click();
					
					$('.prod_find_pop').css({top: wt - 50});
					$('.prod_find_pop').fadeIn();
				});
				
				// 150604 성연욱 추가
				$('.store-slider').each(function(){
					$(this).swiper({
						slidesPerView: 3,
						calculateHeight: true
					});
				});
				// 150604 성연욱 추가 end

				$("#store_sido").on( "change", function(){
					$("#store > option").remove();
					$("#store").append("<option>매장</option>");
				});
				

				$('#pickDate1, #pickDate2').datepicker();
				
				//$voc.vocDemandType();	//문의유형
				$voc.middleType();	//대분류
				
				var sbox = $('.cate_sel_wrap select, .cate_sel_wrap2 select');
				sbox.change(function(){
					var sbox_name = $(this).children('option:selected').text();
					$(this).siblings('label').text(sbox_name);
				});

				$('.voc_input_tbl table tr td div.file_wrap:first').css({
					'margin-top':'0' // 고객의 소리 개선 220615
				});

				/* 구명준 추가 시작  */					
				
				// input 디자인
				$('input[type=checkbox]').ezMark();
				$('#').ezMark();

				$('#ckAll, #ck2All').click(function(){
					$('input:checkbox').prop('checked', this.checked).change();
				});

				$(".shopArea_right").mCustomScrollbar();


				/* 구명준 끝 */
				
				
				$('#pickDate1').on('keydown', function(event){
					if(event.keyCode == 8) return false;;
				});
				
				//고객 연락처 셋팅
				$("select[id=phone1]").append(createMobile('010'));
				$("#phone1").trigger("change");
				
			});

			/* 구명준 추가 */

			$(function(){		
				
				content_tabmenu();   //content_tabmenu 설정					
				
				selectbox_init();    //selectbox 디자인 설정

				pop_init();          //pop_init 팝업 설정

				pop_slide_init();    //pop_slide_init 슬라이드 설정

				box_tabmenu();		 //box_tabmenu 설정		

				m_mybrink_list();   //m_mybrink_list 설정	( 나만의 음료 모바일 list )


			});

			function content_tabmenu(){					

				$(".content_tabmenu > .tab").bind("click focusin", function(){
					if(!$(this).hasClass("on")) {
						$(this).parent().children(".on").removeClass("on");
						var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
						$(this).parent().children(".panel").hide().eq(index).show();
					}
					return false;
				});
				$("div.finder_list > dl > dd > ul > li").bind("click focusout", function(){
					if(!$(this).hasClass("on")) {
						$(this).parent().children(".on").removeClass("on");
						var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
						$(this).parent().children(".panel").hide().eq(index).show();
					}
					return false;
				});

				$('.content_tabmenu > .tab').eq(3).click();
				
			}

			function selectbox_init() {

				$(".select_box select").on("change",function() {						
					$(this).prev().html($(this).find("option:selected").text());
					}).prev().html(function() {
					return $(this).next().find("option:selected").text();
				});

			}

			function pop_init() {
	
				$('.btn_shop_area, .btn_shop_bookmark').click(function(){
					$('.pop_up_dimm, .shopArea_pop01').fadeIn();
				});

				$('.shopArea_pop01 p.btn_pop_close a, .pop_up_dimm').click(function(){
					$('.pop_up_dimm, .shopArea_pop01').fadeOut();

					// 150604 성연욱 추가 - 팝업 초기화
					$('div.box_info dl.box_tabmenu dt').removeClass('on');
					$('div.box_info dl.box_tabmenu dd.panel').hide();
					// 150604 성연욱 추가 - 팝업 초기화 end
				});					

			}

			function pop_slide_init() {
				var mrSlider = $('.my_ms_shopArea_bar ul').bxSlider({
					pager:false,
					slideMargin:0
				});
			}
			function getSrvTime(){
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
			function box_tabmenu(){					
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
				$(".box_tabmenu > .tab").bind("click", function(){
					$(this).siblings('dt').removeClass('on');
					$(this).toggleClass('on');
					$(this).next().siblings('dd').hide();
					$(this).next().toggle();
				});
				// 20150604 성연욱 작업 end
				
			}

			function m_mybrink_list(){

				//셋팅
				$(".info dd.box").show();
				$('dl.info dt.tbox a').text('자세히 보기');

				$("dl.info dt.tbox a").bind("click", function(){				
					if($(this).parents('dt.tbox').hasClass('on')){
						$(this).text('자세히 보기');
					}else{
						$(this).text('닫기');
					}
				});

				$(".ms_info_box1 dt.tbox a").bind("click", function(){
					$(".ms_info_box1").find("dd.box").each(function(){
						if($(this).next("dd.box")){
							$(this).toggle();			
							$(this).prev().toggleClass("on");				
						}else{
							$(this).hide();					
							$(this).prev().removeClass("on");				
						}
					});
				});				

				$(".ms_info_box2 dt.tbox a").bind("click", function(){						
					$(".ms_info_box2").find("dd.box").each(function(){
						if($(this).next("dd.box")){
							$(this).toggle();			
							$(this).prev().toggleClass("on");				
						}else{
							$(this).hide();					
							$(this).prev().removeClass("on");				
						}
					});
				});

				$(".ms_info_box3 dt.tbox a").bind("click", function(){					
					$(".ms_info_box3").find("dd.box").each(function(){
						if($(this).next("dd.box")){
							$(this).toggle();			
							$(this).prev().toggleClass("on");				
						}else{
							$(this).hide();					
							$(this).prev().removeClass("on");				
						}
					});
				});

				$(".ms_info_box4 dt.tbox a").bind("click", function(){					
					$(".ms_info_box4").find("dd.box").each(function(){
						if($(this).next("dd.box")){
							$(this).toggle();			
							$(this).prev().toggleClass("on");				
						}else{
							$(this).hide();					
							$(this).prev().removeClass("on");				
						}
					});
				});
			}
			/* 구명준 끝 */
			
			//byte check;
			$('#DS_VOC_CN').keyup(function(event){
				fnChkByte();
			});
			
			//결제정보 직접입력 내용 글자 check
			$("#insert_input").keyup(function (){
				fnChkPayinfoByte();
			});
			
			// 내용 길이 check
			function fnChkByte() {
			       var maxByte = 2500; //최대 입력 바이트 수
			       var str = $("#DS_VOC_CN").val();
			       var str_len = str.length;
			    
			       var rbyte = 0;
			       var rlen = 0;
			       var one_char = "";
			       var str2 = "";
			    
			       for (var i = 0; i < str_len; i++) {
			           one_char = str.charAt(i);
			    
			           if (escape(one_char).length > 4) {
			               rbyte += 2; //한글2Byte
			           } else {
			               rbyte++; //영문 등 나머지 1Byte
			           }
			    
			           if (rbyte <= maxByte) {
			               rlen = i + 1; //return할 문자열 갯수
			           }
			       }
			    
			       if (rbyte > maxByte) {
			           alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
			           str2 = str.substr(0, rlen); //문자열 자르기
			           $("#DS_VOC_CN").val(str2);
			       } 
			   }
			
			 // 결제정보 입력 내용 길이 check
			 function fnChkPayinfoByte() {
				 var maxByte = 100; //최대 입력 바이트 수
			       var str = $("#insert_input").val();
			       var str_len = str.length;
			    
			       var rbyte = 0;
			       var rlen = 0;
			       var one_char = "";
			       var str2 = "";
			    
			       for (var i = 0; i < str_len; i++) {
			           one_char = str.charAt(i);
			    
			           if (escape(one_char).length > 4) {
			               rbyte += 2; //한글2Byte
			           } else {
			               rbyte++; //영문 등 나머지 1Byte
			           }
			    
			           if (rbyte <= maxByte) {
			               rlen = i + 1; //return할 문자열 갯수
			           }
			       }
			    
			       if (rbyte > maxByte) {
			           alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
			           str2 = str.substr(0, rlen); //문자열 자르기
			           $("#insert_input").val(str2);
			       } 
			    }
			
			/* //복사붙여넣기 방지
			var ctrlDown = false;
			var ctrlKey = 17, vKey = 86, cKey = 67;
			
			$('#DS_VOC_CN,#DS_VOC_TITLE').keydown(function(e)
			{
			if (e.keyCode == ctrlKey) ctrlDown = true;
			}).keyup(function(e)
			{
			if (e.keyCode == ctrlKey) ctrlDown = false;
			});
			
			$("#DS_VOC_CN,#DS_VOC_TITLE").keydown(function(e)
			{
			if (ctrlDown && (e.keyCode == vKey || e.keyCode == cKey)) return false;
			}); */
			
			//복사 붙여넣기 방지 alert event
			function fnPaste(){
				alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
			}
			
			function fnCopy(){
				alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
			}
			
			//default text
			//$('#DS_CONT').prop('관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다.')

			function getDateStringFormat(_objValue, _strFormat) {
				if (_objValue == "") {
					return "";
				}
				
				if (_objValue == undefined) {
					_objValue = new Date();
				}
				
				if (_strFormat == undefined) {
					_strFormat = "YYYY-MM-DD";
				}
				
				switch (_strFormat) {
					case "YYYYMMDD":
						return _objValue.getFullYear() + addZero((_objValue.getMonth() + 1), 2) + addZero(_objValue.getDate(), 2);	
						break;
					case "YYYYMMDDHHMMSS":
						return _objValue.getFullYear() + addZero((_objValue.getMonth() + 1), 2) + addZero(_objValue.getDate(), 2) + addZero(_objValue.getHours(), 2) + addZero(_objValue.getMinutes(), 2) + addZero(_objValue.getSeconds(), 2);
						break;
					case "YYYY-MM-DD":
						if (typeof(_objValue) == "string") {
							return _objValue.substr(0, 4) + "-" + _objValue.substr(4, 2) + "-" + _objValue.substr(6, 2);
						} else {
							return _objValue.getFullYear() + "-" + addZero((_objValue.getMonth() + 1), 2) + "-" + addZero(_objValue.getDate(), 2);	
						}
						break;
					case "YYYY-MM-DD HH:MM:SS":
						if (typeof(_objValue) == "string") {
							return _objValue.substr(0, 4) + "-" + _objValue.substr(4, 2) + "-" + _objValue.substr(6, 2) + " " + _objValue.substr(8, 2) + ":" + _objValue.substr(10, 2) + ":" + _objValue.substr(12, 2);
						} else {
							return _objValue.getFullYear() + "-" + addZero((_objValue.getMonth() + 1), 2) + "-" + addZero(_objValue.getDate(), 2) + " " + addZero(_objValue.getHours(), 2) + ":" + addZero(_objValue.getMinutes(), 2) + ":" + addZero(_objValue.getSeconds(), 2);	
						}
					case "YYYY-MM-DD (HH:MM:SS)":
						if (typeof(_objValue) == "string") {
							return _objValue.substr(0, 4) + "-" + _objValue.substr(4, 2) + "-" + _objValue.substr(6, 2) + " (" + _objValue.substr(8, 2) + ":" + _objValue.substr(10, 2) + ":" + _objValue.substr(12, 2) + ")";
						} else {
							return _objValue.getFullYear() + "-" + addZero((_objValue.getMonth() + 1), 2) + "-" + addZero(_objValue.getDate(), 2) + " (" + addZero(_objValue.getHours(), 2) + ":" + addZero(_objValue.getMinutes(), 2) + ":" + addZero(_objValue.getSeconds(), 2) + ")";	
						}
						break;
				}
			}
			
			function addZero(number, length) {
				if (length === undefined) {
					length = 2;
				}

				var str = '' + number;
				while (str.length < length) {str = '0' + str;}
				return str;
			}
			
			function fnPaging(totalCnt,pageNum, pagingSizeNum){
				var totalCount = totalCnt;  //총 건수
				var pageNum    = pageNum;     //현재 페이지
				var pageSize   = pagingSizeNum;
				
				// 한 블럭의 페이지 수
			    var pageCntPerBlock = 10;
			    // 그리드 데이터 전체의 페이지 수
			    var totalPage = Math.ceil(totalCount/pageSize);//113/10 11.3 totalPage 12
			    // 전체 페이지 수를 한화면에 보여줄 페이지로 나눈다.
			    var totalPageList = Math.ceil(totalPage/pageCntPerBlock); // 12/10 = 1.2  2
			    // 페이지 리스트가 몇번째 리스트인지
			    var pageList=Math.ceil(pageNum/pageCntPerBlock);  // 1 1 2 1 3 1 100 10 101 

			    // 페이지 리스트가 1보다 작으면 1로 초기화
			    if(pageList<1) pageList=1;
			    // 페이지 리스트가 총 페이지 리스트보다 커지면 총 페이지 리스트로 설정
			    if(pageList>totalPageList) pageList = totalPageList;
			    // 시작 페이지
			    var startPageList=((pageList-1)*pageCntPerBlock)+1;
			    // 끝 페이지
			    var endPageList=startPageList+pageCntPerBlock-1;
			   
			    // 시작 페이지와 끝페이지가 1보다 작으면 1로 설정
			    // 끝 페이지가 마지막 페이지보다 클 경우 마지막 페이지값으로 설정
			    if(startPageList<1) startPageList=1;
			    if(endPageList>totalPage) endPageList=totalPage;
			    if(endPageList<1) endPageList=1;
			   
			    // 페이징 DIV에 넣어줄 태그 생성변수
			    var pageInner="";
			   
			    // 페이지 리스트가 1이나 데이터가 없을 경우 (링크 빼고 흐린 이미지로 변경)
			    if(pageList<2){
			    }
			    // 이전 페이지 리스트가 있을 경우 (링크넣고 뚜렷한 이미지로 변경)
			    if(pageList>1){
			       
			        pageInner+='<li title="First" class="page" style="padding: 0 5px;"><span><a param="1"><img alt="처음" src="//image.istarbucks.co.kr/common/img/util/ec/first.jpg"></a></span></li>';
			        pageInner+='<li title="Prev" class="page" style="padding: 0 5px;"><span><a param="'+(startPageList-1)+'"><img alt="이전" src="//image.istarbucks.co.kr/common/img/util/ec/prev.jpg"></a></span></li>';
			       
			    }
			    // 페이지 숫자를 찍으며 태그생성 (현재페이지는 강조태그)
			    for(var i=startPageList; i<=endPageList; i++){
			        if(i==pageNum){
			            pageInner = pageInner +"<li class='page active'><span>"+(i)+"</span></li> ";
			        }else{
			            pageInner = pageInner +"<li class='page'><span><a param="+(i)+" class='num' >"+(i)+"</a></span></li> ";
			            
			        }
			    }

			    // 다음 페이지 리스트가 있을 경우
			    if(totalPageList>pageList){
			       
			        pageInner+='<li title="Next" class="page" style="padding: 0 5px;"><span><a param="'+(i)+'"><img alt="다음" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a></span></li>'; 
			        pageInner+='<li title="Last" class="page" style="padding: 0 5px;"><span><a param="'+(totalPage)+'"><img alt="마지막" src="//image.istarbucks.co.kr/common/img/util/ec/last.jpg"></a></span></li>';
			    }
			    // 현재 페이지리스트가 마지막 페이지 리스트일 경우
			    if(totalPageList==pageList){
			    }  
			    
			    var pager = $(".pagination"); 
			    pager.empty();
			    //pager.append("</br><span class='total-count'>Total : "+totalCount+"</span></br>");
			    pager.append(pageInner);

				// 페이징 이벤트 바인딩
				$('a[param]', pager).click(function(event) {
					var pageNum = $(this).attr('param');
					tempStoreName = ""; //이전에 선택한 결제정보 초기화
					$voc.eReceiptList(pageNum);
				});
			}
			
			// 전자영수증 정보 셋팅
			var tempStoreName = "";
			var tempStoreCd = "";
			var tempStoreNm = "";
			var tempDate = "";
			var tempPay = "";
			var tempFlag = "";
			
			// 전자영수증 row 선택시
			function fnSelectEReceipt(storeName, storeCd, storeNm, date, pay, flag)
			{
				tempStoreName = storeName;
				tempStoreCd = storeCd;
				tempStoreNm = storeNm;
				tempDate = date;
				tempPay = pay;
				tempFlag = flag;
			}
			
			// 선택버튼 클릭시
			function fnSetEReceipt(){
				
				if(tempStoreName == ""){
					alert("결제정보를 선택하세요.");
					return false;
				}
				
				var strVal = "";
				
				if(tempStoreCd != "") //매장코드가 있을경우
				{
					strVal = tempStoreName + ", " + tempDate + ", " + tempPay + ", " + tempFlag;
					
					$('#store_cd').val(tempStoreCd);
					$('#CD_STORE').val(tempStoreCd);
					
					$('.input_store_txt').html('선택하신 매장은 <strong>'+tempStoreNm+'</strong> 입니다.');
				}
				else
				{
					strVal = tempStoreNm + ", " + tempDate + ", " + tempPay + ", " + tempFlag;
					
					$('#store_cd').val('0');
					$('#CD_STORE').val('');
					
					$('.input_store_txt').html('');
				}
				$('#CD_VISIT_STR').val(''); //홈페이지용 매장 조회코드
				$('.info_ebill_load_wrap').show();
				$('.info_ebill_load').show();
				$('.info_ebill_load').empty();
				$('#ERECEIPT_CONTENT').val(strVal);
				
				var strDisplay = "";
				strDisplay = "<li>" + tempStoreName + ",</li><li>" + tempDate + ",</li><li>" + tempPay + ",</li><li>" + tempFlag +"</li>";
				$('.info_ebill_load').html(strDisplay);
				
				$('#insert_input').val('');
				$('#insert_input').attr("disabled",true);
								
				//매장찾기로 선택여부 N으로
				$('#FIND_STORE_YN').val("N");
				
				$('.find_ebill_pop').fadeOut();
				$('.myDimm').hide();
			}
			
			// s: 개인정보의 수집 및 이용 목적 팝업
			function openPersonalConsentPop() {
				var wt = $(window).scrollTop();

				$('.myDimm').show();
				$('.personal_consent_pop').css({top: wt - 50});
				$('.personal_consent_pop').fadeIn()

				$('.personal_consent_pop .close a').click(function() {
					history.back();
				})

				$('.personal_consent_pop .personal_consent_agree').click(function() {
					$voc.updateCstmrAgree();
				})

				$('.personal_consent_pop .personal_consent_disagree').click(function() {
					alert("※ 개인 정보 수집에 동의하지 않을경우 고객의 소리 접수가 불가합니다.");
					return false;
				})
			}
			// e: 개인정보의 수집 및 이용 목적 팝업
			
			function numberWithCommas(x) {
				var result = "";
				if(x != "")
				{
					result = x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
			  	return result;
			}
				
			
			function initPhone1() {
				if($("#phone2").val() != ""){
					$("#phone2").val("");
					$("#phone2_mask").val("");
					$("#phone3").val("");
					$("#phone_change_flag").val("Y");
				}
				else if($("#phone1").val() != '010'){
					$("#phone2").val("");
					$("#phone2_mask").val("");
					$("#phone3").val("");
					$("#phone_change_flag").val("Y");
				}
			}
			
			function initPhone2() {
				$("#phone2").val("");
				$("#phone2_mask").val("");
				$("#phone_change_flag").val("Y");
			}
			
			function initPhone3() {
				if($("#phone2").val() == ""){
					$("#phone2_mask").val("");
				}
				$("#phone3").val("");
				$("#phone_change_flag").val("Y");
			}
			
			// 휴대폰 가운데 번호 마스킹처리
			function maskingPhone2(inputText) {
				var maskedValue = "";
				if(inputText == "")
				{
				  return maskedValue;
				}
				  
				if(inputText != "***" && inputText != "****"){
					if(inputText.length == 3 || inputText.length == 4){
					  	maskedValue = inputText.replace(/[0-9a-zA-Z]/g, "*");
				  	}
				  	else{
					  	maskedValue = inputText;
				  	}
					  
					$("#phone2_mask").val(maskedValue);
					$("#phone2").val(inputText);
					$("#phone_change_flag").val("Y");
				}
			}
		</script>
</body>
</html>