package com.uandi.Starbucks.my.model.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.InquiryAttachment;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.InquiryDetails;
import com.uandi.Starbucks.voc.vo.MainCategoriesOfInquiries;

@Mapper
public interface MyMapper {
	

	ArrayList<InquiryDetails> getVocMyList(InquiryDetails i);


}
