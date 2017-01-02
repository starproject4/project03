package com.hb.star.model;

import java.util.List;

public interface HistoryDao {
	
	void historyInsert(HistoryVo bean2);
	List selectAll();
	void deleteOne(int no);
	
}
