$(document).unbind("load").ready(
		function() {
			$("#msr_bar01").val($("#searchKeyword").val());
			var cd_voc_cause_1 = '';
			var cd_voc_cause_2 = '';
			
			$.coustomer.tmplete1();
			//$.coustomer.tmplete2(); 
			$.coustomer.getList(true);			
			$.coustomer.getList2($('#cate_cd').val(), '');		//BEST5
			$.coustomer.faqList($('#cate_cd').val(), '', $("#searchKeyword").val(), 1,  $("#seq").val());
			
			//검색 엔터키
			$("#msr_bar01").unbind("keydown").keydown(function(e){
		    	if (e.keyCode == 13) 
		    	{
					if(pattern_check("#msr_bar01" ,   	  "검색어를  입력하세요." , "허용되지 않은 문자입니다."	, getPattern('BASIC3') )==false){return;}
				
					var sText = $("INPUT[name=msr_bar01]").val();
					searchKeyword = sText;
					$.coustomer.faqList($('#msr_faq_01').val(), '', searchKeyword, 1);
					
		    	}			
			});
			
		});

(function($) {
	$.coustomer = {
		tmplete1 : function() {

			var tmplete = "";

			tmplete = tmplete
					+ '<option value="${$item.cate_cd()}">${$item.cate_nm()}</option>';

			$.template("cateListTmp", tmplete);
		},
		tmplete2 : function() {

			var tmplete = "";
			
			
			tmplete = tmplete+ '<li><dl>'; 
			tmplete = tmplete+ 	'<dt><span class="s1">Q${$item.index()}</span></dt>'; 
			tmplete = tmplete+ 	'<a href="javascript:faqView(\'${$item.cd_voc_cause_1()}\',\''+ searchKeyword+ '\',\''+ page+ '\', \'${$item.id_voc_faq()}\');""><dd>${$item.title()}</dd></a>'; 
			tmplete = tmplete+ '</dl></li>'; 
			
			$.template("bestListTmp", tmplete);	
			
		}
		// 분류별 키워드
		,
		getList : function(bool) {

			__ajaxCall("/voc/getVocCauseCodeList.do", {}, true, "json", "post",
					function(data) {
						console.log(data);

						$("#msr_faq_01, #csi_faq_01").html("");
						$("#msr_faq_01, #csi_faq_01").append("<option value=''>전체</option>");	
						$.tmpl("cateListTmp", data.list, {
							cate_nm : function() {
								var cate_nm = this.data.code_NAME;
								return cate_nm;
							},
							cate_cd : function() {
								var cate_cd = this.data.code;
								return cate_cd;
							}
						}).appendTo("#msr_faq_01, #csi_faq_01");
						
						/*for(var i=1; i < 9; i++){
							$('#tab-'+i).text(data.list[i-1].code_NAME);
							//$('#tab-'+i).val(data.list[i-1].code);
							$('#cause_code_'+i).val(data.list[i-1].code);
							$('#tab-'+i).attr("onclick", "faqCause('"+data.list[i-1].code+"',+"+i+")");
						}*/
						
						// 대분류 유형 하드코딩 시작
						
						$('#tab-1').text(data.list[5].code_NAME);
					      $('#cause_code_1').val(data.list[5].code);
					      $('#tab-1').attr("onclick", "faqCause('"+data.list[5].code+"',+"+1+")");
					      if(data.list[5].code_NAME.length > 10){
					       $('#tab-1').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-2').text(data.list[0].code_NAME);
					      $('#cause_code_2').val(data.list[0].code);
					      $('#tab-2').attr("onclick", "faqCause('"+data.list[0].code+"',+"+2+")");
					      if(data.list[0].code_NAME.length > 10){
					       $('#tab-2').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-3').text(data.list[1].code_NAME);
					      $('#cause_code_3').val(data.list[1].code);
					      $('#tab-3').attr("onclick", "faqCause('"+data.list[1].code+"',+"+3+")");
					      if(data.list[1].code_NAME.length > 10){
					       $('#tab-3').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-4').text(data.list[2].code_NAME);
					      $('#cause_code_4').val(data.list[2].code);
					      $('#tab-4').attr("onclick", "faqCause('"+data.list[2].code+"',+"+4+")");
					      if(data.list[2].code_NAME.length > 10){
					       $('#tab-4').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-5').text(data.list[3].code_NAME);
					      $('#cause_code_5').val(data.list[3].code);
					      $('#tab-5').attr("onclick", "faqCause('"+data.list[3].code+"',+"+5+")");
					      if(data.list[3].code_NAME.length > 10){
					       $('#tab-5').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-6').text(data.list[4].code_NAME);
					      $('#cause_code_6').val(data.list[4].code);
					      $('#tab-6').attr("onclick", "faqCause('"+data.list[4].code+"',+"+6+")");
					      if(data.list[4].code_NAME.length > 10){
					       $('#tab-6').attr("style", "font-size:14px;");
					      }
					      
					      $('#tab-7').text(data.list[6].code_NAME);
					      $('#cause_code_7').val(data.list[6].code);
					      $('#tab-7').attr("onclick", "faqCause('"+data.list[6].code+"',+"+7+")");
					      if(data.list[6].code_NAME.length > 10){
					       $('#tab-7').attr("style", "font-size:14px;");
					      }
						
						//$('#tab-8').text('기타');						
						//$('#tab-8').attr("onclick", "faqCause('008',+"+8+")");
						
						// 대분류 유형 하드코딩 끝
						
						if(bool) {
							if( $('#cate_cd').val() != '000') {
								$('#msr_faq_01').val($('#cate_cd').val());	
							}			

						}
						// 셀렉트 박스 label에 값 넣어주기  sd
						//$("#msr_faq_01, #csi_faq_01").trigger("change");

					}, function() {

					});
			var num=1;
			var idx=1;
			$("#msr_faq_01").bind("change",function() {
				
				$("#msr_faq_01 option[value=026]").remove();	//VOC제외는 나오지 않게
				$("#msr_faq_01 option[value=027]").remove();	//VOC제외는 나오지 않게
				
				console.log("faq Change");
				var index = $("#msr_faq_01 option").index( $("#msr_faq_01 option:selected") );
				var cate_cd = $("#msr_faq_01 option").eq(index).val();

				var cd_voc_cause_1 = $("#msr_faq_01").val() == '' ? '000' : $("#msr_faq_01").val();
				var cd_voc_cause_2 = '';	//$("#msr_faq_02").val();
				
				//$.coustomer.getList2(cd_voc_cause_1, cd_voc_cause_2);
				//$.coustomer.faqList(cd_voc_cause_1, cd_voc_cause_2, $('#msr_bar01').val(), 1, $('#seq').val());
				
				$('#seq').val('');
//
//				var thisVal = cate_cd;
//				if (thisVal == "")
//				{
//					$("#msr_faq_02").empty();
//					$("#msr_faq_02").append('<option value="">중분류</option>');
//					$("#msr_faq_02").trigger("change");
//					
//					var sText = $("INPUT[name=msr_bar01]").val();
//					searchKeyword = sText;
//
//					var cd_voc_cause_1 = $("#msr_faq_01").val();
//					var cd_voc_cause_2 = $("#msr_faq_02").val();
//					
//					$.coustomer.faqList('', '',  searchKeyword, 1);
//				}
//				else
//				{
//					var option 	= '<option value="\${code}">\${code_NAME}</option>';
//					$.template( "subUiCtrl", option );
//					
//					__ajaxCall("/voc/getVocCauseCodeList.do",{"PARENT_CODE":thisVal}, true, "json", "post",
//						function(data)
//						{
//							$("#msr_faq_02").empty();
//							$("#msr_faq_02").append('<option value="">중분류</option>');
//							if ( data.list.length > 0)
//							{
//								$.tmpl( "subUiCtrl" , data.list, {}).appendTo( "#msr_faq_02" );
//							}
//							$("#msr_faq_02").trigger("change");
//						}
//						,
//						function()
//						{
//							
//						}
//					);    				    			
//				}

			});
			/*$('#cause_list').on("click", function() {
				var cd_voc_cause_1 = $(this).children('input').val();
				console.log(cd_voc_cause_1);
				
			});*/
			
			
			$(".sch_btn").on("click", function() {
				var sText = $("INPUT[name=msr_bar01]").val();
				searchKeyword = sText;

				var cd_voc_cause_1 = $("#msr_faq_01").val();
				//var cd_voc_cause_2 = $("#msr_faq_02").val();
				
				$.coustomer.faqList($('#msr_faq_01').val(), '',  searchKeyword, 1);
				
			});

		}
		// 자주하는 질문 Best5
		,
		getList2 : function(cd_voc_cause_1, cd_voc_cause_2 ) {

			var param = {
				 CD_VOC_CAUSE_1 : cd_voc_cause_1
//				, CD_VOC_CAUSE_2 : cd_voc_cause_2
			};

			__ajaxCall("/voc/getFaqBest5.do", param, true, "json", "post",
					function(data) {
						console.log(data);

						var index = 0;
						$("#bestList1").html("");
						$("#bestList2").html("");
//
//						$.tmpl("faqListTemplate", data.list, {
//							cd_voc_cause_1 : function() {
//								return this.data.cd_VOC_CAUSE_1;
//							},
//							cd_voc_cause_2 : function() {
//								return this.data.cd_VOC_CAUSE_2;
//							},
//							index : function() {
//								index += 1;
//								return index;
//							},
//							title : function() {
//								var title = this.data.ds_QESTN;
//								return title;
//							},
//							id_voc_faq : function() {
//								return this.data.id_VOC_FAQ;
//							}
//
//						}).appendTo("#bestList");
//
						
						for(var i = 0; i < 10; i++){
							$('.tag_category').eq(i+1).text('#'+data.list[i].code_NAME);
							//$('#id_voc_faq-'+i).val(data.list[i].id_VOC_FAQ);
							$('.faq_best10').children().eq(i+1).children('a').prop('href','javascript:faqView("","",1,"'+data.list[i].id_VOC_FAQ+'");');
							$('.answer').eq(i).html(data.list[i].ds_ANSWER.replace(/\\n/g,'<br />'));
							$('.question').eq(i+1).text(data.list[i].ds_QESTN);
						}
						
						/*var data1 = new Array();
						var data2 = new Array();
						for(var i=0;i<data.list.length;i++) {
							if(i > 4) break;
							data1.push(data.list[i]);							
						}
						for(var i=5;i<data.list.length;i++) {
							data2.push(data.list[i]);
						}
						
						$( "#faqListTemplate" ).tmpl( data1, {
							cd_voc_cause_1 : function() {
								return this.data.cd_VOC_CAUSE_1;
							},
							cd_voc_cause_2 : function() {
								return this.data.cd_VOC_CAUSE_2;
							},
							index : function() {
								index += 1;
								return index;
							},
							c_index : function() {
								return index;
							},
							title : function() {
								var title = this.data.ds_QESTN;
								return title;
							},
							id_voc_faq : function() {
								return this.data.id_VOC_FAQ;
						}} ).appendTo("#bestList1");

						$( "#faqListTemplate" ).tmpl( data2, {
							cd_voc_cause_1 : function() {
								return this.data.cd_VOC_CAUSE_1;
							},
							cd_voc_cause_2 : function() {
								return this.data.cd_VOC_CAUSE_2;
							},
							index : function() {
								index += 1;
								return index;
							},
							c_index : function() {
								return index;
							},
							title : function() {
								var title = this.data.ds_QESTN;
								return title;
							},
							id_voc_faq : function() {
								return this.data.id_VOC_FAQ;
						}} ).appendTo("#bestList2");*/

					}, function() {
					});
		}
		// faq리스트
		,
		faqList : function(cd_voc_cause_1, cd_voc_cause_2, searchKeyword, page, seq) {
			
			if( cd_voc_cause_1 == 'null' || cd_voc_cause_1 == '' || cd_voc_cause_1 == '000' ) {
				cd_voc_cause_1 = '';
			}
			if( seq == '0000000000' ) {
				seq = '';
			}
			var param = {
				"CD_VOC_CAUSE_1" : cd_voc_cause_1,
				"CD_VOC_CAUSE_2" : cd_voc_cause_2,
				"KEYWORD" : searchKeyword,
				"pageIndex" : page,
				"ID_VOC_FAQ" : seq,
			};

			var html = "";
			
			/*html += '<div class="accrodion-wrap" id="accrodionWrap">';*/
			html += '<h3>';
			html += '<span class="tag_category">[ ${nm_VOC_CAUSE} ] </span>';
			html += '<span class="tit">${ds_QESTN}</span>';
			html += '</h3>';
			html += '<div>'
			html += '<p>'
			html += "{{html ds_ANSWER.replace(/\\n/g,'<br />')}}";
			html += '</p>';
			html += '</div>'
			/*html += '</div>';*/
			/*html += '<dt class="ajaxFaqList"  data-index="${rnum}" data-seq="${id_VOC_FAQ}">';
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
			html += "					{{html ds_ANSWER.replace(/\\n/g,'<br />')}}"; 
			html += '				</dd>';
			html += '			</dl>';
			html += '		</li>';
			html += '	</ul>';
			html += '</dd>';*/

			$.template("faqListBox", html);

			__ajaxCall("/voc/getFaqList.do", param, true, "json", "post",
					function(_response) {
						
						if (_response.totCnt > 0) {
							
							//$(".csi_faq_wrap").empty();
							//$("#accrodionWrap").empty();
							$("#tabs-all").empty();
							$("#tabs-all").show();
							
							$('#tabs-all').append('<div class="accrodion-wrap" id="accrodionWrap">');
							$('#tabs-all').append('</div>');
							
							//$.tmpl("faqListBox", _response.list, {}).appendTo(".csi_faq_wrap");
							$.tmpl("faqListBox", _response.list, {}).appendTo("#accrodionWrap");							
							
							$(".accrodion-wrap").accordion({
					            collapsible:true,
					            active:false,
					            heightStyle: "content"
					        });
							
							$(".csi_faq_wrap p").each(function() {
								$(this).addClass("tt");
							});
							$(".ajaxFaqList").on("click",
									$.coustomer.listBoxSelected);

							$('.csi_faq_wrap > dt').eq(0).toggleClass("on");
							$('.csi_faq_wrap > dd').eq(0).show();
							
							//console.log(_response.list[0].ds_ANSWER);							
							//$('#body_content').html(_response.list[0].ds_ANSWER);
							
						} else {
							//$('#body_content').text('');
							$(".csi_faq_wrap").empty();
						}

						var $page = page;
						var $TotalCount = _response.totCnt;
						var $PageSize = 10;

						console.log(" _response.total : " + _response.totCnt);

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
										$.coustomer.faqList(cd_voc_cause_1, cd_voc_cause_2, searchKeyword, page);
									}
								});
						
					}, function(_error) {
					});

		},
		listBoxSelected : function(e) {

			if ($(this).hasClass("on") == false) {
				addFaqHitCnt( $(this).data("seq") );
			}
			
			$(this).toggleClass('on');
			$(this).next().slideToggle();
			
			

		}
	}
})(jQuery);

$(".btn_srch").on("click", function() {
	var sText = $("INPUT[name=msr_bar01]").val();
	searchKeyword = sText;

	var cd_voc_cause_1 = $("#msr_faq_01").val();
	//var cd_voc_cause_2 = $("#msr_faq_02").val();
	
	$.coustomer.faqList($('#msr_faq_01').val(), '',  searchKeyword, 1);
});

function faqCause(i, code){
	$('#msr_faq_01').val(i);
	var compare = '00'+code;
	var sText = $("INPUT[name=msr_bar01]").val();
	searchKeyword = sText;
	
	if($('.btn_check-all').hasClass('on')) {
		$('.btn_check-all').toggleClass('on');
	} else {
		
	}
	
	if($('#tab-'+code).parent().parent('li').hasClass('ui-tabs-active ui-state-active')){
		$('#cause_list').children('li').removeClass('ui-state-hover');
		$('.btn_check-all').toggleClass('on');
		$.coustomer.faqList('', '', '', 1,'');
		$('#tabs-all').attr("display", "show");
	} else {
		$.coustomer.faqList(i, '', searchKeyword, 1,'');
	}
}

function faqView(cd_voc_cause_1, searchKeyword, page, seq) {
	if( cd_voc_cause_1 == 'null' ) {
		cd_voc_cause_1 = '';
	}
	if( seq == '0000000000' ) {
		seq = '';
	}
	addFaqHitCnt(seq);
	
	$("#msr_bar01").val("");
	$.coustomer.faqList('', '', searchKeyword, 0, seq);
}

function addFaqHitCnt(_nSeq) {
	var objParam = {
		ID_VOC_FAQ : _nSeq
	};
	
	__ajaxCall("/voc/updateFaqViewCount.do", objParam, true, "json", "post"
		,function (_response) {}
		,function (_error) {}
	);
}

//FAQ 중분류 선택
$("#msr_faq_02").on("change", function(){
	
	var cd_voc_cause_1 = $("#msr_faq_01").val();
	var cd_voc_cause_2 = '';	//$("#msr_faq_02").val();
	
	if (cd_voc_cause_2 == "")
	{
		return;
	}
	else
	{

		$.coustomer.getList2(cd_voc_cause_1, cd_voc_cause_2);
		$.coustomer.faqList(cd_voc_cause_1, cd_voc_cause_2, '', 1);
		
//		if(num > 1){
//				$("#msr_bar01").val("");
//				$.coustomer.faqList(cate_cd, "", page, $("#seq").val());
//			}else{
//				$.coustomer.faqList(cate_cd, $("#searchKeyword").val(), page, $("#seq").val());
//			}
//			$("#seq").val("0");
//			num++;
//		});
	//				    			
	}
			
});

