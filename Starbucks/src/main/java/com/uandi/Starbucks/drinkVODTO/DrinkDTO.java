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
public class DrinkDTO {
	private int drinkNo;
	private String name;
	private String engName;
	private String content;
	private String description;
	private String URL;
	private String kcal;
	private String sodium;
	private String satFat;
	private String sugars;
	private String protein;
	private String caffeine;
	private String allergy;
	
}
