<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starbucks Korea</title>

<jsp:include page="../common/header_head.jsp" />
<!-- 해당 페이지용 css 및 스타일 부분 -->
<link href="/common/css/style_mem.css" rel="stylesheet">
	<link href="/common/css/style_util.css" rel="stylesheet">


</head>
<body>
	<!-- 150827 계정 통합 안내 팝업 추가 - 구명준 -->
	<div class="account_layer_dimm" style="display:none;"></div>
	<div class="account_layer" style="display:none;">
		<header>
			<strong>계정 통합 안내</strong>
			<a class="account_layer_close" href="javascript:void(0);">닫기</a>
		</header>
		<section class="account_layer_cont">
			<fieldset class="account_field">
				<legend class="hid">계정 통합 안내 입력폼</legend>
				<div class="account_info_wrap">
					<p class="account_green_title"><strong>안녕하세요 <span class="user_id"><!-- [아이디] --></span>님</strong></p>
					<p class="account_green_stitle">스타벅스커피 코리아 웹사이트를 이용해 주셔서 감사합니다.</p>
					<p class="account_text">2015년 웹사이트 리뉴얼시 8월 11일 ~ 8월 19일간 일부 환경에서 개인 인증의 절차 오류로 인하여 스타벅스의 정책과 다르게 1인 2개이상 중복 가입이 이루어졌습니다. </p>
					<p class="account_text">스타벅스의 정책상 1인 복수의 아이디 발급이 불가하오니 불편하시더라도 아래의 절차에 따라서 사용하시는 계정을 선택하시고, 이외의 계정에 대한 탈퇴 처리를 해주시기 바랍니다. 더 좋은 서비스를 제공하기 위한 노력에도 불구하고 고객님께 불편을 끼쳐 드려서 대단히 죄송합니다.</p>
					<p class="account_text">앞으로 더욱 노력하여 편안한 서비스를 제공할 수 있도록 최선을 다하겠습니다.</p>
					<!-- <p class="account_text_tip">2015년 9월 30일 이후 일부 계정에 대한 이용에 제한이 있을 수 있습니다.</p> -->
				</div>
				<div class="account_combine_cont">
					<ul class="account_combine_inner">
					</ul>
					<script id="doubleJoinList" type="text/x-jquery-tmpl">
						<li>
							<div class="account_combine_choice">
								<ul>
									<li class="ch01"><input id="ac_choice${$item.getSeq1}" name="ac_choice" type="radio" value="${user_id}" data-name="${user_nm}" data-jumin2="${jumin2}" data-key="${ipin_dup_key}" data-status="${user_status}" /></li>
									<li class="ch02">
										<p><label for="ac_choice${$item.getSeq2}">${user_id} ${$item.isMsrMember}</label></p>
										<p>최초 가입일 - ${$item.getRegDt}</p>
										<p>최종 로그인 - ${$item.getLastLoginDt}</p>
									</li>
									<li class="ch03"><a class="btn_ac_info" href="javascript:void(0);" data-id="${user_id}" data-name="${user_nm}">정보<br>확인</a></li>
								</ul>
							</div>
						</li>
					</script>
					
					<p class="idac_del" style="display:none;"><a class="btn_idac_del" href="javascript:void(0);">계정 삭제</a></p>
					
					<div class="accuont_combine_tip"><p>중복 계정 중 대표 계정은 스타벅스 리워드 계정만 선택 가능합니다.</p></div> <!-- 스타벅스 리워드 수정 -->
				</div>
				<ul class="ac_combine_zoon">
					<li><a class="btn_combine" href="javascript:void(0);">사용할 아이디 선택</a></li>
					<li><a class="btn_combine_back" href="javascript:void(0);">다음에 하기</a></li>
				</ul>
			</fieldset>
		</section>
	</div>
	<!-- 150827 계정 통합 안내 팝업 추가 - 구명준 end -->

	<!-- 150827 계정 정보 팝업 추가 - 구명준 -->
	<div class="acInfo_layer_dimm" style="display:none;"></div>
	<div class="acInfo_layer" style="display:none;">
		<header>
			<strong>계정 정보</strong>
			<a class="account_layer_close" href="javascript:void(0);">닫기</a>
		</header>
		<section class="account_layer_cont">
			<fieldset class="account_field">
				<legend class="hid">계정 정보폼</legend>
				<!-- 상단 -->
				<section class="acms_myinfo_section">
					<div class="acms_myinfo">
						<div class="acmem_info_wrap">
							<div class="acmem_face_zone">
								<div class="acmem_face_zone_inner">
									<div class="acmem_face_cover"></div>
									<p class="acmem_face"><img alt="사용자 등록 이미지" /></p>
								</div>
							</div>
							<div class="acmem_txt_zone">
								<p class="p1"><span class="s1 user_info"><!-- 새뮤얼(for302) --></span>님의 정보는 아래와 같습니다.<br /><span class="s2">아래의 사항들을 확인하시어 사용하실 계정을</span> <span class="s2 end">선택하여 주세요.</span></p>
								<ul class="acmem_level">
									<li class="li1"><!-- Green Level --></li>
									<li class="li2">유효한 스타벅스 별 : <span><!-- 5개 --></span></li>
									<li class="li3">사용 가능한 쿠폰 : <span><!-- 3장 --></span></li>
								</ul>
							</div>
						</div>
						<div class="acmem_tit_area">
							<p class="acmem_tit"><span class="user_info"><!-- 새뮤얼(for302) --></span>님의 등록된 스타벅스 카드</p>
							<p class="acmem_my_card"><!-- 총 보유카드 : 3장 --></p>
						</div>
						<table summary="나의 스타벅스 카드 모바일 버전" class="acm_myCardInfo">
							<caption class="hid">나의 스타벅스 카드, 카드명, 카드번호, 최종 사용일 카드 등록일, 잔액에 대한 테이블</caption>
							<colgroup>
								<col width="46.5625%">
								<col width="53.4375%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">카드</th>
									<th scope="col">카드명, 카드번호, 최종 사용일 카드 등록일, 잔액에 대한 테이블</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
						<script id="doubleJoinCardList" type="text/x-jquery-tmpl">
							<tr>
								<td class="card"><img src="${cardImgUrl}" alt=""></td>
								<td>
									<p class="p1">${cardNickname}</p>
									<p class="p2 en">${$item.getCardNo}</p>
									<p class="p3 en">${balanceConfirmDate}</p>
									<p class="p4 en">${cardRegDate}</p>
									<p class="p5">${$.number(balance)}</p>
								</td>
							</tr>
						</script>
					</div>
				</section>
				<!-- 상단 end -->
			</fieldset>	
		</section>
	</div>
