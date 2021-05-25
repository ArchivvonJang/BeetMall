package com.beetmall.sshj.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.Admin_MemberSellerDAO;
import com.beetmall.sshj.admin.vo.Admin_MemberSellerVO;

@Service
public class Admin_MemberSellerServiceImp implements Admin_MemberSellerService{

	@Autowired
	Admin_MemberSellerDAO dao;


	@Override
	public Admin_MemberSellerVO getReportData(String userid) {
		// TODO Auto-generated method stub
		return dao.getReportData(userid);
	}

	@Override
	public Long selectFavorite(String userid) {
		// TODO Auto-generated method stub
		return dao.selectFavorite(userid);
	}

	@Override
	public Admin_MemberSellerVO getSellerData(String userid) {
		// TODO Auto-generated method stub
		return dao.getSellerData(userid);
	}

	@Override
	public Admin_MemberSellerVO discountSelect(String userid) {
		// TODO Auto-generated method stub
		return dao.discountSelect(userid);
	}

	@Override
	public Integer regiapprovalOkUpdate(String userid) {
		// TODO Auto-generated method stub
		return dao.regiapprovalOkUpdate(userid);
	}

	@Override
	public Integer regiapprovalNoUpdate(String userid) {
		// TODO Auto-generated method stub
		return dao.regiapprovalNoUpdate(userid);
	}


}
