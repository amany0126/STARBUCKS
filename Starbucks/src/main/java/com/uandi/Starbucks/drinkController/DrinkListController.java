package com.uandi.Starbucks.drinkController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uandi.Starbucks.drinkMapper.DrinkMapper;
import com.uandi.Starbucks.drinkVODTO.CateDrinkDTO;
import com.uandi.Starbucks.drinkVODTO.CategoryDTO;
import com.uandi.Starbucks.drinkVODTO.DrinkDTO;
import com.uandi.Starbucks.drinkVODTO.DrinkListDTO;
import com.uandi.Starbucks.drinkVODTO.DrinkSizeDTO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class DrinkListController {

    @Autowired
    private DrinkMapper drinkMapper;

    
    private void addCommonData(Model model) {
        List<DrinkListDTO> drinkList = drinkMapper.DrinkList();
        List<CategoryDTO> categoryList = drinkMapper.getCategory();
        model.addAttribute("drinkList", drinkList);
        model.addAttribute("categoryList", categoryList);
    }

    @GetMapping(value = "/menu/drink_list.do")
    public String drinkList(Model model) {
        
    	addCommonData(model);
        return "/menu/drinkList";
    }

    @GetMapping("/menu/drinkView.do")
    public String viewDrinkDetail(@RequestParam("prod") String prodId, Model model) {
        // 음료 상세 정보 가져오기
        DrinkDTO drink = drinkMapper.getDrinkById(prodId);
        DrinkSizeDTO size = drinkMapper.getDrinkSize(prodId);

        
        addCommonData(model);

        model.addAttribute("drinkInfo", drink);
        model.addAttribute("size", size);

        return "/menu/drinkView";
    }
    
    @PostMapping("/selectCate")
    @ResponseBody
    public List<CateDrinkDTO> selectedCate(@RequestParam("selectedId") int categoryId) {
        
    	
        List<CateDrinkDTO> selectDrink = drinkMapper.getCateDrink(categoryId);
        

        
        return selectDrink;
    }
    
 

    
}