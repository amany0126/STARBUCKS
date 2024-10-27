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
}
