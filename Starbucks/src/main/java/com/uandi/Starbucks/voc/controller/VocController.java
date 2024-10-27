package com.uandi.Starbucks.voc.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.uandi.Starbucks.voc.model.service.VocService;
import com.uandi.Starbucks.voc.vo.DrinkProduct;
import com.uandi.Starbucks.voc.vo.InquiryAttachment;
import com.uandi.Starbucks.voc.vo.InquiryCategory;
import com.uandi.Starbucks.voc.vo.InquiryDetails;
import com.uandi.Starbucks.voc.vo.InquiryDetailsWed;
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
	
	@PostMapping(value = "voc/registWebHomePageVoc.do")
	public  String registWebHomePageVoc(InquiryDetailsWed idw,MultipartHttpServletRequest file,HttpSession session ) {
	
	System.out.println("데이터 입력시작");		
	System.out.println(idw.getCD_VISIT_STR()); // 매장 코드 요놈 
	System.out.println(idw.getCD_STORE()); // 전자영수증시 매장코드
	System.out.println(idw.getDS_CSTMR_CTTPC()); // 전화번호 풀 주소
	System.out.println(idw.getDS_NO_BILL()); // 직접입력한 결제정보
	System.out.println(idw.getERECEIPT_CONTENT()); // 전자 영수증 결제 정보
	System.out.println(idw.getFIND_STORE_YN()); // 매장 찾기 선택여부
	System.out.println(idw.getCD_GOODS()); // 음료코드
	System.out.println(idw.getTP_CSTMR_RPLY()); // 상품 찾기 정보
	System.out.println(idw.getPayment_info()); // 결제 정보 / find_ebill : 전자영수증 ,insert: 직접입력, nothing: 해당없음
	System.out.println(idw.getHow()); // 매장 방문 여부
	System.out.println(idw.getDS_VOC_TITLE()); // 제목
	System.out.println(idw.getDS_VOC_CN()); // 내용
	System.out.println(idw.getCD_VOC_CAUSE_2()); // 카테고리 중분류
	
	ArrayList<MultipartFile> fileNameList = new ArrayList<MultipartFile>();
	
	for (List<MultipartFile> fileValue : file.getMultiFileMap().values()) {
		fileNameList.addAll(fileValue);
	}
	
	for (int i = 0; i < fileNameList.size(); i++) {
		System.out.println(fileNameList.get(i));
		System.out.println(fileNameList.get(i).getOriginalFilename());
		
	}
	InquiryDetails id = new InquiryDetails();
	id.setMemberNo(1);
	
	id.setInquiryTitle(idw.getDS_VOC_TITLE());
	id.setInquiryContenet(idw.getDS_VOC_CN());
	id.setCategoryCode(idw.getCD_VOC_CAUSE_2());
	id.setPhoneNumder(idw.getDS_CSTMR_CTTPC());
	
	if(idw.getFIND_STORE_YN().equals("Y")) {
		id.setStoreCode(idw.getCD_VISIT_STR());
	}else {
		id.setStoreCode("");
	}
		
	if(idw.getTP_CSTMR_RPLY().equals("Y")) {
		id.setInquiryItem(idw.getCD_GOODS());
	}else {
		id.setInquiryItem("");
		
	}
	
	if(idw.getPayment_info().equals("find_ebill")) {
		id.setPaymentInformation(idw.getERECEIPT_CONTENT());
		id.setStoreCode(idw.getCD_STORE());
	}else if (idw.getPayment_info().equals("insert")) {
		id.setPaymentInformation(idw.getDS_NO_BILL());
	}else {
		id.setPaymentInformation("");
	}
	System.out.println(id);
	
	int Result1 = 0;
	int Result2 = 1;
	 Result1 = vocService.insertInquiry(id);
	
		if(Result1>=1) {
			for (int i = 0; i < fileNameList.size(); i++) {
				InquiryAttachment files = new InquiryAttachment();
				files.setOriginName(fileNameList.get(i).getOriginalFilename());
				String changName = savePath(fileNameList.get(i), session);
				files.setChangName(changName);
				
				Result2 += vocService.insertInquiryAttachment(files);
				
			}
		}
		return "util/util_Index";
	}
public String savePath(MultipartFile upfile, HttpSession session) {
		
		// 1.원본파일명 가져오기
		String originName = upfile.getOriginalFilename();
		
		// 2. 파일 등록시간 구하기
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 3. 추가 난수 구하기
		int ranNum = (int)(Math.random()*90000000+10000000);
		
		// 4. 파일 확장자 구하기
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 5. 2~4 값 합치기
		String changName = currentTime + ranNum + ext;
		
		// 6. 업로드 하고자 하는 파일 경로 지정
		String savePath = session.getServletContext().getRealPath("/resources/Inquiry_file/");
		
		// 7. 경로와 수정파일명 합체 후 파일을 업로드해주기
		try {
			upfile.transferTo(new File(savePath+changName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return changName;
		
	}
}