package com.uandi.Starbucks.drinkMapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.uandi.Starbucks.drinkVODTO.CategoryDTO;
import com.uandi.Starbucks.drinkVODTO.DrinkListDTO;

@Mapper
public interface DrinkMapper {

	// 음료이름과 이미지, 신규,시즌정보
	List<DrinkListDTO> DrinkList();
	
	// 음료 카테고리
	List<CategoryDTO> getCategory();
}
