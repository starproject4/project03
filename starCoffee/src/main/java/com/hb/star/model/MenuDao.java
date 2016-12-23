package com.hb.star.model;

import java.util.List;

public interface MenuDao {
	List selectAll();
	List selectCoffee(String coffee);
	List selectBeverage(String beverage);
	List selectFood(String food);
	void insertOne(MenuVo bean);
	MenuVo selectOne(int no);
	void deleteOne(int no);
}
