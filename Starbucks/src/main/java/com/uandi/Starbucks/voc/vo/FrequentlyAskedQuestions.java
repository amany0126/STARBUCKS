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
public class FrequentlyAskedQuestions {
	private String code_NAME;
	private String ds_QESTN;
	private String ds_ANSWER;
	private String id_VOC_FAQ;
}