<!--헤더 공용코드 전 실행할부분-->
<div id="wrap">
	<jsp:include page="../common/header.jsp" />
	<!-- 메인 내용 영역 -->
		<div id="container">
			<!-- 서브 타이틀 -->
			<!-- <header class="mem_sub_tit_wrap">
				<div class="mem_sub_tit_bg">
					<div class="mem_sub_tit_inner">
						<h4><img alt="회원가입" src="//image.istarbucks.co.kr/common/img/util/mem/login_titl.png"></h4>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로" /></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="하위메뉴" /></li>
							<li><a href="/login/login.do">로그인</a></li>
						</ul>
					</div>
				</div>
			</header> -->
			<!-- 서브 타이틀 end -->
			<!-- 161116 문진욱 수정 -->
			<div class="new_login_bg_wrap">
				<!-- 내용 -->
				<div class="find_mem_wrap mem_wrap2"><!-- jsp 수정 : 클래스명 추가 -->
					<!-- 20160804 수정 -->
					<div class="find_mem_inner">
						
						<form id="frmLogin" action="/login/login_proc.do" method="post">
							<fieldset>
								<legend class="hid">회원가입 이용약관 동의, 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간 및 파기절차, 파기 방법에 관한 폼</legend>
								<strong class="new_login_ttl">로그인</strong>
								<section class="renew_joinform_v2">
									<!-- <figure class="find_mem_sally">
										<img src="//image.istarbucks.co.kr/common/img/util/mem/icon_find_sally.png" alt="" />
									</figure> -->
									 <p class="find_form_txt">
										<span class="t_006633">Welcome!</span><br class="for_mob"/> 스타벅스 코리아에 오신 것을 환영합니다.
									 </p> <!-- 220112 수정 -->
									
									<div class="renew_input_box bd_none">
										<label for="txt_user_id" class="hid">아이디</label><!-- 접근성_20171120 라벨 추가 -->
										<input class="login_id mb10" id="txt_user_id" name="memberId" type="text" maxlength="20" placeholder="아이디를 입력해 주세요." required="required" /><!-- 접근성_20171120 required 추가 -->
										<p class="limit_txt user_id_txt"></p>
										<label for="txt_user_pwd" class="hid">비밀번호</label><!-- 접근성_20171120 라벨 추가 -->
										<input class="login_pw mb10" id="txt_user_pwd" name="password" type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요." required="required"  autocomplete="off"/><!-- 접근성_20171120 required 추가 , 20181025_autocomplete="off" 추가 -->
										<p class="limit_txt user_pwd_txt"></p>
										<!-- 접근성_20171120 포커스:  추가 -->
										<span class="checkWrap">
											<input type="checkbox" name="idRemb" id="idRemb" class="mem2" value="on"/>
											<label for="idRemb">아이디 저장</label>
										</span>
										<!-- 접근성_20171120 포커스:  추가 끝 -->
										<p class="btn_mem_login">
											<!-- <a class="btn_login" href="javascript:void(0);" role="submit">로그인</a> --><!-- 접근성_20171120 role 추가 -->
											<!-- <a class="btn_login" href="#" onclick="return chk_form()">로그인</a>  --><!-- 접근성_20171120 role 추가 -->
											<a class="btn_login" href="#" onclick="submitButten(event);">로그인</a> <!-- 접근성_20171120 role 추가 -->
										</p>
										<p class="input_warn_text t_006633">
											* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.<br/>
											* 스타벅스 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.
										</p> <!-- 220112 수정 -->
									</div>
									<div class="login_btn_wrap">
										<ul>
											<li><a href="/mem/join1.do">회원가입</a></li>
											<li><a href="/mem/find_id1.do">아이디 찾기</a></li>
											<li class="last"><a href="/mem/find_pwd1.do">비밀번호 찾기</a></li>
										</ul>
									</div>
								</section>
								<section class="renew_joinform_v2 mem_captcha" style="display:none;">
									<div class="captcha_infoInput_text">
										  <p class="captcha_guidet"><!--비밀번호를 5회 이상 잘못 입력하면, 보안문자를 함께 입력하셔야 합니다.-->
										<span>아래 이미지의 보안문자를 보이는 대로 입력해주세요.</span></p>
									</div>
									<div class="mem_captcha_frm">
										<fieldset class="mem_captcha_field">
											<legend class="hid">보안문자 입력폼</legend>
											<div class="mem_captcha_input_wrap">
												<dl>
													<dt><label for="captcha">보안문자</label></dt><!-- 접근성_20171120 : 레이블 추가 -->
													<dd>
														<p class="mem_captcha_img"><img alt=""></p>
														<a class="btn_login btn_new_captcha_240119 refresh" href="javascript:void(0);" role="button"><img src="https://image.istarbucks.co.kr/img/edm_event/2024/icon_renew_black.png" alt="새로고침"></a><!-- 접근성_20171120 role 추가 --><!-- 20240119 수정(캡차 음성듣기 버튼 추가 건) -->
														<a class="btn_login btn_new_captcha_240119 sound" href="javascript:void(0);" role="button"><img src="https://image.istarbucks.co.kr/img/event/2024/icon_sound_black.png" alt="음성듣기"></a><!-- 20240119 추가(캡차 음성듣기 버튼 추가 건) -->
														<audio id ="myAudio">
															<source id="audioSource" src ="" type="audio/wav">
														</audio>
														<input id="captcha" name="captcha" type="text" maxlength="10" />
													</dd>
												</dl>
											</div>
										</fieldset>
									</div>
								</section>
								<!-- <section class="renew_joinform_v2">
									<div class="renew_input_box">
										<strong class="ttl_login_st">스타벅스커피 코리아 회원이 아니세요?</strong>
										<p class="txt_login_p">스타벅스커피 코리아 회원만의 특별한 혜택을 누릴 수 있습니다.</p>
	
										<p class="btn_mem_login gray">
											<a href="/mem/join1.do">회원가입 하기</a>
										</p>
									</div>
								</section>
								<section class="renew_joinform_v2">
									<div class="renew_input_box">
										<strong class="ttl_login_st">고객님! 아이디, 비밀번호를 잊으셨나요?</strong>
										<p class="txt_login_p">
											고객님의 본인 명의 휴대폰 인증 또는 아이핀 인증 또는 회원정보에 등록된 휴대폰, E-mail 인증으로 찾을 수 있습니다.
										</p>
										<p class="btn_mem_login gray">
											<a href="/mem/find_id1.do">아이디 찾기</a>
										</p>
										<br/>
										<p class="btn_mem_login gray">
											<a href="/mem/find_pwd1.do">비밀번호 찾기</a>
										</p>
									</div>
								</section> -->
								<!-- <p class="modify_txt">주소를 입력하시고 E-mail 수신 동의하신 분들에 한하여 신규 스타벅스 매장 소식을 이메일로 보내드립니다</p> -->							
							</fieldset>	
						</form>
					</div>
				</div>
				<!-- 내용 end -->
			</div>
		</div>
	<jsp:include page="../common/footer.jsp" />
	<script src="/common/js/common_jhp.js?v=161014"></script>
		<script>
			m_strTargetUrl = '';
		</script>
		<script src="/common/js/login/login.js"></script>
		<script>
