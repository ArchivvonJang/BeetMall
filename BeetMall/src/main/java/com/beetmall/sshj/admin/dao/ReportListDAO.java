package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.ReportListVO;
import com.beetmall.sshj.admin.vo.adminkPageSearchVO;

public interface ReportListDAO {

	public int csreportOnetotalRecord(adminkPageSearchVO pageVO);

	public List<ReportListVO> csreportList(adminkPageSearchVO pageVO);

	public ReportListVO csreportSelect(int reportnum);

	public List<ReportListVO> modalSelect(String reporteduser);

	public List<ReportListVO> modalSelect2(String reporteduser);

	public int memberstop(int stopdate, String userid);

	public int memberTableStop(String userid);

	public void UpdateMember();
	
}
