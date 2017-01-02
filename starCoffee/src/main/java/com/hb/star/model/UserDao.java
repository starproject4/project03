package com.hb.star.model;

public interface UserDao {

	void insertOne(UserVo bean);
	UserVo selectOne(String id);
	UserVo login(UserVo bean);
	void updateOne(UserVo bean);
	void deleteOne(String id);
	UserVo searchid(UserVo bean);
	void updatePoint(UserVo bean);
	
	
}
