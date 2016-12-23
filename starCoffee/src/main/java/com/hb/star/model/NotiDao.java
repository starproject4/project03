package com.hb.star.model;

import java.util.List;

public interface NotiDao {
	List selectAll();
	List selectAll2(int no);
	void insertOne(NotiVo bean);
	NotiVo selectOne(int no);
	void updateCount(NotiVo bean);
	void updateOne(NotiVo bean);
	void deleteOne(int no);
}
