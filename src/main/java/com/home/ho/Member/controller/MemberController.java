package com.home.ho.Member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.home.ho.Member.model.exception.MemberException;
import com.home.ho.Member.model.service.MemberService;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService meService;
	
	//회원 가입 뷰
	@RequestMapping("mejoinView.me")
	public String mejoinView(){
		return "member_join";
	}
	
	//회원 가입
	@RequestMapping("join.me")
	public String join(@RequestParam("name") String name, @RequestParam("id") String id,
			@RequestParam("password") String password, @RequestParam("phone") String phone, HttpServletRequest request){
		
		Map<String, Object> join = new HashMap<String, Object>();
		join.put("name", name);
		join.put("id", id);
		join.put("password", password);
		join.put("phone", phone);
		
		int result = meService.join(join);
		
		if(result > 0) {
			return "redirect:home";
		
			}else {
				throw new MemberException("회원가입 실패");
		}
		
		
		
	}

}
