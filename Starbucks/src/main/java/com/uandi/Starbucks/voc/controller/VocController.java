package com.uandi.Starbucks.voc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uandi.Starbucks.common.vo.RegionalClassification;
import com.uandi.Starbucks.voc.model.service.VocService;
import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.MainCategoriesOfInquiries;

@Controller
public class VocController {
	@Autowired
	VocService vocService;
	Map<String, Object> map = new HashMap<String, Object>();

	@ResponseBody
	@PostMapping(value = "voc/getVocCauseCodeList.do")
	public Map<String, Object> getVocDemandCodeList(String PARENT_CODE) {
		String ParentCode = PARENT_CODE;
		
		System.out.println(PARENT_CODE);
		if(PARENT_CODE !=null && PARENT_CODE !="") {
			ArrayList<InquiryCategory> list = vocService.getVocCauseCodeList(ParentCode);
			map.put("list", list);
		}else {
			ArrayList<MainCategoriesOfInquiries> list = vocService.getVocDemandCodeList();
			map.put("list", list);
		}
		

		

		return map;
	}
	@ResponseBody
	@PostMapping(value = "voc/getVocProdCodeList.do")
	public  Map<String, Object>getVocProdCodeList(
			String NM_PRDUCT) {
		System.out.println(NM_PRDUCT);
		ArrayList<DrinkProduct> list = null;
		list = vocService.getVocProdCodeList(NM_PRDUCT);
		map.put("list", list);
		System.out.println("11");
		return map;
	}

	
}