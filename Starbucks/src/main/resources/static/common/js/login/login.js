var m_strChoiceId = "";

$(document).ready(function () {
	setCaptcha();
	setEvent();
	
	if (Cookies.getCookie("saveId") != "") {
		$("#txt_user_id").val( Cookies.getCookie("saveId") );
		$("#idRemb").prop("checked", true).trigger("change");
	}
});

function setEvent() {
	$("input#txt_user_id, input#txt_user_pwd").on("focus", function () {
		$(this).removeClass("input_warn").addClass("green");
	}).on("blur", function () {
		$(this).removeClass("green");
	});
	
	/*$(".btn_mem_login .btn_login").on("click", login);*/
	
	$("#txt_user_pwd, #captcha").on("keydown", function (_e) {
		if (_e.keyCode == 13) {
			login();
		}
	});
	
	$(".refresh").on("click", function () {
		$(".mem_captcha_img > img").attr("src", "");
		audioPause(); //재생정지
		setTimeout(function () {
			$(".mem_captcha_img > img").attr("src", "/mem/captcha.do?rndCod="+randomString());
		}, 150);
	});

	$(".sound").on("click", function () {
		setTimeout(function () {
			captchaAudio();
		}, 150);
	});
	
	$("#txt_user_id").focus();
}

function login() {
	var user_id  = $("#txt_user_id").val();
	var user_pwd = $("#txt_user_pwd").val();
	
	try {
		user_id  = user_id.trim();
		user_pwd = user_pwd.trim();
	} catch (_e) {
	}
	
	if (user_id == "")  { 
		alert("아이디를 입력해 주세요."); //접근성_20171120 수정 
		$("#txt_user_id").focus();  
		return; 
	}
	if (user_pwd == "") {
		alert("비밀번호를 입력해 주세요."); //접근성_20171120 수정 
		$("#txt_user_pwd").focus(); 
		return;
	}
	
	var objParam = {
		 "user_id"  : user_id
		,"user_pwd" : user_pwd
		,"captcha"  : $("#captcha").val()
		,"redirect_url" : m_strTargetUrl
		,"client_id" : Cookies.getCookie("SP-CLIENT-ID")
	};

	/*___ajaxCall("/interface/loginMember.do", objParam, false, "json", "post"
		,function (_response) {
			if (_response.data != null) {
				if (_response.data.spClientId != undefined && _response.data.spClientId != null) {
					let spClientId = _response.data.spClientId;
					Cookies.setCookie("SP-CLIENT-ID", spClientId, 30);
				}
			}
			if (_response.result_code == "SUCCESS") {
				if ($("#idRemb").is(":checked")) {
					Cookies.setCookie("idRemb", user_id, 30);	
				} else {
					Cookies.setCookie("idRemb", user_id, 0);
				}
				
				if (_response.alert_msg != "") {
					alert(_response.alert_msg);
				}
				
				// 강제 휴면 해제 여부 확인
				___ajaxCall("/interface/checkReleaseDormancyMember.do", objParam, false, "json", "post"
					,function (_response) {
						if (_response.result_code == "SUCCESS") {
							alert("정상적인 서비스 이용을 위해서 회원 정보를 입력해주세요.");
							m_strTargetUrl = "/my/myinfo_modify.do";
						}
					}
				);
				
				if (m_strTargetUrl == "") {
					location.replace("/");
				} else {
					 20180731 [취약점] Login Redirect URL 제한 by smno
					 * WhiteList 체크 & 내부 서비스URL 체크 로직 변경
					 * 20190328 [GAS 웹 취약점] %09(탭) 예외처리 by smno
					 
					if (m_strTargetUrl.charAt(0) == "/" && encodeURIComponent(m_strTargetUrl.charAt(1)) == "%09") {
						location.replace("/");
					} else if ((m_strTargetUrl.charAt(0) == "/" && m_strTargetUrl.charAt(1) != "/") || $('#isWhiteRedirectUrl').val() == 'Y') {
						location.replace(m_strTargetUrl.split("&amp;").join("&"));
					} else {
						location.replace("/");
					}
				}
			} else {
				if (_response.alert_msg != "") {
					alert(_response.alert_msg);
					$("#txt_user_id").focus(); // 접근성_20171120 추가
				}
				
				// 휴면계정인가?
				if (_response.custom_script != "") {
					eval(_response.custom_script);
				} else {
					setCaptcha();	
				}
			}
			
			// 비밀번호 10회 이상 틀리거나, 6개월 이상 비번 변경 안 했으면..
			if (_response.location_replace != "") {
				location.replace(_response.location_replace);
			}
		}
	);*/
}

