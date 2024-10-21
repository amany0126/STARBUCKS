var todayH = window.todayH;
var startTime = 20240115070000;

var	$commonLib = {
	 init : function () {
		var $loadingDim  = $('<div class="loading_dimm" style="display:none; z-index:20000;"></div>');
		var $loadingLogo = $('<div class="loading_img" style="display:none; z-index:20001;"></div>');
		
		if ($(".loading_img").length == 0) {
			$("body").prepend($loadingLogo);
		}
		
		if ($(".loading_dimm").length == 0) {
			$("body").prepend($loadingDim);
		}
		 
		$('a[required="loading"]').on("click", $commonLib.showLoadingImg);
	}

	,isLoading : false
	
	,showLoadingImg : function () {
		$commonLib.isLoading = true;
		
		$('.loading_img').jsMovie({
			 sequence    : 'loading##.png'
			,from        : 1
			,to          : 25
			,folder      : '//image.istarbucks.co.kr/common/img/common/loading/'
			,height      : 76
			,width       : 70
			,playOnLoad  : true
			,performStop : true
			,repeat      : true
		});
		
		$(".loading_dimm").fadeIn();
		$(".loading_img").fadeIn();
	}
	,hideLoadingImg : function () {
		if ($commonLib.isLoading) {
			$commonLib.isLoading = false;
			$(".loading_img").fadeOut();
			$(".loading_dimm").fadeOut();
		}
	}
	,toggleLoadingImg : function () {
		if ($commonLib.isLoading) {
			$commonLib.hideLoadingImg();
		} else {
			$commonLib.showLoadingImg();
		}
	}
};
$commonLib.init();
			
//$("select[id=mail]").append(createMail(''));
//$("select[id=phone1]").append(createMobile(''));

//$("#phone1").trigger("change");

$(".sel_wrap select").on("change",function(){
	$(this).prev().html($(this).find("option:selected").text());
	}).prev().html(function() {
	return $(this).next().find("option:selected").text();
});

/*$("#mail").change(function(){
	$("#DS_CSTMR_EMAIL2").val($(this).val());
});*/

/*	구분 선택	*/
$("input[name=how]").click(function(){
	// 매장방문
	if($(this).val()=="Y"){
		$(".mt10").show();
		vocForm.store_sido.disabled 	= false;
		vocForm.store_gugun.disabled 	= false;
		vocForm.store_cd.disabled = false;
		//vocForm.DT_VISIT_STR.disabled 	= false;

	// 매장방문 외
	} else if($(this).val()=="N"){
		$(".mt10").hide();
		vocForm.store_sido.disabled 	= true;
		vocForm.store_gugun.disabled 	= true;
		vocForm.store_cd.disabled = true;
		//vocForm.DT_VISIT_STR.disabled 	= true;
	}
});



/*$("#CD_VOC_CAUSE_2").on("change", function(){

	var cdVocCause1 = $('#CD_VOC_CAUSE_1').val();
	var cdVocCause2 = $('#CD_VOC_CAUSE_2').val();
	
	var param = {
		   CD_VOC_CAUSE_1 : cdVocCause1
		 , CD_VOC_CAUSE_2 : cdVocCause2
	};
	
	if( cdVocCause2 != '' ) {
		
		__ajaxCall("/voc/getFaqCount.do", param, true, "json", "post",
				function(data)
				{					
					if( data.CNT_FAQ > 0 ) {
						var html = '&nbsp;&nbsp;관련 FAQ <strong><span id="lnkRelFaq" style="color:green;text-decoration: underline;">' + data.CNT_FAQ + '</span></strong> 건';
						$('#REL_FAQ_CNT').html(html);
						$('#REL_FAQ_CNT').show();
						$('#cntRelFaq').html(data.CNT_FAQ);
						
						$('#faq_cate_path').html('<strong>분류 : ' + $('#CD_VOC_CAUSE_1 option:selected').text() + ' > ' + $('#CD_VOC_CAUSE_2 option:selected').text() + '</strong>');
						$('#faq_cate_path').hide();
						
						$('.faq_alert_msg').show();
						$('.faq_list').hide();
						
						var wt = $(window).scrollTop();
						$('.myDimm').show();
						
						if( $(window).width() > 640 ) {
							$('.rel_faq_pop').css({top: wt - 50, width:480, 'margin-left':-240});											
						} else {
							$('.rel_faq_pop').css({top: wt - 50, width:'100%', 'margin-left':0});											
						}
						
						$('.rel_faq_pop').fadeIn();						
						$("#lnkRelFaq").on('click', function() {
							$voc.faqList();
						});
					} else {
						$('#REL_FAQ_CNT').html('');
						$('#REL_FAQ_CNT').hide();
						
					}
					
				}
				,
				function()
				{
					
				}
		);    	
		
	}

	
});*/

$("#CD_VOC_CAUSE_1").on("change", function(){
	
	$('#REL_FAQ_CNT').html('');
	$('#REL_FAQ_CNT').hide();
	
	var thisVal = $("#CD_VOC_CAUSE_1").val();
	if (thisVal == "")
	{
		$("#CD_VOC_CAUSE_2").empty();
		$("#CD_VOC_CAUSE_2").append('<option value="">중분류</option>');
		
		$('#trProd').hide();
	}
	else
	{
		//제품선택시 제품선택 tr 보이기
		if( thisVal == '019' ) {
			$('#trProd').show();
		} else {
			$('#trProd').hide();
		}
		
		// 2024.01 전화 상담시간 축소, 고객의 소리 분실물 접수화면 변경
		if( thisVal == '030' && todayH >= startTime ) {
		    var currentTime = getCurrentTime();
		    if (((currentTime >= 180000 && currentTime <= 235959) || (currentTime >= 000000 && currentTime <= 090000)) && 
		        !$('#lost_item_description').hasClass('lost_item_description')) {			
		        $('<div id="lost_item_description" class="lost_item_description" style="margin-top: 10px; line-height: 18px;">' + 
		          '오후 6시~오전 9시에 접수해주신 내용은 오전 9시부터 순차적으로 확인하여 답변 드립니다.<br/>' +
		          ' 분실물에 대한 긴급 확인이 필요하신 경우 번거로우시겠지만 매장에 방문하여 확인 부탁드립니다.</div>').insertAfter("#inquiry_category");
		    }
		    
		    // 매장 선택 필수
		    $('#visit_store_radio_wrap').hide();
			   	
		    $('#HOW1').prop('checked', true);
			
			$('#visit_store_sel_wrap').show(); 
			$('#visit_store_sel_wrap').removeClass('mt10');
		    $('#visit_store_sel_wrap').css('margin-top', '0px'); 	
		        
		}  else {
			
			// 매장 선택 가능
			$('#lost_item_description').remove();
		        
		    $('#visit_store_radio_wrap').show();
			
		    $('#visit_store_sel_wrap').addClass('mt10');
		    $('#visit_store_sel_wrap').css('margin-top', '10px');
		    
		    if(!$("#HOW1").is(":checked")) {
		    	$('#visit_store_sel_wrap').hide(); 
		    }
		}
		
		var option 	= '<option value="\${code}">\${code_NAME}</option>';
		$.template( "subUiCtrl", option );
		
		__ajaxCall("/voc/getVocCauseCodeList.do",{"PARENT_CODE":thisVal}, true, "json", "post",
					function(data)
					{
						$("#CD_VOC_CAUSE_2").empty();
						$("#CD_VOC_CAUSE_2").append('<option value="">중분류</option>');
						if ( data.list.length > 0)
						{
							$.tmpl( "subUiCtrl" , data.list, {}).appendTo( "#CD_VOC_CAUSE_2" );
						}
						$("#CD_VOC_CAUSE_2 option[value=025001]").remove();	//VOC제외는 나오지 않게
						
						$("#CD_VOC_CAUSE_2").trigger("change");
						
					}
					,
					function()
					{
						
					}
		);    				    			
	}
});


