package com.uandi.Starbucks.common.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.common.model.mapper.CommonMapper;
import com.uandi.Starbucks.common.vo.RegionalClassification;

@Service
public class CommonService {
	
	@Autowired
	CommonMapper commonMapper;
	
	public ArrayList<RegionalClassification> getGugunList(String sidoCode) {
		return commonMapper.getGugunList(sidoCode);
	}

	public ArrayList<RegionalClassification> getStoreList(String gugun, String store_nm) {
		return commonMapper.getStoreList(gugun,store_nm);
	}

}
