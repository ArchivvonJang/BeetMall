package com.beetmall.sshj.seller.dao;

import java.util.List;

import com.beetmall.sshj.seller.vo.SellerReviewVO;

public interface SellerReviewDAO {
	// 토탈 데이터 알기위한 기능 
	public List<SellerReviewVO> breakdown(String userid);
	// 리뷰 리스트 rownum (paging용) 가져오기
	public List<SellerReviewVO> reviewlist(SellerReviewVO vo);
}
