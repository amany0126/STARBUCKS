package com.uandi.Starbucks.voc.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.voc.model.mapper.VocMapper;
import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.MainCategoriesOfInquiries;

@Service
public class VocService {
	
	@Autowired
	VocMapper vocMapper;

	public ArrayList<MainCategoriesOfInquiries> getVocDemandCodeList() {
		return vocMapper.getVocDemandCodeList();
	}

	public ArrayList<InquiryCategory> getVocCauseCodeList(String parentCode) {
		return vocMapper.getVocCauseCodeList(parentCode);
	}

	public ArrayList<DrinkProduct> getVocProdCodeList(String NM_PRDUCT) {
		return vocMapper.getVocProdCodeList(NM_PRDUCT);
	}
	

}
