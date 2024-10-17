$(document).ready(function () {
	if (document.referrer == "") {
		Cookies.deleteCookie("MENU_TAB");
		Cookies.deleteCookie("MENU_CATE");
		Cookies.deleteCookie("MENU_OPT");
	}
	
	setTimeout(function () {
		var MENU_TAB  = Cookies.getCookie("MENU_TAB");
		var MENU_CATE = Cookies.getCookie("MENU_CATE");
		var MENU_OPT  = Cookies.getCookie("MENU_OPT");
		

		console.log("CURRENT MENU_TAB : " + MENU_TAB);
		console.log("CURRENT MENU_CATE : " + MENU_CATE);
		console.log("CURRENT MENU_OPT : " + MENU_OPT);
		
		
		if (MENU_TAB != ""
			&& MENU_TAB != "0") {
			$(".product_kind_tab a").eq(MENU_TAB).trigger("click");
		}
		
		if (MENU_CATE != "") {
			$(".product_select_wrap input:checkbox:checked").prop("checked", false).trigger("change");
			$.each(MENU_CATE.split("|"), function (_nIdx, _strCate) {
				$(".product_select_wrap input#" + _strCate).trigger("click").prop("checked", true).trigger("change");
			});
		}
		
		if (MENU_OPT != "") {
			$(".opt input:checkbox:checked").prop("checked", false).trigger("change");
			$.each(MENU_OPT.split("|"), function (_nIdx, _strOpt) {
				$(".opt input#" + _strOpt).trigger("click").prop("checked", true).trigger("change");
			});
		}
		
		// 탭
		$(".product_kind_tab a").on("click", function () {
			var index = $(".product_kind_tab a").index( $(this) );
			
			console.log("SAVE MENU_TAB " + index);
			Cookies.setCookie("MENU_TAB", index, 1);
		});
		
		// 카테고리
		$(".product_select_wrap input:checkbox").on("change", function () {
			var MENU_CATE = "";
			
			$(".product_select_wrap input:checkbox:checked").each(function () {
				if (MENU_CATE != "") {
					MENU_CATE += "|";
				}
				
				MENU_CATE += $(this).attr("id");
			});
			
			console.log("SAVE MENU_CATE " + MENU_CATE);
			Cookies.setCookie("MENU_CATE", MENU_CATE, 1);
		});
		
		// 상세분류
		$(".opt input:checkbox").on("change", function () {
			var MENU_OPT = "";
			
			$(".opt input:checkbox:checked").each(function () {
				if (MENU_OPT != "") {
					MENU_OPT += "|";
				}
				
				MENU_OPT += $(this).attr("id");
			});
			
			//console.log("SAVE MENU_OPT " + MENU_OPT);
			Cookies.setCookie("MENU_OPT", MENU_OPT, 1);
		});
	}, 1000);
});