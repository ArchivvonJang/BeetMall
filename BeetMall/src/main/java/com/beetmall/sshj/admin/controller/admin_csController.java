package com.beetmall.sshj.admin.controller;

import javax.inject.Inject; 
 
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.Admin_BoardService; 
import com.beetmall.sshj.admin.vo.Admin_Board_PageVO; 

@Controller
public class admin_csController {

	@Inject
	Admin_BoardService adminService;
	 
	/////////////////////////고객센터//////////////////////
 @RequestMapping("/csQuestionBrowse")
	public ModelAndView csQuestionBrowse() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csQuestionBrowse");
		return mav;
	}
 @RequestMapping("/csFAQ")
	public ModelAndView csFAQ() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csFAQ");
		return mav;
	}
 
 @RequestMapping("/csFAQWrite")
	public ModelAndView csFAQWrite() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csFAQWrite");
		return mav;
	}
	//채팅 보기
	@RequestMapping("/csChat")
	public ModelAndView csChat() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csChat");
		return mav;
	} 
	
	//신고 목록 보기
	@RequestMapping("/csreportListA")
	public ModelAndView csreportListA() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csreportListA");
		return mav;
	} 
	//신고 채팅 보기
	@RequestMapping("/csReportChat")
	public ModelAndView csReportChat() {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		mav.addObject("list", adminService.noticeBoardList(pageVO));
		mav.setViewName("/admin/csReportChat");
		return mav;
	} 
	
	
	
	
	
	
  
}