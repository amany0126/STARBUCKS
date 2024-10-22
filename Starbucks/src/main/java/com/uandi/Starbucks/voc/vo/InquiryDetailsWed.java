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
public class InquiryDetailsWed {

	private String CD_VISIT_STR;
	private String CD_STORE; 
	private String DS_CSTMR_CTTPC;
    private String DS_NO_BILL;
    private String ERECEIPT_CONTENT;
    private String FIND_STORE_YN; 
    private String CD_GOODS;
    private String TP_CSTMR_RPLY;
    private String payment_info;
    private String how;
    private String DS_VOC_TITLE; 
    private String DS_VOC_CN; 
    private String CD_VOC_CAUSE_2;
}

