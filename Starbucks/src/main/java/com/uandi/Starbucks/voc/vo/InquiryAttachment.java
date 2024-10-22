package com.uandi.Starbucks.voc.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class InquiryAttachment {
	private String originName;
	private String changName;
	private String status;
	private String inquiryNo;
}
