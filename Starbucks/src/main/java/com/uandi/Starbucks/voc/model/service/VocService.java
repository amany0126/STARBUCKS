package com.uandi.Starbucks.voc.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.voc.model.mapper.VocMapper;
import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.FrequentlyAskedQuestions;
import com.uandi.Starbucks.voc.vo.InquiryAttachment;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.InquiryDetails;
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

	public int insertInquiry(InquiryDetails id) {
		return vocMapper.insertInquiry(id);
	}

	public int insertInquiryAttachment(InquiryAttachment files) {
		return vocMapper.insertInquiryAttachment(files);
	}

	public  int CntVocT(int memberNo) {
		return vocMapper.CntVocT(memberNo);
	}

	public  int CntVocC(int memberNo) {
		return vocMapper.CntVocC(memberNo);
	}

	public ArrayList<InquiryDetails> getVocMyList(InquiryDetails i) {
		return vocMapper.getVocMyList(i);
	}

	public int selectInquiryCount(InquiryDetails i) {
		return vocMapper.selectInquiryCount(i);
	}

	public ArrayList<FrequentlyAskedQuestions> getFaqBest5() {
		return vocMapper.getFaqBest5();
	}

	public ArrayList<FrequentlyAskedQuestions> updateFaqViewCount(int iD_VOC_FAQ) {
		return vocMapper.updateFaqViewCount(iD_VOC_FAQ);
	}
	

}
