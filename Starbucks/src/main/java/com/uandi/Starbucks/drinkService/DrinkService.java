package com.uandi.Starbucks.drinkService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.drinkMapper.DrinkMapper;

@Service
public class DrinkService {
	
	@Autowired
	private DrinkMapper drinkMapper;
	

	
}