function setCaptcha() {
	var nLoginHistoryCnt = 0;
	var captchaYn = "N";
	
	/*___ajaxCall("/interface/getLoginHistoryCnt.do", {}, false, "json", "post"
		,function (_response) {
			if (_response.result_code == "SUCCESS") {
				nLoginHistoryCnt = Number(_response.data);
			}
		}
	);*/
	
	/*___ajaxCall("/interface/getCaptchaYn.do", {}, false, "json", "post"
		,function (_response) {
			if (_response.result_code == "SUCCESS") {
				captchaYn = _response.data;
			}
		}
	);*/
	
	//if (nLoginHistoryCnt >= 5 || captchaYn == 'Y') {
	if (captchaYn == 'Y') {
		$(".mem_captcha_img > img").attr("src", "/mem/captcha.do");
		if(captchaYn == 'Y') {
			$(".captcha_guidet").text("현재 비정상적인 접근 발생으로 인해 보안문자 입력이 필요합니다.");
			$(".captcha_guidet").append("<span>아래 이미지의 보안문자를 보이는 대로 입력해주세요.</span>");
			// $(".captcha_guidet").text("아래 이미지의 보안문자를 보이는 대로 입력해주세요.");
		}
		$(".mem_captcha").show();
	}
}

/**
 * 캡챠 음성듣기
 */
function captchaAudio() {
	var uAgent = navigator.userAgent.toLowerCase();
	var soundUrl = "/mem/captchaAudio.do?rndCod="+randomString();
	audioPause(); //재생정지

	___ajaxCall("/mem/getSessionCaptcha.do", {}, false, "json", "post"
		,function (_response) {
			if (_response.result_code == "SUCCESS") {
				// 브라우저별 음성 파일 재생
				if (uAgent.indexOf("trident") > -1 || uAgent.indexOf("msie") > -1) {   //IE
					var newPlayer = document.createElement("embed");
					newPlayer.setAttribute("id", "currentWavPlayer");
					newPlayer.setAttribute("src", soundUrl);
					newPlayer.setAttribute("type", "audio/wav");
					document.body.appendChild(newPlayer);
				} else {  //Chrome, Firefox, Safafi, etc
					var newAudio = document.getElementById('myAudio');
					document.getElementById('audioSource').setAttribute("src", soundUrl);
					newAudio.load();
					newAudio.play();
				}
			} else {
				alert("입력시간이 초과되었습니다.\n새로고침을 눌러 다시 시도해 주세요.");
			}
		},
		function(){
			alert("음성듣기 처리 중 오류가 발생 했습니다.\n잠시 후 다시 시도해주세요.");
		}
	);
}

/**
 * 캡챠 음성듣기 재생정지
 */
function audioPause() {
	var uAgent = navigator.userAgent.toLowerCase();

	if (uAgent.indexOf("trident") > -1 || uAgent.indexOf("msie") > -1) {   //IE
		var origPlayer = document.getElementById('currentWavPlayer');
		if (origPlayer) {
			origPlayer.src = '';
			origPlayer.outerHtml = '';
			origPlayer.pause();
			document.body.removeChild(origPlayer);
			delete origPlayer;
		}
	} else {  //Chrome, Firefox, Safafi, etc
		var origAudio = document.getElementById('myAudio');
		document.getElementById('audioSource').setAttribute('src', '');
		origAudio.load();
		origAudio.pause();
	}
}

$(document).ready(function () {
	// 정보확인
	$(document).on("click", ".btn_ac_info", showDoubleJoinDetail);
	
	// 사용할 아이디 선택 
	$(".btn_combine").on("click", choiceUseId);
	
	$(".account_layer .account_layer_close , .btn_combine_back").on("click", doNext);
	$(".acInfo_layer .account_layer_close").on("click", closePopDoubleJoinDetail);

	// 계정 삭제
	$(".btn_idac_del").on("click", deleteId);
});

/**
 * 중복가입 데이터 표시
 * @param _data
 */
