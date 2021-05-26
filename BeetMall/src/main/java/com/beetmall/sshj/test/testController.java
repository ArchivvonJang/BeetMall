package com.beetmall.sshj.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class testController {
	
	@RequestMapping("chargeAPI")
	public String chargeAPI() {
		return "mypages/chargeAPI";
	}
	
	
//	윤주///////////////////////////////////////////////////////////////
/*	
	@RequestMapping("recipeHome")
	public String recipeHome() {
		return "custom/recipeHome";
	}
	
	@RequestMapping("recipeView")
	public String recipeView() {
		return "custom/recipeView";
	}
	
	@RequestMapping("recipeWrite")
	public String recipeWrite() {
		return "custom/recipeWrite";
	}
	
	@RequestMapping("/customMyrecipe")
	public String customMyrecipe() {
		return "custom/customMyrecipe";
	}
	
	
	@RequestMapping("/custominfo")
	public String customInfo() {
		return "custom/custominfo";
	}
	
	@RequestMapping("/custominfoWrite")
	public String custominfoWrite() {
		return "custom/custominfoWrite";
	}
	
	@RequestMapping("/custominfoView")
	public String customInfoView() {
		return "custom/custominfoView";
	}
	*/
	@RequestMapping("/customBuyConfirm")
	public String customBuyConfirm() {
		return "custom/customBuyConfirm";
	}

	

	

	
	@RequestMapping("/custompay")
	public String custompay() {
		return "custom/custompay";
	}


// 윤수///////////////////////////////////////////////////////////////
	@RequestMapping("error")	// 에러페이지
	public String errer() {
		return "etc/error";
	}
	
	/*
	@RequestMapping("myinfoEdit")
	public String myInfoEdit() {	// 내 정보
		return "mypages/myInfoEdit";
	}
	*/
	
}
