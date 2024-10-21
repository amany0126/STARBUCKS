package com.uandi.Starbucks.common.model.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.uandi.Starbucks.common.vo.RegionalClassification;

@Mapper
public interface CommonMapper {

	ArrayList<RegionalClassification> getGugunList(String sidoCode);

	ArrayList<RegionalClassification> getStoreList(String gugun, String store_nm);

}