function showDoubleJoinList(_data) {
	var id = _data[0].user_id;
	
	// 아이디
	$(".user_id").text( id );

	// 초기화
	$(".account_combine_inner").empty();
	
	var nSeq = 1;
	$("#doubleJoinList").tmpl(_data, {
		 getSeq1 : function () {
			return nSeq;
		}
	 	,getSeq2 : function () {
			return nSeq++;
		}
	 	,isMsrMember : function () {
	 		if (this.data.user_status == "J") {
	 			return " (스타벅스 리워드 계정)"; //스타벅스 리워드 수정
	 		} else {
	 			return "";
	 		}
	 	}
	 	,getRegDt : function () {
 			return getDateStringFormat(this.data.reg_dt, "YYYY-MM-DD HH:MM:SS");
		}
	 	,getLastLoginDt : function () {
	 		if (this.data.last_login_dt != "")
	 			return getDateStringFormat(this.data.last_login_dt, "YYYY-MM-DD HH:MM:SS");
	 		else {
	 			return  "이력 없음";
	 		} 
		}
	}).appendTo(".account_combine_inner");
	
	$(".account_layer_dimm").fadeIn();
	$(".account_layer").fadeIn();
	$(".account_layer").focus();
	
	// 이미 통합 계정을 선택 한 사용자면, 바로 다음 단계로..
	// 20170712 [방통위 대응] 휴면계정 전환 시 JUMIN2 값 변경으로 노출 조건 추가 (통합계정: I, 통합계정 삭제: D) by smno
	if ($('[data-jumin2="ID_LOCK"]').length > 0 || $('[data-jumin2="I"]').length > 0) {
		var $target = $('[data-jumin2=""]'); 
			$target.prop("checked", true);
		
		choiceUseId($target.val());
	} else if ($('[data-jumin2=""]').length == 1
			&& $('[data-jumin2="ID_LOCK"]').length == 0) {
		$(".account_layer_dimm").hide();
		$(".account_layer").hide();
		
		doNext();
	}
}

/**
 * 다음에 하기
 */
function doNext() {
	if (m_strTargetUrl == "") {
		location.replace("/");
	} else {
		/* 20180731 [취약점] Login Redirect URL 제한 by smno 
		 * WhiteList 체크 & 내부 서비스URL 체크 로직 변경
		 */
		if ((m_strTargetUrl.charAt(0) == "/" && m_strTargetUrl.charAt(1) != "/") || $('#isWhiteRedirectUrl').val() == 'Y' ) {
			location.replace(m_strTargetUrl.split("&amp;").join("&"));
		} else {
			location.replace("/");
		}
	}
}

/**
 * (중복가입계정) 정보확인
 */
function showDoubleJoinDetail() {
	var user_id = $(this).data("id");
	var user_nm = $(this).data("name");
	
	var objParam = {
		 "user_id" : user_id
		,"user_nm" : user_nm
	};
	
	___ajaxCall("/interface/selectDoubleJoinDetail.do", objParam, false, "json", "post"
		,function (_response) {
			if (_response.result_code == "SUCCESS") {
				var jsonData = jQuery.parseJSON(_response.data);
				
				// 프로필 사진
				if (jsonData.profileImgUrl == "") {
					jsonData.profileImgUrl = "//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg";
				}
				$(".acmem_face img").attr("src", jsonData.profileImgUrl);
				
				// user_info
				$(".user_info").text(user_id);
				
				var strUserGrade = "";
				var color        = "";
				var nValidStar   = jsonData.starInfo.validStar;
				
				switch(jsonData.userGrade) {
					case "00":
						strUserGrade = "Welcome Level";
						color        = "#000000";
						break;
					case "10":
					case "11":
						strUserGrade = "Green Level";
						color        = "#006633";
						break;
					case "20":
					case "21":
						strUserGrade = "Gold Level";
						color        = "#bd9b60";
						nValidStar = jsonData.starInfo.validCouponStar;
						break;
				}
				
				var nUsableCouponCnt = 0;
				if (jsonData.validCoupontCnt != "") {
					nUsableCouponCnt = jsonData.validCoupontCnt;	
				}
				
				if (nValidStar == "") {
					nValidStar = 0;
				}

				$(".li1").css("color", color).text(strUserGrade);	// 회원 등급
				$(".li2 > span").text(nValidStar + "개");			// 유효한 스타벅스 별
				$(".li3 > span").text(nUsableCouponCnt + "장");		// 사용 가능한 쿠폰
				
				___ajaxCall("/interface/selectDoubleJoinDetailCard.do", objParam, false, "json", "post"
					,function (_response) {
						if (_response.result_code == "SUCCESS") {
							jsonData = jQuery.parseJSON(_response.data);
							
							if (jsonData.registeredCardList.length > 0) {
								// 초기화
								$(".acm_myCardInfo tbody").empty();
								
								var nSeq = 1;
								$("#doubleJoinCardList").tmpl(jsonData.registeredCardList, {
									getCardNo : function () {
										return "●●●● - ●●●● - ●●" + this.data.cardNumber.substr(10,2) + " - " + this.data.cardNumber.substr(12);
									}
								}).appendTo(".acm_myCardInfo tbody");
							} else {
								$(".acm_myCardInfo tbody").html('<tr><td style="width:100%; text-align:center;">등록 된 카드가 없습니다.</td></tr>');
							}
							
							$(".acInfo_layer_dimm").fadeIn();
							$(".acInfo_layer").fadeIn();
							
						}
					}
				);
			}
		}
	);
}

