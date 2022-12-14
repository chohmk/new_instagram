package com.instagram.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDAO {
	// 글쓰기
	public int insertPost(
			@Param("userId") int userId, 
			@Param("content")String content, 
			@Param("imagePath")String imagePath);
}
