package com.instagram.post.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.instagram.common.FileManagerService;
import com.instagram.post.dao.PostDAO;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private FileManagerService fileManager;
	
	// 글쓰기 
	public int addPost(int userId, String userLoginId, String content, MultipartFile file) {
		String imagePath = null;
		// 이미지 파일이 비어있지 않으면 fileManager.saveFile에 저장
		if (file != null) {
			imagePath = fileManager.saveFile(userLoginId, file);
		}
		return postDAO.insertPost(userId, content, imagePath);
	}
}
