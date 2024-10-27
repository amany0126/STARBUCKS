//var tem = '<tr><td>${$item.index()}</td><td class="tr"><a href="#list" onclick="i.goViewPage(\'${id_VOC}\',\'${$item.pageIndex()}\'); return false;">${ds_VOC_TITLE}</a></td><td>${$item.reg_dt()}</td><td>${$item.ans_prop_dt()}</td><td>{{html $item.yn_answer()}}</td></tr>';
var tem = '<tr><td>${$item.index()}</td><td class="tr"><a href="#list" onclick="i.goViewPage(\'${id_VOC}\',\'${$item.pageIndex()}\'); return false;"><p><span class="ellipsis">${ds_VOC_TITLE}</span>{{html $item.file_Yn()}}</p></a></td><td>${$item.reg_dt()}</td><td>{{html $item.yn_answer()}}</td></tr>';

$.template( "vocList", tem );
var i = {
	goPage : function(ipage, yn_answer, tp_search_dt) {
		
		if( yn_answer == 'G' ) {
			yn_answer = $('#YN_ANSWER').val();
		} else {
			$("#YN_ANSWER").val(yn_answer);
		}
		
		if( tp_search_dt == 'G' ) {
			tp_search_dt = $('#TP_SEARCH_DT').val();
		} else {
			$("#TP_SEARCH_DT").val(tp_search_dt);
		}
		
		var myInfo = {
			pageIndex : ipage,
			YN_ANSWER: yn_answer,
			TP_SEARCH_DT: tp_search_dt,
		};
		if(yn_answer == 'all'){
			myInfo.yn_answer = '';
		}
		__ajaxCall("/voc/getVocMyList.do", myInfo , true, "JSON", "POST", function(data) {
			yn_answer = yn_answer == '' ? 'all' : yn_answer;
			
//			if(data.error_code == "-9"){
//				alert(data.error_msg);
//				history.back();
//			}
//			
			//$(".tab_01 a").html("전체 " + data.cntVocT);
			//$(".tab_02 a").html("접수완료 " +  data.cntVocR);
			//$(".tab_03 a").html("답변완료 " + data.cntVocC);
			
			var key = -1;
			if(data.list.length > 0){
				$( "#all" ).html("");
				$.tmpl( "vocList", data.list, {
					index : function(){
						key +=1;
						ipage = ipage == "" ? 1 : ipage;
						return (data.cnt - (ipage - 1) * 10 - key);
					},
					pageIndex : function() {
						return ipage;
					},
					yn_answer : function(){
						var yn_answer;
						
						if(this.data.yn_ANSWER == "Y" ){
							yn_answer =  '<p class="state complete"><span>답변완료</span></p>';
							console.log(yn_answer)
							return yn_answer;						
						}else{
							if(this.data.cd_VOC_STTUS == "P0" ){
								yn_answer =  '<p class="state processing"><span>처리중</span></p>';
							}
							else{
								yn_answer =  '<p class="state"><span>접수대기</span></p>';
							}
							console.log(yn_answer)
							return yn_answer;
						}
						
					},
					fileCheck : function(file){
						if(file != ''){
							return '<span class="file_on">첨부파일 있음</span>';
						}else{
							return "-";
						}
					},
					reg_dt : function(file){
						var reg_dt = this.data.dt_VOC_REG;
						return reg_dt;
					},
					file_Yn : function(){
						var yn_file =  '';
						if(this.data.file_YN == "Y" ){
							yn_file =  '<span class="ico_picture"></span>';
						}
						console.log(yn_file)
						return yn_file;	
					},
					ans_prop_dt : function() {
						return this.data.dt_ANSWER_PLAN;
					}
				}).appendTo( "#all" );
				$(".suggestion_tbl_pagination").show();
			}else{
				$("#all" ).html('<tr><td colspan="6">데이터가 없습니다.</td></tr>');
				$(".suggestion_tbl_pagination").hide();
			}
			
			//상태별 버튼
			if(yn_answer == 'N'){
				$(".tab_01").removeClass("on");
				$(".tab_02").addClass("on");
				$(".tab_03").removeClass("on");
				cnt = data.cntVocR;				
			}else if(yn_answer == 'Y'){
				$(".tab_01").removeClass("on");
				$(".tab_02").removeClass("on");
				$(".tab_03").addClass("on");
				cnt = data.cntVocC;				
			}else{
				$(".tab_01").addClass("on");
				$(".tab_02").removeClass("on");
				$(".tab_03").removeClass("on");
				cnt = data.cntVocT;
			}
			
			//조회기간 버튼 콘트롤
			if( tp_search_dt == 'M1' ) {
				$('#tpW1').removeClass('on');
				$('#tpM1').addClass('on');
				$('#tpM3').removeClass('on');
				
			} else if( tp_search_dt == 'M3' ) {
				$('#tpW1').removeClass('on');
				$('#tpM1').removeClass('on');
				$('#tpM3').addClass('on');
			} else {
				$('#tpW1').addClass('on');
				$('#tpM1').removeClass('on');
				$('#tpM3').removeClass('on');
				
			}
			
			$replyPage = ipage;
			$mycTotalCount = data.cnt;
			$mycPageSize = 10;
			
			var isPageCnt =  parseInt( parseInt($mycTotalCount) / parseInt($mycPageSize) );
			var isPageMod =  parseInt( parseInt($mycTotalCount) % parseInt($mycPageSize) );
			var isPageMax =  ( isPageMod > 0 ) ? (isPageCnt + 1 ) : (isPageCnt);
			
			$("#allPage").paging({
				current     :   $replyPage	,
				max		    :	isPageMax	,
				length		: 10																								,
				onclick:function(e,page){
					i.goPage(page, yn_answer, tp_search_dt);
				}
			});
			
			$('.panel').addClass('on').css('display', 'block');
		}, function(data) {
			alert("실패");
			return;
		});
	},
	goViewPage : function(seq, pageIndex){
		$("#ID_VOC").val(seq);
		$("#pageIndex").val(pageIndex);
		
		document.opForm.action = "vocView.do";
		document.opForm.submit();
	},
	

	
};

$(document).ready(function() {

	// Change phone call customer service time
	var startTime = 20240115070000;
	var currentContent = $('#tel_consultant_time').text();
	if (todayH >= startTime) {		
		$('#tel_consultant_time').text(currentContent + '평일, 09:00~18:00');
	} else {
		$('#tel_consultant_time').text(currentContent + '365일, 07:00~22:00');
	}
	
	$(window).on("load", function() {
	});
});












