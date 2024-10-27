package com.uandi.Starbucks.my.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.my.model.mapper.MyMapper;
import com.uandi.Starbucks.voc.vo.InquiryDetails;

@Service
public class MyService {
	
	@Autowired
	MyMapper myMapper;


}
