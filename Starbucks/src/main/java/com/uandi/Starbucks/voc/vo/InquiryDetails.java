package com.uandi.Starbucks.voc.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class InquiryDetails {
	private int inquiryNo;
	private String paymentInformation;
	private String inquiryTitle;
	private String inquiryContenet;
	private String inquiryDate;
	private String phoneNumder;
	private String inquiryStatus;
	private String categoryCode;
	private int memberNo;
	private String storeCode;
	private String inquiryItem;
	private int id_VOC;
	private String ds_VOC_TITLE;
	private String yn_ANSWER;
	private String cd_VOC_STTUS;
	private String dt_VOC_REG;
	private String file_YN;
}
