package com.uandi.Starbucks.drinkController;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.uandi.Starbucks.drinkMapper.DrinkMapper;
import com.uandi.Starbucks.drinkVODTO.CategoryDTO;
import com.uandi.Starbucks.drinkVODTO.DrinkListDTO;

@Controller
public class DrinkListController {
	
	@Autowired
	private DrinkMapper drinkMapper;
	
	@GetMapping(value = "/menu/drink_list.do")
	public String drinkList(Model model) {
		
		List<DrinkListDTO> drinkList = drinkMapper.DrinkList();
		List<CategoryDTO> categoryList = drinkMapper.getCategory();
        model.addAttribute("drinkList", drinkList);
        model.addAttribute("categoryList", categoryList);
		
		return "/menu/drinkList";
	}
	
	
	
}
