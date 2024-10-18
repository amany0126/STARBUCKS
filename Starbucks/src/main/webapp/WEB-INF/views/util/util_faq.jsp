<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 하는 질문 | Starbucks Korea</title>

<link href="/common/css/style_util.css" rel="stylesheet">
<link href="/common/css/style_csi.css" rel="stylesheet">
<link href="/common/css/style_msr.css" rel="stylesheet">
<link rel="stylesheet" href="/common/css/style_faq.css?v=230809">
<script>
var todayH = 20241018102234;				
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
	<jsp:include page="header.jsp" />
	
	<jsp:include page="footer.jsp" />
	<script src="/common/js/customer/faq_voc.js?v=220106"></script> 
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

function Best10Setting(){
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
}

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