function chk_form(e) {


/* document.getElementById('frmLogin').submit(); */
}

/* $(".btn_mem_login .btn_login").on("click", function(){
	
	if(document.getElementById("txt_user_id").value==''){
		alert("아이디를 입력해주십시오.");
		return false;
	}
	if(document.getElementById("txt_user_pwd").value==''){
		alert("비밀번호를 입력해주십시오.");
		return false;
	}
	
	
	var memberId  = $("#txt_user_id").val();
	var password = $("#txt_user_pwd").val();
	var idRemb = $("#idRemb").val();
	
	var objParam = {
			 "memberId"  : memberId
			,"password" : password
			,"idRemb"  : idRemb
		}
	___ajaxCall("/login/login_proc.do", objParam, false, "json", "post",function (_response) {
		if(_response.result=="성공"){
			
			alert(_response.NickName+"님 반갑습니다.")
			location.replace("/")
			console.log(result)
		}else{
			alert("로그인에 실패하셨습니다.\n아이디 또는 비밀번호를 확인후 다시 입력해 주세요")
		}
	
	});
}); */

$(document).ready(function () {
	 $('a[class="btn_login"]').attr("href", null);
})
function submitButten(e){
	
	/* e.preventDefault() */
	
	
	if(document.getElementById("txt_user_id").value==''){
		alert("아이디를 입력해주십시오.");
		return false;
	}
	if(document.getElementById("txt_user_pwd").value==''){
		alert("비밀번호를 입력해주십시오.");
		return false;
	}
	
	
	var memberId  = $("#txt_user_id").val();
	var password = $("#txt_user_pwd").val();
	var idRemb = $("#idRemb").val();
	
	var objParam = {
			 "memberId"  : memberId
			,"password" : password
			,"idRemb"  : idRemb
		}
	___ajaxCall("/login/login_proc.do", objParam, false, "text", "POST"
	,function (_response) {
		if(_response.substr(0,2)=="성공"){
			
			alert(_response.substr(3)+"님 반갑습니다.")
			location.replace("/")
			console.log(result)
		}else{
			alert("로그인에 실패하셨습니다.\n아이디 또는 비밀번호를 확인후 다시 입력해 주세요")
		}
	
	});
	}
</script>
</div>
<!-- 해당 페이지 스크립트 부분 -->	
</body>
</html>