$(document).ready(function(){

	// Change phone call customer service time	
	var currentContent = $('#tel_consultant_time').text();
	if (todayH >= startTime) {		
		$('#tel_consultant_time').text(currentContent + '평일, 09:00~18:00');
	} else {
		$('#tel_consultant_time').text(currentContent + '365일, 07:00~22:00');
	}
	
	$voc.fileChgReset();
	$voc.selectStore(); // 매장목록에서 매장 선택
	$voc.selectProd();
	// [151215] 세션유지처리 추가
	// [151228] 세션유지체크시간 변경 (5분 -> 25분)
	var nIntervalMilSec = 1000 * 60 * 25;
	var itvKeepSession = setInterval(function () {
		if (confirm("로그인을 30분간 연장합니다.")) {
			if ($("iframe#keep_session").length > 0) {
				$("iframe#keep_session").remove();
			}
			
			$("#wrap").append('<iframe id="keep_session" src="/keep_session.html" frameborder="0" width="0" height="0" style="width:0; height:0" ></iframe>');	
		} else {
			clearInterval(itvKeepSession);
			$.loginLib.logout();
		}
	}, nIntervalMilSec);
	
	
	//2019-06-18 제목,내용 복사 붙여넣기 방지 및 글자수제한
	//byte check;
	$('#DS_VOC_CN').keyup(function(event){
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
    
       $('#realByte').text(rbyte + ' / 2500byte');	         
       if (rbyte > maxByte) {
           alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
           str2 = str.substr(0, rlen); //문자열 자르기
           $('#realByte').text('2500 / 2500byte');
           $("#DS_CONT").val(str2);
           //fnChkByte( maxByte);
       } 
	});
	//복사붙여넣기 방지
	/*var ctrlDown = false;
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
	});*/
	
	//복사 붙여넣기 방지 alert event
	function fnPaste(){
		alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
	}
	
	function fnCopy(){
		alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
	}
	
	$voc.getVocEvent(); //VOC 안내팝업 공지 추가. 2022.07
	
});



var index=5;
var iFileCnt = 1;
var prodCnt = 1;
var prodSel = 1;
var submitFlag = true;

