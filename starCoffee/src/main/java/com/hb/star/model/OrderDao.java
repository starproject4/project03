package com.hb.star.model;

import java.util.List;

public interface OrderDao {

	void insertMycoffee(OrderVo bean);
	List selectAll();
	void deleteMycoffee(int mypk);

	

}
