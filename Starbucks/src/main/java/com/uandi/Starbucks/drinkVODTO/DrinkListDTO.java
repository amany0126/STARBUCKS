package com.uandi.Starbucks.drinkVODTO;

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
public class DrinkListDTO {
	private int drinkNo;
	private String name;
	private String newProduct;
	private String season;
	private int categoryId;
	private String URL;
	private String categoryName;
	private String kcal;
	private String sodium;
	private String satFat;
	private String sugars;
	private String protein;
	private String caffeine;
}
