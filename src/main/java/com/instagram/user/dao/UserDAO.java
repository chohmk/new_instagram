package com.instagram.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.instagram.user.model.User;

@Repository
public interface UserDAO {
	// 아이디 중복확인
	public boolean existLoginId(String loginId);
	
	// 회원가입 insert
	public void insertUser(
			@Param("loginId") String loginId, 
			@Param("password") String password, 
			@Param("name") String name,
			@Param("email") String email);
	
	// 로그인 select
	public User selectUserByLoginIdAndPassword(
			@Param("loginId") String loginId, 
			@Param("password") String password);
}
