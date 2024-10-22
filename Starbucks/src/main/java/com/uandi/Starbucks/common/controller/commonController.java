package com.uandi.Starbucks.common.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uandi.Starbucks.common.model.service.CommonService;
import com.uandi.Starbucks.common.vo.RegionalClassification;

@Controller
public class commonController {
	@Autowired
	CommonService commonService;
	Map<String, Object> map = new HashMap<String, Object>();

	@ResponseBody
	@PostMapping(value = "common/getGugunList.do")
	public ArrayList<RegionalClassification> getGugunList(String sido_cd) {
		String sidoCode = sido_cd;
		ArrayList<RegionalClassification> list = commonService.getGugunList(sidoCode);
		return list;
	}
	@ResponseBody
	@PostMapping(value = "common/getStoreList.do")
	public ArrayList<RegionalClassification> getStoreList(
			@RequestParam(value ="gugun",required = false,defaultValue = "")String gugun, 
			@RequestParam(value ="store_nm",required = false,defaultValue = "")String store_nm) {
		System.out.println(gugun);
		System.out.println(store_nm);
		ArrayList<RegionalClassification> list = null;
		list = commonService.getStoreList(gugun,store_nm);
		return list;
	}
	
}
