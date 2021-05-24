package com.beetmall.sshj.admin.vo;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.Admin_MemberDAO;
import com.beetmall.sshj.admin.service.Admin_MemberService;
import com.beetmall.sshj.admin.vo.Admin_MemberVO;
import com.beetmall.sshj.admin.vo.Admin_Member_PageVO;
import com.beetmall.sshj.admin.vo.Admin_PointVO;
import com.beetmall.sshj.admin.vo.Admin_WishVO;
import com.beetmall.sshj.admin.vo.Admin_farmVO;

public class Admin_MemberSellerVO  {
	private String productname;
	private String userid;
	private long storenum;
	private String storename;
	private String sellername;
	private long sellerreginum;
	private String sellerregiimg;
	private String regiapproval;
	private String regiapprovaldate;
	private String storezipcode;
	private String storeaddr;
	private String storedetailaddr;
	private String farmvisitor;
	private String saleselect;
	private String bank;
	private String bankname;
	private long bankaccount;
	private long productpice;
	private String thumimg;
	private String username;
	private String userphone;
	private String useremail;
	private String userzipcode;
	private String useraddr;
	private String userdetailaddr;
	private String birthday;
	private String joindate;
	private int reportcount;
	private int reportdate;
	
	public String getStoredetailaddr() {
		return storedetailaddr;
	}
	public void setStoredetailaddr(String storedetailaddr) {
		this.storedetailaddr = storedetailaddr;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public long getBankaccount() {
		return bankaccount;
	}
	public void setBankaccount(long bankaccount) {
		this.bankaccount = bankaccount;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public long getStorenum() {
		return storenum;
	}
	public void setStorenum(long storenum) {
		this.storenum = storenum;
	}
	public String getSellername() {
		return sellername;
	}
	public void setSellername(String sellername) {
		this.sellername = sellername;
	}
	public long getSellerreginum() {
		return sellerreginum;
	}
	public void setSellerreginum(long sellerreginum) {
		this.sellerreginum = sellerreginum;
	}
	public String getSellerregiimg() {
		return sellerregiimg;
	}
	public void setSellerregiimg(String sellerregiimg) {
		this.sellerregiimg = sellerregiimg;
	}
	public String getRegiapproval() {
		return regiapproval;
	}
	public void setRegiapproval(String regiapproval) {
		this.regiapproval = regiapproval;
	}
	public String getRegiapprovaldate() {
		return regiapprovaldate;
	}
	public void setRegiapprovaldate(String regiapprovaldate) {
		this.regiapprovaldate = regiapprovaldate;
	}
	public String getStorezipcode() {
		return storezipcode;
	}
	public void setStorezipcode(String storezipcode) {
		this.storezipcode = storezipcode;
	}
	public String getStoreaddr() {
		return storeaddr;
	}
	public void setStoreaddr(String storeaddr) {
		this.storeaddr = storeaddr;
	}
	public String getFarmvisitor() {
		return farmvisitor;
	}
	public void setFarmvisitor(String farmvisitor) {
		this.farmvisitor = farmvisitor;
	}
	public String getSaleselect() {
		return saleselect;
	}
	public void setSaleselect(String saleselect) {
		this.saleselect = saleselect;
	}
	public long getProductpice() {
		return productpice;
	}
	public void setProductpice(long productpice) {
		this.productpice = productpice;
	}
	public String getThumimg() {
		return thumimg;
	}
	public void setThumimg(String thumimg) {
		this.thumimg = thumimg;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserzipcode() {
		return userzipcode;
	}
	public void setUserzipcode(String userzipcode) {
		this.userzipcode = userzipcode;
	}
	public String getUseraddr() {
		return useraddr;
	}
	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}
	public String getUserdetailaddr() {
		return userdetailaddr;
	}
	public void setUserdetailaddr(String userdetailaddr) {
		this.userdetailaddr = userdetailaddr;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public int getReportcount() {
		return reportcount;
	}
	public void setReportcount(int reportcount) {
		this.reportcount = reportcount;
	}
	public int getReportdate() {
		return reportdate;
	}
	public void setReportdate(int reportdate) {
		this.reportdate = reportdate;
	}
	
	
	

}
