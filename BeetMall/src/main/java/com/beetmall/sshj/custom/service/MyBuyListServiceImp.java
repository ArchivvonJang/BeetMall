package com.beetmall.sshj.custom.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.custom.dao.MyBuyListDAO;
import com.beetmall.sshj.custom.vo.ClaimVO;
import com.beetmall.sshj.custom.vo.MyBuyListVO;
import com.beetmall.sshj.custom.vo.ReviewVO;

@Service
public class MyBuyListServiceImp implements MyBuyListService {
	@Inject
	MyBuyListDAO mybuylistDAO;

	@Override
	public List<MyBuyListVO> selectBuyList(String userid) {
		
		return mybuylistDAO.selectBuyList(userid);
	}

	@Override
	public int orderCommit(int ordernum) {
		
		return mybuylistDAO.orderCommit(ordernum);
	}

	@Override
	public int orderCancel(int ordernum) {
		return mybuylistDAO.orderCancel(ordernum);
	}

	@Override
	public int orderCancelOk(int ordernum) {
		
		return mybuylistDAO.orderCancelOk(ordernum);
	}

	@Override
	public int reviewCheck(int ordernum) {
		
		return mybuylistDAO.reviewCheck(ordernum);
	}

	@Override
	public MyBuyListVO selectReviewProduct(int productnum) {
		
		return mybuylistDAO.selectReviewProduct(productnum);
	}

	@Override
	public int reviewWrite(ReviewVO vo) {
		
		return mybuylistDAO.reviewWrite(vo);
	}

	@Override
	public ReviewVO reviewSelect(int ordernum) {
		
		return mybuylistDAO.reviewSelect(ordernum);
	}

	@Override
	public int reviewgoodCount(int reviewnum) {
		
		return mybuylistDAO.reviewgoodCount(reviewnum);
	}

	@Override
	public int reviewcheck(int reviewnum, String userid) {
		
		return mybuylistDAO.reviewcheck(reviewnum, userid);
	}

	@Override
	public int reviewGoodCancel(int reviewnum, String userid) {
		
		return mybuylistDAO.reviewGoodCancel(reviewnum, userid);
	}

	@Override
	public int reviewGood(int reviewnum, String userid) {
		
		return mybuylistDAO.reviewGood(reviewnum, userid);
	}

	@Override
	public int claimInsert(ClaimVO vo) {
		
		return mybuylistDAO.claimInsert(vo);
	}

	@Override
	public int claimUpdate(int ordernum, String status) {
		
		return mybuylistDAO.claimUpdate(ordernum, status);
	}

	@Override
	public ClaimVO returnSelect(int ordernum) {
		
		return mybuylistDAO.returnSelect(ordernum);
	}	

}
