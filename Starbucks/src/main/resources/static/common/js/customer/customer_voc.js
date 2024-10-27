

$(document).ready(function(){
	var cate_cd = "F00";
	var result;
	$.coustomer.tmplete2();
	$.coustomer.getList2(cate_cd);
	$.coustomer.getTipList();
	$.coustomer.getAppList();

	__ajaxCall("/customer/getSesstionAjax.do", {}, true, "json", "get",
			function(data){
				result = data.result_code;
				
				if(data.result_code == "SUCCESS"){
					$.coustomer.getVocList();
				}
				$.coustomer.getVocList();
			}
			,function(data){
	
	});
	
	/*__ajaxCall("/voc/getVocEvent.do", {} , true, "JSON", "POST", function(data) {
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
	});*/
	
	
	//검색 엔터키
	$("#msr_bar01").unbind("keydown").keydown(function(e){
    	if (e.keyCode == 13) 
    	{
			if(pattern_check("#msr_bar01" ,   	  "검색어를  입력하세요." , "허용되지 않은 문자입니다."	, getPattern('BASIC3') )==false){return;}
			var text = $("#msr_bar01").val();
			searchBtn('S', text);
    	}			
	});
	
});

(function($){
	
	$.coustomer = {
			
			tmplete2 : function(){
	
				var tmplete = "";

				tmplete = tmplete+ '<li>'; 
				tmplete = tmplete+ 	'<a href="javascript:faqView(\'${$item.id_voc_faq()}\', \'000\' , \'\');"">${$item.title()}</a>'; 
				tmplete = tmplete+ '</li>'; 
				
				
				$.template( "bestListTmp", tmplete );
			}
			,getList2 : function(cate_cd){
			
				var param = {
						CD_VOC_CAUSE_1 	: '000'	//전체
					  , TP_DISPLAY			: 'INDEX'
				};
				
				__ajaxCall("https://www.starbucks.co.kr/voc/getFaqBest5.do", param, true, "json", "post",
					function(data){
						var index = 0;
						$("#bestList").html("");
						
						$.tmpl( "bestListTmp", data.list , {
							index : function(){
								index += 1;
								return index;
							}
							,title : function(){
								var title = this.data.ds_QESTN;
								return title;
							}
							,id_voc_faq : function(){
								return this.data.id_VOC_FAQ;
							}
							
						}).appendTo("#bestList");		
						
					}
					,function(){
					});
			}
			,getTipList : function(){
				
				var param = {
						menu_cd : "STB2709"//홈페이지 이용팁
				};
				
				__ajaxCall("https://www.starbucks.co.kr/customer/getListAjax.do", param, true, "json", "get",
						function(data){
							
							var $selector = $("#webData");
	    					
							$(".webWrap").html("");
	    					$selector.tmpl(data.list, {
	    						/*content : function(){
	    				 			var content = convert_ohy(this.data.content);
	    				 			return content;
	    				 		}*/
	    						
	    						content : function(){
	    							
	    							var text = this.data.content;
	    							var title = this.data.title;
	    							
	    							text = convert_ohy(text);
	    							
	    						
	    							var $html = $(text);
	    							  	  $html.find("img").remove();

	    							var content  = $html.text();
	    								  content = strip_tags(content,"");

	    						    if( content.length > 200 )
	    							{
	    								return content.substring(0,199) + "..";
	    							}
	    							else
	    							{
	    								return content;
	    							}
	    						}
	    						
	    						
	    					}).appendTo(".webWrap");				
							
						
							// 150722 DOM 수정 - 스타벅스 이용 팁 기능 수정
							if(myWindow > 1099){

								var news_slide = $('.sb_use_tip_slide ul').eq(0).bxSlider({
									minSlides:2,
									maxSlides:2,
									slideWidth:328,
									slideMargin:24,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow > 960 && myWindow <= 1099){

								var news_slide = $('.sb_use_tip_slide ul').eq(0).bxSlider({
									minSlides:2,
									maxSlides:2,
									slideWidth:280,
									slideMargin:20,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow > 769 && myWindow <= 960){

								var news_slide = $('.sb_use_tip_slide ul').eq(0).bxSlider({
									minSlides:2,
									maxSlides:2,
									slideWidth:328,
									slideMargin:24,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow <= 768){

								var news_slide = $('.sb_use_tip_slide ul').eq(0).bxSlider({
									slideWidth:320,
									pager:false,
									auto:false,
									pause:2000
								});

							}

							var t_num = 1;
							var t_total = $('.sb_slide_wrap').length; // 총 section 갯수
							$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');

							$('.sb_use_tip_wrap header aside p a.forward').bind('click', function(){
								$("#hTap").text("애플리케이션 이용팁");
								if(t_num >= t_total) t_num = 0;
								t_num++;
								$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');
								$('.sb_slide_wrap').removeClass('on');
								$('.sb_slide_wrap').eq( t_num - 1 ).addClass('on');
							});
							
							$('.sb_use_tip_wrap header aside p a.back').bind('click', function(){
								$("#hTap").text("홈페이지 이용팁");
								if(t_num <= 1) t_num = t_total + 1;
								t_num--;
								$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');
								$('.sb_slide_wrap').removeClass('on');
								$('.sb_slide_wrap').eq( t_num - 1 ).addClass('on');
							});
							
							// 150722 DOM 수정 - 스타벅스 이용 팁 기능 수정 end
						
						}
						,function(){
							
						});
			}
			,getAppList : function(){
				
				var param = {
						menu_cd : "STB2708"
				};
				
				__ajaxCall("https://www.starbucks.co.kr/customer/getListAjax.do", param, true, "json", "get",
						function(data){
							
							var $selector = $("#appData");
	    					
							$(".appWrap").html("");
	    					$selector.tmpl(data.list, {
	    							content : function(){
	    							
	    							var text = this.data.content;
	    							var title = this.data.title;
	    							
	    							text = convert_ohy(text);
	    							
	    						
	    							var $html = $(text);
	    							  	  $html.find("img").remove();

	    							var content  = $html.text();
	    								  content = strip_tags(content,"");

	    						    if( content.length > 200 )
	    							{
	    								return content.substring(0,199) + "..";
	    							}
	    							else
	    							{
	    								return content;
	    							}
	    						}
	    					}).appendTo(".appWrap");				
							
						
							// 150722 DOM 수정 - 스타벅스 이용 팁 기능 수정
							if(myWindow > 1099){

								var news_slide = $('.sb_use_tip_slide ul').eq(1).bxSlider({
									minSlides:1,
									maxSlides:2,
									slideWidth:328,
									slideMargin:24,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow > 960 && myWindow <= 1099){

								var news_slide = $('.sb_use_tip_slide ul').eq(1).bxSlider({
									minSlides:1,
									maxSlides:2,
									slideWidth:280,
									slideMargin:20,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow > 769 && myWindow <= 960){

								var news_slide = $('.sb_use_tip_slide ul').eq(1).bxSlider({
									minSlides:1,
									maxSlides:2,
									slideWidth:328,
									slideMargin:24,
									pager:false,
									auto:false,
									pause:2000
								});

							}else if(myWindow <= 768){

								var news_slide = $('.sb_use_tip_slide ul').eq(1).bxSlider({
									slideWidth:320,
									pager:false,
									auto:false,
									pause:2000
								});

							}

							var t_num = 1;
							var t_total = $('.sb_slide_wrap').length; // 총 section 갯수
							$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');

							$('.sb_use_tip_wrap header aside p a.forward').bind('click', function(){
								if(t_num >= t_total) t_num = 0;
								t_num++;
								$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');
								$('.sb_slide_wrap').removeClass('on');
								$('.sb_slide_wrap').eq( t_num - 1 ).addClass('on');
							});
							
							$('.sb_use_tip_wrap header aside p a.back').bind('click', function(){
								if(t_num <= 1) t_num = t_total + 1;
								t_num--;
								$('span.tip_num').html('<strong>'+ t_num +'</strong>/'+ t_total +'</span>');
								$('.sb_slide_wrap').removeClass('on');
								$('.sb_slide_wrap').eq( t_num - 1 ).addClass('on');
							});
							
							// 150722 DOM 수정 - 스타벅스 이용 팁 기능 수정 end
						
						}
						,function(){
							
						});
				
				
				
			}
			,getVocList : function(){
				
				var param = {
					TP_SEARCH_DT : 'W1'
				};
				
				__ajaxCall("/voc/getVocMyCount.do", param, true, "json", "post",
						function(data){
							
							if(data.cntVocR == null || data.cntVocR == ""){
								$("#reSuc").text("0");
								$("#repSuc").text("0");
							} else {
								$("#reSuc").text(data.cntVocR);
								$("#repSuc").text(data.cntVocC);
							}
								
						}
						,function(){
							
						});
				
				
			}
			
		}
})(jQuery);


function strip_tags (input, allowed) {
    allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
    var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
        commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
    return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {        return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
    });
}

function faqView(seq, cate_cd, searchKeyword){
	addFaqHitCnt(seq);
	
	document.customFrm.seq.value = seq;
	document.customFrm.cate_cd.value = cate_cd;
	document.customFrm.searchKeyword.value =searchKeyword;
	document.customFrm.action = "/util/faq.do";
	document.customFrm.submit();
	
}

function searchText(text){
	
	$("#msr_bar01").text(text);
}

function searchBtn(type, text){
	if(type == 'S'){
		if($("#msr_bar01").val()==""){
			alert("검색어를 입력하지 않으셨습니다."); return;
		}
		/*if($("#msr_bar01").val().length <= 1){
			alert("검색어를 2글자 이상으로 입력하세요."); return;
		}*/
		var sText =$("INPUT[name=msr_bar01]").val();
		document.customFrm.searchKeyword.value =sText;
	
	}else{
		document.customFrm.searchKeyword.value = text;
	}
	document.customFrm.cate_cd.value = '000';
	document.customFrm.action = "/util/faq.do";
	document.customFrm.submit();
	
}

function addFaqHitCnt(_nSeq) {
	var objParam = {
		seq : _nSeq
	};
	
	__ajaxCall("/util/addFaqHitCnt.do", objParam, true, "json", "post"
		,function (_response) {}
		,function (_error) {}
	);
}