var $voc = {
		gunList : function(c){
			$("#gugun option").remove();
			$("#storeList li").remove();
			// $('.select_with').hide();
			$('.select_list').hide();
			$('.no_select_with').hide();
			if(c != "17"){
				$(".sto_find_pop .resultNm").text('지역을 선택해주세요.');
				var optionAdd = "<option value=''>구/군</option>";
				$("#gugun").append(optionAdd);
				$("#guNm").text("구/군");
				$("#store_cd").text("매장");
				
			}else{
				var optionAdd = "<option value='1701'>구/군</option>";
				$("#gugun").append(optionAdd); 
				$("#guNm").text("구/군");
			}
			
			if(c != ""){
				__ajaxCall("/common/getGugunList.do", "sido_cd=" + c, true, "JSON", "POST", function(data) {
					
					var addOption = "";
					
					//세종시 일때 구군이 없음으로 바로 매장 selectBox채우기
  					if(c == "17"){
						
 						$("#storeList li").remove();
 						$(".sto_find_pop .resultNm").text('"세종"(으)로 검색');
 						
 						__ajaxCall("/common/getStoreList.do", "gugun=1701", true, "JSON", "POST", function(data) {
							if (data != "") {
								var addOption2 = "";
								$.each(data,function(i,item){
									var address = "";
									 if(item.address != null){
										 address = " " + item.address;
									 }
									addOption2 = addOption2;
									addOption2 += "<li>"
									addOption2 += "<a class='selStore' href='javascript:void(0);' data-sido=" + item.store_sido + " data-gugun=" + item.store_gugun + " data-cd=" + item.store_cd + " data-name=" + item.store_nm + ">"
									addOption2 += "<p class='result_zip'>" + item.store_nm + "</p>"
									addOption2 += "<p class='result_addr_detail'>" + item.sido_nm + address + "</p>"
									addOption2 += "</a>"
									addOption2 += "</li>"
								});
								$("#storeList").append(addOption2);
								//$('.select_with').show();
								$('.select_list').show();
								if(data.length >= 4){
									 $('.search_list').css({
											'height':'180px'
										});
									}else{
										$('.search_list').css({
											'height':'auto'
										});
									}
								$('.no_select_with').hide();
							}else{ // 주소 검색
								// $('.select_with').hide();
								$('.select_list').hide();
								$('.no_select_with').show();
							}
							
						},function(data) {
							//alert("실패");
							return;	
						});
						
					}else{
						$.each(data,function(i,item){
							addOption = addOption + "<option value='" + item.gugun_cd + "'>" + item.gugun_nm + "</option>"
						});
						$("#gugun").append(addOption);
						
					}
					
				},function(data) {
					//alert("실패");
					return;	
				});
				$("#sido").text($('#store_sido > option:selected').text());
			}
			
		},faqList : function() {

			var wt = $(window).scrollTop();
			$('.myDimm').show();

			if( $(window).width() > 640 ) {
				$('.rel_faq_pop').css({top: wt - 50, width:800, 'margin-left':-440});											
			} else {
				$('.rel_faq_pop').css({top: wt - 50, width:'100%', 'margin-left':0});											
			}
			$('.rel_faq_pop').fadeIn();
			
			$('.faq_alert_msg').hide();
			$('#faq_cate_path').show();
			$('.faq_list').show();
			
			var cd_voc_cause_1 = $('#CD_VOC_CAUSE_1').val();
			var cd_voc_cause_2 = $('#CD_VOC_CAUSE_2').val();
			var page = 1;
			
			var param = {
				"CD_VOC_CAUSE_1" : $('#CD_VOC_CAUSE_1').val(),
				"CD_VOC_CAUSE_2" : $('#CD_VOC_CAUSE_2').val(),
				"pageIndex" : 1,
				KEYWORD : '',
			};

			var html = "";

			html += '<dt class="ajaxFaqList"  data-index="${rnum}" data-seq="${id_VOC_FAQ}">';
			html += '	<ul>';
			html += '		<li class="li2">';
			html += '			<dl>';
			html += '				<dt class="en">Q</dt>';
			html += '				<dd>${ds_QESTN}</dd>';
			html += '			</dl>';
			html += '		</li>';
			html += '	</ul>';
			html += '</dt>';
			html += '<dd>';
			html += '	<ul>';
			html += '		<li class="li2">';
			html += '			<dl>';
			html += '				<dt class="en">A</dt>';
			html += '				<dd>';
			html += '					{{html ds_ANSWER}}'; 
			html += '				</dd>';
			html += '			</dl>';
			html += '		</li>';
			html += '	</ul>';
			html += '</dd>';

			$.template("faqListBox", html);

			__ajaxCall("/voc/getFaqList.do", param, true, "json", "post",
					function(_response) {
						
						if (_response.totCnt > 0) {

							$(".csi_faq_wrap").empty();
							$.tmpl("faqListBox", _response.list, {}).appendTo(".csi_faq_wrap");
							
							$(".csi_faq_wrap p").each(function() {
								$(this).addClass("tt");
							});
							$(".ajaxFaqList").on("click",
									$voc.listBoxSelected);

							$('.csi_faq_wrap > dt').eq(0).toggleClass("on");
							$('.csi_faq_wrap > dd').eq(0).show();

						} else {
							$(".csi_faq_wrap").empty();
						}

						var $page = page;
						var $TotalCount = _response.totCnt;
						var $PageSize = 10;

						var isPageCnt = parseInt(parseInt($TotalCount)/ parseInt($PageSize));
						var isPageMod = parseInt(parseInt($TotalCount)	% parseInt($PageSize));
						var isPageMax = (isPageMod > 0) ? (isPageCnt + 1): (isPageCnt);

						$(".pager").paging(
								{
									current : $page,
									max : isPageMax,
									length : 10,
									onclick : function(e, page) {
										page = page;
										$voc.faqList(cd_voc_cause_1, cd_voc_cause_2, '', page);
									}
								});
					}, function(_error) {
					});

		}, listBoxSelected : function(e) {
//				if ($(this).hasClass("on") == false) {
//					addFaqHitCnt( $(this).data("seq") );
//				}
				
				$(this).toggleClass('on');
				$(this).next().slideToggle();
			
		},storeList : function(c,id){
			var par = "gugun=";
			if(id == "searchNm"){
				c = $('#find_gm_name2').val().split(" ").join("");
				
				if(c == "") {
					alert('검색 하실 매장명을 입력해주세요.')
					return false;
				}
				
				par = "store_nm=";
				c   = encodeURIComponent(c);
			}
			if(c != ""){
				__ajaxCall("/common/getStoreList.do",par + c, true, "JSON", "POST", function(data) {
					 if (data != "") {
						 var addOption = "";
						 $.each(data,function(i,item){
							 var address = "";
							 if(item.address != null){
								 address = " " + item.address;
							 }
							addOption = addOption;
							addOption += "<li>"
							addOption += "<a class='selStore' href='javascript:void(0);' data-sido=" + item.sido + " data-gugun=" + item.gugun + " data-cd=" + item.store_cd + " data-name=" + item.store_nm + ">"
							addOption += "<p class='result_zip'>" + item.store_nm + "</p>"
							addOption += "<p class='result_addr_detail'>" + item.sido_nm + " " + item.gugun_nm + address + "</p>"
							addOption += "</a>"
							addOption += "</li>"
						 });
						
						 if (id == "searchNm") {
							$("#searchStoreList li").remove();
							$("#searchStoreList").append(addOption);
							$('.search_with').show();
							$('.search_list').show();
							 if(data.length >= 4){
								 $('.search_list').css({
										'height':'180px'
									});
								}else{
									$('.search_list').css({
										'height':'auto'
									});
								}
							$('.search_no_with').hide();
						}else{
							$("#storeList li").remove();
							$("#storeList").append(addOption);
							// $('.select_with').show();
							$('.select_list').show();
							 if(data.length >= 4){
								 $('.select_list').css({
										'height':'180px'
									});
								}else{
									$('.select_list').css({
										'height':'auto'
									});
								}
							$('.no_select_with').hide();
						}
						addOption = "";
						
					 } else { // 매장 목록 미존재시
						 if (id == "searchNm") {// 매장명
							$('.search_with').hide();
							$('.search_list').hide();
							$('.search_no_with').show();
						}else{ // 주소 검색
							$('.select_with').hide();
							// $('.select_list').hide();
							$('.no_select_with').show();
						}
					 }
				},function(data) {
					//alert("실패");
					return;	
				});
				if (id == "searchNm") {
					$(".sto_find_pop .searchNm").text('"'+$('#find_gm_name2').val()+'"(으)로 검색');
				} else {
					$("#gu").text($('#gugun > option:selected').text());
					$(".sto_find_pop .resultNm").text('"'+$('#gugun > option:selected').text()+'"(으)로 검색');
				}
			} else {
				if (id == "searchNm") {
					$(".sto_find_pop .searchNm").text('매장명을 입력해주세요.'); 
					$('.sto_find_pop .search_with').hide();
					$('.sto_find_pop .search_list').hide();
					$('.sto_find_pop .search_no_with').hide();
				} else {
					$(".sto_find_pop .resultNm").text('지역을 선택해주세요.');
					// $('.select_with').hide();
					 $('.sto_find_pop .select_list').hide();
					 $('.sto_find_pop .no_select_with').hide();
				}
			}
		},prodList : function(c,id){
			var par = "gugun=";
			if(id == "searchNm"){
				c = $('#find_prod_name').val().split(" ").join("");
				
				if(c == "") {
					alert('검색 하실 상품명을 입력해주세요.');
					return false;
				}
				
				var param = {
						NM_PRDUCT : $('#find_prod_name').val()
					  , YN_END : 'N'
				}
				par = "store_nm=";
				c   = encodeURIComponent(c);
			}
			if(c != ""){
				__ajaxCall("/voc/getVocProdCodeList.do", param, true, "JSON", "POST", function(data) {
					 if (data != "") {
						 var addOption = "";
						 $.each(data.list,function(i,item){
//							 var address = "";
//							 if(item.address != null){
//								 address = " " + item.address;
//							 }
							addOption = addOption;
							addOption += "<li>"
							addOption += "<a class='selProd' href='javascript:void(0);' data-nmPrduct=\'" + item.nm_PRDUCT + "\' data-noSku=\'" + item.no_SKU + "\' data-nmCate=\'" + item.nm_CATE + "\' data-nmCateFull=\'" + item.nm_CATE_FULL + "\'>"
							addOption += "<p class='result_cate'>" + item.nm_CATE_1 + "</p>"
							addOption += "<p class='result_prod'>" + item.nm_PRDUCT + "</p>"
							addOption += "</a>"
							addOption += "</li>"
						 });
						
						 if (id == "searchNm") {
							$("#searchProdList li").remove();
							$("#searchProdList").append(addOption);
							$('.prod_find_pop .search_with').show();
							$('.prod_find_pop .search_list').show();
							 if(data.list.length >= 4){
								 $('.prod_find_pop .search_list').css({
										'height':'180px'
									});
								}else{
									$('.prod_find_pop .search_list').css({
										'height':'auto'
									});
								}
							$('.prod_find_pop .search_no_with').hide();
						 }
						addOption = "";
						
					 } else { // 매장 목록 미존재시
						 if (id == "searchNm") {// 매장명
							$('.prod_find_pop .search_with').hide();
							$('.prod_find_pop .search_list').hide();
							$('.prod_find_pop .search_no_with').show();
						}
					 }
				},function(data) {
					//alert("실패");
					return;	
				});
				$(".prod_find_pop .searchNm").text('"'+$('#find_prod_name').val()+'"(으)로 검색');
			} else {
				$(".prod_find_pop .searchNm").text('상품명을 입력해주세요.'); 
				$('.prod_find_pop .search_with').hide();
				 $('.prod_find_pop .search_list').hide();
				 $('.prod_find_pop .search_no_with').hide();
				
			}
		},eReceiptList : function(pageNum){
			if (pageNum == undefined) {
					pageNum = 1;
			}
			
			var pagingSize = 10;
			var page = pageNum;

			var eDate = new Date();
			var searchEndDate = getDateStringFormat(eDate, "YYYY-MM-DD");
			var sDate = new Date(eDate.setDate(eDate.getDate() - 14));
			var searchStartDate = getDateStringFormat(sDate, "YYYY-MM-DD");
			
			//전자영수증 API 호출
			var objParam = {
				 searchType   : "P"	//W:전체, M:한달, Y:1년, P:기간설정
				,startDt      : searchStartDate
				,endDt        : searchEndDate
				,payMethod    : "W"	//W:전체보기, S:스타벅스카드, E:스타벅스 카드 외
				,transactType : "W"	//W:전체보기, P:결제, R:충전
				,pagingSize   : pagingSize
				,page         : page
			};
					
			__ajaxCall("/interface/eReceiptList.do", objParam, true, "json", "post", function(result) {

				 if (result != "") {	 
					 if (result.result_code == "SUCCESS") {
							
						var jsonData = jQuery.parseJSON(result.data);
						var nSeq =  jsonData.totalCnt - ((page - 1) * pagingSize);//pagingSize;
						var receiptList = jsonData.eReceiptList;
						var addOption = "";
							
						if(jsonData.totalCnt > 0){
							
							$(".find_ebill_tbl tr").remove();
							
							addOption += "<tr class=\"title\">";
							addOption += "	<th><span class=\"pc_txt\">거래구분</span><span class=\"mo_txt\">거래</span><span class=\"mo_txt\">구분</span></th>";
							addOption += "	<th>구분</th>";
							addOption += "	<th>매장명</th>";
							addOption += "	<th>날짜</th>";
							addOption += "	<th>결제금액</th>";
							addOption += "</tr>";
							
							 $.each(receiptList,function(i,item){
								
								var tranDescName = item.transactDescName;
								var payAmount = numberWithCommas(item.payAmount);
								
								addOption = addOption;
								
								if(tranDescName != ""){
									addOption += "<tr class=\"content\" onclick=\"javascript:fnSelectEReceipt('"+item.storeName+"("+item.transactDescName+")','"+item.storeCd+"','"+item.storeName+"','"+item.transactDate+"','"+payAmount+"원','"+item.transactFlagName+"');\">";
								}
								else{
									addOption += "<tr class=\"content\" onclick=\"javascript:fnSelectEReceipt('"+item.storeName+"','"+item.storeCd+"','"+item.storeName+"','"+item.transactDate+"','"+payAmount+"원','"+item.transactFlagName+"');\">";
								}
								
								addOption += "<td>" + item.transactFlagName + "</td>"
								addOption += "<td>" + item.transactDescName + "</td>"
								addOption += "<td>" + item.storeName + "</td>"
								addOption += "<td>" + item.transactDate + "</td>"
								addOption += "<td>" + payAmount + "원</td>"
								addOption += "</tr>"
								
							 });
							$(".find_ebill_tbl").append(addOption);
							
					 		fnPaging(jsonData.totalCnt, page, pagingSize);
					 		
					 		// s: 고객의소리 개선 수정 220913
							$('.find_ebill_cont .find_ebill_tbl .content').click(function() {
								$('.find_ebill_cont .find_ebill_tbl .content').removeClass('active');
								$(this).addClass('active');
							});
							// e: 고객의소리 개선 수정 220913
					 		
						}else{
							$(".find_ebill_tbl tr").remove();

							addOption += "<tr class=\"title\">";
							addOption += "	<th><span class=\"pc_txt\">거래구분</span><span class=\"mo_txt\">거래</span><span class=\"mo_txt\">구분</span></th>";
							addOption += "	<th>구분</th>";
							addOption += "	<th>매장명</th>";
							addOption += "	<th>날짜</th>";
							addOption += "	<th>결제금액</th>";
							addOption += "</tr>";
							addOption += "<tr class=\"content\"><td colspan=\"5\">데이터가 없습니다.</td></tr>"
							
							$(".find_ebill_tbl").append(addOption);
						}
	
					}else{
						alert(result.alert_msg);
					}
				}			
								
			},function(result) {
				alert("실패");
				return;	
			});
		},cstmrAgreeCnt : function(){
			
			var objParam = {};
			
			//VOC 개인정보의 수집 동의여부 조회 API 호출
			__ajaxCall("/voc/getCstmrAgreeCnt.do", objParam, true, "json", "post", function(data) {

				 if (data != "") {	 
						if(data.totCnt == 0){
					 		openPersonalConsentPop();
						}
				}			
								
			},function(result) {
				alert("실패");
				return;	
			});
		},updateCstmrAgree : function(){
			
			var objParam = {};
			
			//VOC 개인정보의 수집 동의여부 업데이트
			__ajaxCall("/voc/updateCstmrAgree.do", objParam, true, "json", "post", function(data) {

				 if (data != "") {	 
						if(data.RESULT_CODE == "OK"){
					 		$('.personal_consent_pop').fadeOut()
							$('.myDimm').hide();
						}
						else{
							alert("실패");
						}
				}			
								
			},function(result) {
				alert("실패");
				return;	
			});
		},cancel : function(){
			if(confirm("취소하시겠습니까?")) {
				document.vocForm.reset();
			}
		},goSubmit : function(){
						
					if($voc.valCh()){
						if ($voc.submitChk()) {
							$commonLib.showLoadingImg();
//						
//							var cate1 = $("#sel").val();
//							var cate2 = $("#sel2").val();
//							var target1 = document.getElementById("kind");
//							var target2 = document.getElementById("sel");
//							var target3 = document.getElementById("sel2");
//							var nm1= target1.options[target1.selectedIndex].text;
//							var nm2= target2.options[target2.selectedIndex].text;
//							var nm3= target3.options[target3.selectedIndex].text;
							//var search1 = nm3;
							var search2 = $("[name=content]").val();
							var arr = ["가루","고무","고체","곰팡이","구더기","껍질","나방","날파리","노즐","덩어리","독","돌","돌맹이","머리카락","먼지","묻어","물체","바늘","바퀴벌레","방역","뱉어","벌레","불순물","비닐","비위","비","위생","성분검사","세균","손톱","수세미","실","씹히","알맹이","위생","위험","유산지","은박","은박지","이물","이물질","조각","종이","증거",
							           "찌꺼기","청결","청소","초파리","탄화","털","파리","플라스틱","호일","휴지","쥐","화상","통증","벌레","비닐","껍데기","나사","딱딱","위생","머리카락","벌레","플라스틱","은박","유리","줄기","못","돌",
							           "날파리","피해","비닐","이물감","청결","응급실","상처","복통","진단서","치료비","구토","설사","손상","유충","날벌레","사체","거미","계단","고발","끈적","나방","날파리","냄새","노즐","단정","더러운",
							           "더러움","더럽게","맨손","머리카락","먼지","모기","묻어","바닥","바퀴","반려견","방역","변기","불결","비닐","세균","세척","소독","소파","손으로","손톱","쇼파","쇼파","식중독","쓰레기","알러지","얼룩",
							           "오염","위생","유통기한","이물","자국","잔해","정수기","지저분","집게","찌꺼기","청결","청소","초파리","침","테이블","파리","필터","하루살이","하수구","해충","향수","휴지통","악취","언론사","방송사",
							           "SNS","기자","법적","규정","정책","법률","소비자보호원","소보원","식약처","기사","신고","낙상","정전","단전","배수관","누수","보험","화재","누전"]; 
							var tmp= new Array();
							var temp;
							var k=0;
							
							//$("#email").val($("#mail1").val() + "@" + $("#mail2").val());
							//$("#reply_request_email").val($("#mail1").val() + "@" + $("#mail2").val());
							

							/*$("#store_nm").val($("#store_cd").text());*/
//							$("#cate1").val( cate1 );
//							$("#cate2").val( cate2 );
//							$("#kind_nm1").val( nm1 );
//							$("#kind_nm2").val( nm2 );
//							$("#kind_nm3").val( nm3 );
							
							//내용에 단어있을때
//							for(var i=0; i < arr.length; i++){
//								
//								if(search2.indexOf(arr[i]) > -1){
//									tmp[k] = arr[i];
//									temp = temp + arr[i] + "/";
//									k++;
//								}
//							}
							//음료-이물/ 푸드-이물
							
							var vitalfewVal = $("#sel2").val();
							if (vitalfewVal == "I0900" || vitalfewVal == "A1200" || vitalfewVal == "B1400" || vitalfewVal == "C1400" ) 
							{
								//$("#mail_yn").val("Y");
							}
		
							submitFlag = false;
							
							
							setTimeout(function(){
								//document.vocForm.target = "ifrmProc";
								document.vocForm.submit();	
							},1000);
							
						}
					}
		},
		submitChk : function() {
			if (submitFlag==false) {
				alert("잠시만 기다려주세요. 문의하신 내용을 등록 중 입니다.");
				return false;
			} else {
				return true;
			}
			
		},valCh : function(){
		
			// 2024.01 전화 상담시간 축소, 고객의 소리 분실물 접수화면 변경 : 2024.01.15 오전 7시부터 변경되는 부분
			if(todayH >= startTime && $('#CD_VOC_CAUSE_1').val() == '030'){
				if($.trim($("#store_cd").val()) == "0"){
					alert("매장을 선택해주세요.");
					return false;
				}
			}
			
			/*if($("#TP_VOC_DEMAND").val() == ""){
				alert("문의유형을 선택하세요.");
				$("#TP_VOC_DEMAND").focus();
				return false;
			}*/
			if($("#CD_VOC_CAUSE_1").val() == ""){
				alert("문의분류를 선택하세요.");
				$("#CD_VOC_CAUSE_1").focus();
				return false;
			}
			if($("#CD_VOC_CAUSE_2").val() == ""){
				alert("문의분류를 선택하세요.");
				$("#CD_VOC_CAUSE_2").focus();
				return false;
			}
			/*
			if( $("#CD_VOC_CAUSE_1").val() == '001' && $('#NM_GOODS1').val() == '' ) {
				alert("대분류가 제품/상품일 경우 제품/상품을 선택하세요.");
				$("#NM_GOODS1").focus();
				return false;
			} 
			*/
			/*if(!$("input:radio[name='TP_CSTMR_RPLY']").is(":checked")){
				alert("답변알림을 필수로 선택하세요.");
				return false;
			}*/
			
			/*if($.trim($("#DS_CSTMR_EMAIL1").val()) == ""){
				alert("메일를 입력하세요.");
				$("#DS_CSTMR_EMAIL1").focus();
				return false;
			}
			if($.trim($("#DS_CSTMR_EMAIL2").val()) == ""){
				alert("메일을 입력하세요.");
				$("#DS_CSTMR_EMAIL2").focus();
				return false;
			}*/
			
			//2022.06.22 고객의소리 개선
			if($("input:radio[id='find_ebill']").is(":checked") && $.trim($("#ERECEIPT_CONTENT").val()) != ""){
				$('#DS_NO_BILL').val($('#ERECEIPT_CONTENT').val());
			}
			if($("input:radio[id='insert']").is(":checked") && $.trim($("#insert_input").val()) != ""){
				$('#DS_NO_BILL').val($('#insert_input').val());
			}
			if($("input:radio[id='nothing']").is(":checked")){
				$('#DS_NO_BILL').val('');
			}
			
			if($("input:radio[id='find_ebill']").is(":checked") && ($.trim($("#DS_NO_BILL").val()) == "" || $.trim($("#ERECEIPT_CONTENT").val()) == "")){
				alert("결제정보를 입력하세요.");
				return false;
			}
			if($("input:radio[id='insert']").is(":checked") && ($.trim($("#DS_NO_BILL").val()) == "" || $.trim($("#insert_input").val()) == "")){
				alert("결제정보를 입력하세요.");
				return false;
			}
			if(!$("input:radio[id='find_ebill']").is(":checked") && !$("input:radio[id='insert']").is(":checked") && !$("input:radio[id='nothing']").is(":checked")){
				alert("결제정보를 입력하세요.");
				return false;
			}
			
			
			if($("#HOW1").is(":checked")){
				
				/*if($("#store_sido").val() == ""){
					alert("시/도를 선택하세요.");
					$("#sido").focus();
					return false;
				}
				if($("#gugun").val() == ""){
					alert("구/군을 선택하세요.");
					$("#gunList").focus();
					return false;
				}*/
				if($.trim($("#store_cd").val()) == "0"){
					alert("매장을 선택해주세요.");
					//$(".btn_find_store").focus();
					//$('a.btn_find_store').click();
					
					return false;
				} /*else if( $("#pickDate1").val() == "" ) {
					alert("매장 방문일을 선택해주세요.");
					$("#pickDate1").focus();
					return false;
				}*/
				
			}else{
				$("#store_nm").val("매장");
				$("#store_cd").val('');
				
			}
			
			if($("#phone_change_flag").val() != "" && $('#phone_change_flag').val() == "Y"){  //휴대폰번호를 수정했을 경우
				if( ($("#phone2").val() == "" && $("#phone3").val() != "") || ($("#phone3").val() == "" && $("#phone2").val() != "") || $("#phone2_mask").val() == "" ){
					alert("잘못된 휴대폰 번호입니다. 다시 입력해 주세요.");
					$("#phone2_mask").val("");
					$("#phone2").val("");
					$("#phone3").val("");
					$("#phone2").focus();
					$("#phone_change_flag").val("Y");
					return false;
					
				}else if( ($("#phone2").val() == "" &&  $("#phone3").val() == "" ) || $("#phone2_mask").val() == "" ){ 
					
					alert("잘못된 휴대폰 번호입니다. 다시 입력해 주세요.");
					$("#phone2_mask").val("");
					$("#phone2").val("");
					$("#phone3").val("");
					$("#phone2").focus();
					$("#phone_change_flag").val("Y");
					return false;
					
				}else{
					var phone_info =  $("#phone1").val() + "-" +  $("#phone2").val() + "-" +  $("#phone3").val() ;
					
					var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
					if (regPhone.test(phone_info) === false) {
				    	alert('잘못된 휴대폰 번호입니다. 다시 입력해 주세요.');
				    	$("#phone2_mask").val("");
				    	$("#phone2").val("");
						$("#phone3").val("");
						$("#phone2").focus();
						$("#phone_change_flag").val("Y");
						return false;
					}
	
					var cttpc = phone_info != '' ? $('#phone1').val() + '-' + $('#phone2').val() + '-' + $('#phone3').val() : '';
					$('#DS_CSTMR_CTTPC').val(cttpc);
				}
			}
			else{ //휴대폰 번호를 수정하지 않았을 경우
				
				if( $("#phone1").val() == "" || $("#phone2_mask").val() == "" || $("#phone3").val() == "" ){ 
					
					alert("잘못된 휴대폰 번호입니다. 다시 입력해 주세요.");
					$("#phone2_mask").val("");
					$("#phone2").val("");
					$("#phone3").val("");
					$("#phone2").focus();
					$("#phone_change_flag").val("Y");
					return false;
					
				}else{
					var phone_info =  $("#phone1").val() + "-" +  $("#phone2_mask").val() + "-" +  $("#phone3").val() ;
					
					var regPhone = /^01([0|1|6|7|8|9])-?([*]{3,4})-?([0-9]{4})$/;
					if (regPhone.test(phone_info) === false) {
				    	alert('잘못된 휴대폰 번호입니다. 다시 입력해 주세요.');
				    	$("#phone2_mask").val("");
				    	$("#phone2").val("");
						$("#phone3").val("");
						$("#phone2").focus();
						$("#phone_change_flag").val("Y");
						return false;
					}
				}
				
			}
			
			
			if($.trim($("#DS_VOC_TITLE").val()) == ""){
				alert("제목을 입력하세요.");
				$("#DS_VOC_TITLE").focus();
				return false;
			}
			if($.trim($("#DS_VOC_CN").val()) == ""){
				alert("세부 내용을 입력하세요.");
				$("#DS_VOC_CN").focus();
				return false;
			}
			
			// \ 문자열 입력시 공백으로 치환되는부분 수정 2022.08.19
			if($.trim($("#DS_VOC_TITLE").val()) != ""){
				var vTitle = $("#DS_VOC_TITLE").val();
				vTitle = vTitle.replace(/\\/g,"&#92;");
				$("#DS_VOC_TITLE").val(vTitle);
			}
			if($.trim($("#DS_VOC_CN").val()) != ""){
				var vCn = $("#DS_VOC_CN").val();
				vCn = vCn.replace(/\\/g,"&#92;");
				$("#DS_VOC_CN").val(vCn);
			}

			/*var cttpc = $('#phone').val() != '' ? $('#phone1').val() + '-' + $('#phone2').val() + '-' + $('#phone3').val() : '';
			$('#DS_CSTMR_CTTPC').val(cttpc);*/
			
			/*var email = $('#DS_CSTMR_EMAIL1').val() + '@' + $('#DS_CSTMR_EMAIL2').val();
			$('#DS_CSTMR_EMAIL').val(email);*/
			
			// \ 문자열 입력시 공백으로 치환되는부분 수정 2022.08.29
			if($.trim($("#DS_NO_BILL").val()) != ""){
				var vNoBill= $("#DS_NO_BILL").val();
				vNoBill = vNoBill.replace(/\\/g,"&#92;");
				$("#DS_NO_BILL").val(vNoBill);
			}
			
			var totalFileSize = 0; //파일 업로드 용량 합계
			var fileInput = $("input[type=file]");
			var fileInputSize = fileInput.size();
			var fileSize = 0;
			var totalFilelimit = 10*1024*1024;
			
            for (var i = 0; i < fileInputSize; i++) {
				if($("input[type=file]")[i] != undefined && $("input[type=file]")[i] != "undefined"){
					if($("input[type=file]")[i].files[0] != undefined && $("input[type=file]")[i].files[0] != "undefined"){
						fileSize = $("input[type=file]")[i].files[0].size;
                
		                if(!isNaN(totalFileSize) && !isNaN(fileSize)){
							totalFileSize = parseInt(totalFileSize) + parseInt(fileSize);
						}
					}
				}
            }
			if( totalFileSize > totalFilelimit ) {
				alert('파일 첨부는 총 10MB까지 등록 가능합니다.');
				return false;
			}
			
			//매장 방문 외 선택시 매장코드 초기화
			if($("#HOW2").is(":checked")){
				$('#store_cd').val('0');
				$('#CD_STORE').val(''); 
				$('#CD_VISIT_STR').val('');
			}
			
			return true;
			
		},selectStore : function(){
			$(document).on("click", "a.selStore", function () {
				$('#store_nm').val($(this).attr('data-name'));
				$('#store_sido').val($(this).attr('data-sido'));
				$('#gugun').val($(this).attr('data-gugun'));
				$('#store_cd').val($(this).attr('data-cd'));
				$('#CD_VISIT_STR').val($(this).attr('data-cd'));
				$('.input_store_txt').html('선택하신 매장은 <strong>'+$(this).attr('data-name')+'</strong> 입니다.');
				$('#CD_STORE').val('');
					
				//매장찾기로 선택여부 Y로
				$('#FIND_STORE_YN').val("Y");
				
				$('.myDimm').hide();
				$('.sto_find_pop').fadeOut();
			});	
			
		},selectProd : function(){
			$(document).on("click", "a.selProd", function () {
				$('#NM_GOODS'+(prodSel)).val($(this).attr('data-nmPrduct'));
				$('#CD_GOODS'+(prodSel)).val($(this).attr('data-noSku'));
				$('.myDimm').hide();
				$('.prod_find_pop').fadeOut();
			});	
			
		},file_del : function(type){
			$("#"+type).hide();
			++index;
			
		},fileInsert : function(){
		
	/*		if(index == 1){
				alert("최대 5개 까지 추가 가능합니다.");
				return;
			}
			
			$("#file_wrap"+index).show();
			index--;
			
			 */

	
			
	
		
			if($(".file_wrap").length < 3){
				iFileCnt += 1; 
				// 고객의 소리 개선 220615, input_wrap 추가
				var inputFile = '\
					<div class="file_wrap" id="file_wrap' + iFileCnt + '">\
						<div class="input_wrap"><input class="voc_file_input" id="fileName' + iFileCnt + '" readonly type="text"></div>\
						<div class="voc_file_btn">\
						<input class="voc_file_input_btn" type="button" value="찾아보기">\
						<input class="voc_file_input_hidden" onchange="document.getElementById(\'fileName' + iFileCnt + '\').value = this.value;" type="file" name="file_nm' + iFileCnt + '" id="file_nm' + iFileCnt + '">\
						</div>\
						<a class="file_add" href="javascript:void(0);" onClick="$voc.fileInsert(); return false;">더하기</a>\
					</div>\
					';
				
				$("#file_wrap" + (iFileCnt-1) + " a").removeClass("file_add").addClass("file_remove").html("빼기");
				$("#file_wrap" + (iFileCnt-1) + " a").removeAttr("onClick").click($voc.fileDel);
				$(".file_section").append(inputFile);
				
			}else{
				alert("최대 3개 까지 추가 가능합니다.");
			}
			
			
			
		},fileDel : function(v){
			$(this).parent().remove();
			
		},fileCheck : function(type){
			var ext = $('#'+type).val();

			var fileext = $('#'+type).val();
			if (fileext != "") {
				if (fileext.indexOf(".") > -1) {
					fileext = fileext.substring(fileext.lastIndexOf(".") + 1, fileext.length).toLowerCase();			
				} else {
					alert("업로드가 불가능한 파일 입니다.\n파일형식을 확인해 주십시오.");
					$('#'+type).val("");
					$('#'+type).val("");
					if (type != '') {
						type = type.toLowerCase().replace("file_nm","");
					}
					$('#fileName'+type).val("");					
					return false;
				}
			}
			
			var ext = "jpg, jpeg, png, gif";
			
			if(ext.indexOf(fileext) > -1){    
				//용량체크
				try {
					var filesize = $('#'+type)[0].files[0].size;
					var filelimit = 5*1024*1024;
					if( filesize > filelimit ) {
						alert('파일첨부는 1개당 최대 5MB이하만 등록가능합니다.');
						$('#'+type).val("");
						$('#'+type).val("");
						if (type != '') {
							type = type.toLowerCase().replace("file_nm","");
						}
						$('#fileName'+type).val("");
						return false;
					}
					
				
				} catch(e) {}
				return true;
			} else {
				alert('jpg, jpeg, png, gif만 등록 가능합니다.');
				$('#'+type).val("");
				$('#'+type).val("");
				if (type != '') {
					type = type.toLowerCase().replace("file_nm","");
				}
				$('#fileName'+type).val("");
				return false;				 
			}
	
			
		/*	ext = $('#'+type).val().split('.').pop().toLowerCase();
				if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1)
				{
					alert(3)
					 alert('gif,png,jpg,jpeg 파일만 업로드 할수 있습니다.');
					 return;
				}*/
			
				/*var fileext = $("#file_nm1").val(); 
				 fileext = fileext.substring(fileext.indexOf(".") + 1, fileext.length).toLowerCase(); 
				 var ext = "jpg, jpeg, png, gif, zip, doc, docx, ppt, pptx, xls, xlsx, hwp";
				 if(ext.indexOf(fileext) == -1){    
					alert('jpg, jpeg, png, gif, zip, doc, docx, ppt, pptx, xls, xlsx, hwp만 등록 가능합니다.');
					$("#fileName1").val("");
					$("#file_nm1").val("");
					return false;
				 }*/
		},fileChgReset : function(){
			$(document).on("change","input[type=file]",function(){
				$voc.fileCheck($(this).attr("id"));
			});

		},prodInsert : function(){
			prodCnt++;
//
//			<div class="prod_wrap" id="prod_wrap1">
//			<input class="voc_prod_input" id="NM_GOODS"  readonly type="text" id="NM_GOODS1">
//			<div class="voc_prod_btn">
//				<a class="btn_find_prod" href="javascript:void(0);">상품찾기</a>
//				<input class="voc_prod_input_hidden"  type=hidden name="CD_GOODS" id="CD_GOODS1">
//			</div>
//			<a class="prod_add" href="javascript:void(0);" onClick="$voc.prodInsert(); return false;">더하기 </a>
//		</div> 
//		
			// 고객의 소리 개선 220615, input_wrap 추가
			var inputProd = '\
				<div class="prod_wrap" id="prod_wrap' + prodCnt + '">\
					<div class="input_wrap"><input class="voc_prod_input" id="NM_GOODS' + prodCnt + '" readonly type="text"></div>\
					<div class="voc_prod_btn">\
					<input class="voc_prod_input_btn" type="button" value="상품찾기" idx="'+ prodCnt +'">\
					<input class="voc_prod_input_hidden"  type=hidden name="CD_GOODS" id="CD_GOODS' + prodCnt + '">\
					</div>\
					<a class="prod_add" href="javascript:void(0);" onClick="$voc.prodInsert(); return false;">더하기</a>\
				</div>\
				';
			
			$("#prod_wrap" + (prodCnt-1) + " a").removeClass("prod_add").addClass("prod_remove").html("빼기");
			$("#prod_wrap" + (prodCnt-1) + " a").removeAttr("onClick").click($voc.prodDel);
			$(".prod_section").append(inputProd);
			
			//상품찾기
			$(document).on('click','.voc_prod_input_btn',  function(){
				prodSel = $(this).attr('idx');

				$('#find_prod_name').val('');
				$('.prod_find_pop .searchNm').html('상품명을 입력해주세요.');
				
				$('.prod_find_pop .search_with').hide();
				$('.prod_find_pop .search_list').hide();
				$('.prod_find_pop .search_no_with').hide();
				
				var wt = $(window).scrollTop();
				$('.myDimm').show();
				$('.prod_find_pop').css({top: wt - 50});
				$('.prod_find_pop').fadeIn();
			});
			
		},prodDel : function(v){
			$(this).parent().remove();
			
		},store : function(){
			$("#store_cd").text($('#store > option:selected').text());
		
			
		}, vocDemandType : function() {

    		__ajaxCall("/voc/getVocDemandCodeList.do", {}, true, "json", "post",
					function(data)
					{
		    			var option 	= '<option value="\${code}">\${code_NAME}</option>';
		        		$.template( "uiCtrl", option ); 
		        		
		    			$("#TP_VOC_DEMAND").empty();
						$("#TP_VOC_DEMAND").append('<option value="">문의유형</option>');
		    			
						if ( data.list.length > 0)
						{
							$.tmpl( "uiCtrl" , data.list, {}).appendTo( "#TP_VOC_DEMAND" );
						}
						$("#TP_VOC_DEMAND").trigger("change");
						
						
					}
					,
					function()
					{
						
					}
		);
    		
		}, middleType : function() {
			//중분류
			//alert(33333)
			var par = {
					//PARENT_CD : ""
			};
    		__ajaxCall("/voc/getVocCauseCodeList.do", par, true, "json", "post",
					function(data)
					{
		    			var option 	= '<option value="\${code}">\${code_NAME}</option>';
		        		$.template( "uiCtrl", option ); 
		        		
		    			$("#CD_VOC_CAUSE_1").empty();
						$("#CD_VOC_CAUSE_1").append('<option value="">대분류</option>');
		    			$("#CD_VOC_CAUSE_2").empty();
						$("#CD_VOC_CAUSE_2").append('<option value="">중분류</option>');
						
						if ( data.list.length > 0)
						{
							$.tmpl( "uiCtrl" , data.list, {}).appendTo( "#CD_VOC_CAUSE_1" );
						}
						$("#CD_VOC_CAUSE_1 option[value=026]").remove();	//VOC제외는 나오지 않게
						$("#CD_VOC_CAUSE_1 option[value=027]").remove();	//VOC제외는 나오지 않게
						$("#CD_VOC_CAUSE_1 option[value=029]").remove();	//추가이력 문의분류 고객 비노출 처리
						
						$("#CD_VOC_CAUSE_1").trigger("change");
						$("#CD_VOC_CAUSE_2").trigger("change");
						val = $("#CD_VOC_CAUSE_1").val();
						
					}
					,
					function()
					{
						
					}
		);
			
			
		}, subType :  function () {
			//소분류
			
			
			var thisVal = $("#D6").val();
    		if (thisVal == "")
    		{
				$("#D7").empty();
				$("#D7").append('<option value="">구/군</option>');
    		}
    		else
    		{
				var option_gugun 	= '<option value="\${gugun_cd}">\${gugun_nm}</option>';
        		$.template( "gugunUiCtrl", option_gugun );
        		
        		__ajaxCall("/store/getGugunList.do",{"sido_cd":thisVal}, true, "json", "post",
        					function(data)
        					{
        						$("#D7").empty();
        						$("#D7").append('<option value="">구/군</option>');
        						if ( data.list.length > 0)
        						{
        							$.tmpl( "gugunUiCtrl" , data.list, {}).appendTo( "#D7" );
        						}
        						$("#D7").trigger("change");
        					}
        					,
        					function()
        					{
        						
        					}
        		);    				    			
    		}
		},getVocEvent : function(){
			__ajaxCall("/voc/getVocEvent.do", {} , true, "JSON", "POST", function(data) {
				if((data.EVENT_TITLE != null && data.EVENT_TITLE != '' && data.EVENT_TITLE != 'null' && data.EVENT_TITLE != 'undefined') && (data.EVENT_CONTENT != null && data.EVENT_CONTENT != '' && data.EVENT_CONTENT != 'null' && data.EVENT_CONTENT != 'undefined')){
					$('.pop_up_voc').show();
					$('.sugNoticePop').show();
					
					$('.subPopTit').html(data.EVENT_TITLE);
					$('.subContent').html(data.EVENT_CONTENT.replace(/(\n|\r\n)/g, '<br>'));
					$('.sugNoticePop_body .subPopBox').css('min-height','220px');
					
					
					$(".subPopBtn").on("click", function(e){
		                location.href="/util/faq.do";
		            });
					
					$(".sugNoticePop_close").on("click", function(e){
						$('.pop_up_voc').hide();
						$('.sugNoticePop').hide();
		            });
					
					
				}
			});
			
		}
		
		
		
		
		/*
		 * 	var ext = $('#addFile').val().split('.').pop().toLowerCase();
				if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1)
				{
					 alert('gif,png,jpg,jpeg 파일만 업로드 할수 있습니다.');
					 return;
				}
			*/
}

// Get current time format: hhmmss
function getCurrentTime() {
	var now = new Date();
	var hours = now.getHours().toString().padStart(2, '0');
	var minutes = now.getMinutes().toString().padStart(2, '0');
	var seconds = now.getSeconds().toString().padStart(2, '0');	
	var currentTime = parseInt(`${hours}${minutes}${seconds}`, 10);
	return currentTime;
}
