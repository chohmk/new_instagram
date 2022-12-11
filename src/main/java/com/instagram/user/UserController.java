package com.instagram.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	/**
	 * 로그인 뷰
	 * @return
	 */
	// 로그인 화면
	@RequestMapping("/sign_in_view")
	public String signInView() {
		return "user/signIn";
	}
	
	// 회원가입 화면
	@RequestMapping("/sign_up_view")
	public String signUpView() {
		return "user/signUp";
	}
	
}
