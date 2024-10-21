package com.uandi.Starbucks.voc.model.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.MainCategoriesOfInquiries;

@Mapper
public interface VocMapper {
	
	 ArrayList<MainCategoriesOfInquiries> getVocDemandCodeList();

	ArrayList<InquiryCategory> getVocCauseCodeList(String parentCode);

	ArrayList<DrinkProduct> getVocProdCodeList(String NM_PRDUCT);


}