/**
 * 정보확인 팝업 닫음
 */
function closePopDoubleJoinDetail() {
	$(".acInfo_layer").fadeOut();
	$(".acInfo_layer_dimm").fadeOut();
}

/**
 * 사용할 아이디 선택
 */
function choiceUseId(_id) {
	var $rdoChoiced = $('[name="ac_choice"]:checked');
	
	if ($rdoChoiced.length == 0) {
		alert("사용할 아이디를 선택 하세요.");
		return;
	}

	// _id가 있으면 이미 통합 계정을 선택한 사용자임
	var id = $rdoChoiced.val();
	if (typeof(_id) == "string") {
		id = _id;
	}
	
	m_strChoiceId = id;
	
	if ($('[data-status="J"]').length > 0) {
		if ($rdoChoiced.data("status") != "J") {
			alert(id + "는 웹회원 입니다.\n\n스타벅스 리워드 계정만 대표계정으로 선택 가능합니다."); //스타벅스 리워드 수정
			return;
		}
	}
	
	if (typeof(_id) == "string" 
			|| confirm(id + "를(을) 사용할 아이디로 선택하시겠습니까??\n\n" + id + "이외의 계정은 로그인이 불가능 하게 됩니다.")) {
		var bIsAllSuccess = true;
		
		$(".account_combine_choice").each(function () {
			var $rdo = $(this).find("input:radio");
			var user_id      = $rdo.val();
			var ipin_dup_key = $rdo.data("key");
			var jumin2       = $rdo.data("jumin2");
			
			var checkbox = '<input type="checkbox" id="' + $rdo.attr("id") + '" name="ac_choice" value="' + user_id + '" data-name="' + $rdo.data("name") + '" data-jumin2="' + $rdo.data("jumin2") + '" data-key="' + ipin_dup_key + '" data-status="' + $rdo.data("status") + '" />';
			var p = '<p class="id_choice_red">삭제 가능<span>(로그인 불가)</span></p>';
			
			var objParam = {
				 "user_id"      : user_id
				,"ipin_dup_key" : ipin_dup_key
				,"jumin2"       : "ID_LOCK"
			};
			
			if (id == user_id) {
				checkbox = checkbox.replace(" />", " disabled />");
				p = '<p class="id_choice_green">선택된 계정</p>';
				
				objParam.jumin2 = "";
			}
			
			//20170712 [방통위 대응] 휴면계정 전환 시 JUMIN2 값 변경으로 노출 조건 추가 (통합계정: I, 통합계정 삭제: D) by smno
			if (id == jumin2 || jumin2 == 'D') {
				checkbox = checkbox.replace(" />", " disabled />");
				p = '<p class="id_choice_green">삭제 대기 중<span><br>(로그인 불가)</span></p>';
			}
			
			$(this).addClass("idaccount_combine_choice");
			$(this).find(".ch01").html(checkbox);
			$(this).find(".ch03").html(p);
			
			if (typeof(_id) == "object") {
				___ajaxCall("/interface/updateDoubleJoin.do", objParam, false, "json", "post"
					,function (_response) {
						if (_response.result_code != "SUCCESS") {
							bIsAllSuccess = false;
						}
					}
				);
			}
		});
		
		if (bIsAllSuccess) {
			$(".idac_del").show();
			$(".btn_combine").hide();
		} else {
			alert("계정 처리 중 오류가 발생 했습니다.\n\n잠시 후 다시 시도해주세요.");
		}
	}
}

/**
 * 계정 삭제
 */
function deleteId() {
	var $chk = $('[name="ac_choice"]:checked');
	
	if ($chk.length == 0) {
		alert("삭제 할 계정을 선택 하세요.");
		return;
	}
	
	var deleteAccountInfo = "";
	
	$chk.each(function () {
		var id     = $(this).val();
		var name   = $(this).data("name");
		var key    = $(this).data("key");
		var status = $(this).data("status");
			
		if (deleteAccountInfo == "") {
			deleteAccountInfo = id + ":" + name + ":" + key + ":" + status;
		} else {
			deleteAccountInfo += "|" + id + ":" + name + ":" + key + ":" + status;
		}
	});
	
	var arrKeyAndValues = new Array(
		 { "KEY" : "choiceId",          "VALUE" : m_strChoiceId }
		,{ "KEY" : "deleteAccountInfo", "VALUE" : deleteAccountInfo }
	);

	goWithPostData(arrKeyAndValues, "/login/outDoubleJoinMember.do");
}