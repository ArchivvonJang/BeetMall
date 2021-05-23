package com.beetmall.sshj.seller.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFDataFormat;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.seller.service.SellerSalesService;
import com.beetmall.sshj.seller.vo.SellerMainVO;
import com.beetmall.sshj.seller.vo.SellerSalesVO;



@Controller
public class SellerSalesController {
	@Autowired
	SellerSalesService service;
	
	@RequestMapping("/sellerSales")
	public ModelAndView seller_sales(HttpSession session, SellerSalesVO vo) {
		ModelAndView mav = new ModelAndView();
		String userid=  (String)session.getAttribute("logId");
		vo.setUserid(userid);
		SellerSalesVO todayList = service.todayList(vo);
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		if(userid != null) {
		
		// 데이터 보내기
		// 1. 3개월치 전체 레코드수
		int check = service.sellerSalesAllDataLength(vo.getUserid());
		
		vo.setTotalRecord(check);
		if(check != 0) {
			mav.addObject("pageVO",vo);
		}
		// 2. 3개월치 엑셀 데이터
		List<SellerSalesVO> list = service.sellerSalesAllData(vo);
		if(list.size() != 0) {
			for(int i =0; i < list.size(); i++) {
				SellerSalesVO editVO = list.get(i);
				editVO.setOrderquantityStr(formatter.format(editVO.getOrderquantity()));
				editVO.setOrderpriceStr(formatter.format(editVO.getOrderprice()));
				editVO.setRealpaymentStr(formatter.format(editVO.getRealpayment()));
				mav.addObject("mainData", list);
			}
		}
		
		
		// 3. 3개월치 차트 데이터
		int num[] = {2,1,0};
		long totalMoney = 0;
		// data를 꺼내온다
		for (int j=0; j<num.length; j++) {
			List<SellerSalesVO> result = service.sellerSalesChartData(num[j], userid);
			
			int resultSum = 0;
			if(result.size() != 0) {
				for(int i =0; i < result.size(); i++) {
					resultSum += result.get(i).getPayData();
				}
				totalMoney += resultSum;
				String resultStr = formatter.format(resultSum);
				String resultDate = result.get(0).getMonthData()+"월";
				
				mav.addObject("resultStr"+j,resultSum);
				mav.addObject("resultDate"+j,resultDate);
			} else {
				mav.addObject("resultStr"+j,0);
				mav.addObject("resultDate"+j,0);
			}
		}
		
		mav.addObject("totalMoney",formatter.format(totalMoney));
		
		// 오늘의 매출 보내기
		mav.addObject("todayMoney", formatter.format(todayList.getTodayMoney()));
		mav.addObject("todayNum", formatter.format(todayList.getTodayNum()));
		
		// 카테고리 리스트를 불러와서 리스트에 담는다
		mav.addObject("cateList",service.allCategoryList());		
		mav.setViewName("seller/sellerSales");
		} else {
			mav.setViewName("home");
		}
		return mav;
	}
	
	@RequestMapping("/getListData") // seller_sales 페이지에서 차트와 엑셀 데이터 가져오는 dao
	@ResponseBody
	public List<SellerSalesVO> getListData(SellerSalesVO vo,HttpSession session) {
		vo.setUserid((String)session.getAttribute("logId"));
		
		return service.salesDataList(vo);
	}
	
	@RequestMapping("/excel_down") // 엑셀 다운
	@ResponseBody
	public void excel_down(HttpServletRequest req) {
		String[] excelData = req.getParameterValues("excelData");
		int i = 0;
		// 엑셀파일 생성
		XSSFWorkbook xssfwb =  new XSSFWorkbook();
			// 폰트설정
			XSSFFont font = xssfwb.createFont();
			font.setFontName("나눔고딕");
			font.setFontHeightInPoints((short)24);
			font.setBold(true);
			
			// 셀 스타일
			CellStyle style = xssfwb.createCellStyle();
			style.setFont(font);
			style.setFillForegroundColor(IndexedColors.LIME.getIndex());
			style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			style.setVerticalAlignment(VerticalAlignment.CENTER);
			style.setAlignment(HorizontalAlignment.CENTER);
		
		// 시트생성
		XSSFSheet xssfsheet = xssfwb.createSheet("BEETMALL 매출관리");
		// 컬럼 넓이 설정
		xssfsheet.setColumnWidth(0, 6000);
		xssfsheet.setColumnWidth(1, 6000);
		xssfsheet.setColumnWidth(2, 6000);
		xssfsheet.setColumnWidth(3, 6000);
		xssfsheet.setColumnWidth(4, 6000);
		xssfsheet.setColumnWidth(5, 6000);
		
		// 0 ~ 1행 : 2개 행,  0 ~ 5열 : 6개 까지 병합한다.
		xssfsheet.addMergedRegion(new CellRangeAddress(0,1,0,5));
		xssfsheet.autoSizeColumn(100);
		
		// 타이틀 생성
		XSSFRow xssfrow = xssfsheet.createRow(i++);
		XSSFCell xssfcell = xssfrow.createCell(0);
		xssfcell.setCellStyle(style);
		xssfcell.setCellValue("BEETMALL 매출내역");
		
		xssfsheet.createRow(i++);
		xssfrow = xssfsheet.createRow(i++); // 빈행 추가
			
			//테이블 폰트 설정
			XSSFFont tableFont = xssfwb.createFont();
			tableFont.setFontHeightInPoints((short)14);
			tableFont.setFontName("나눔고딕");
			
		// 테이블 스타일 설정
		CellStyle tableStyle = xssfwb.createCellStyle();
		XSSFDataFormat format = xssfwb.createDataFormat();
		tableStyle.setDataFormat(format.getFormat("#,##0"));
		tableStyle.setAlignment(HorizontalAlignment.CENTER);
		tableStyle.setFont(tableFont);
		tableStyle.setBorderBottom(BorderStyle.THIN);
		tableStyle.setBorderLeft(BorderStyle.THIN);
		tableStyle.setBorderRight(BorderStyle.THIN);
		tableStyle.setBorderTop(BorderStyle.THIN);
		
		xssfrow = xssfsheet.createRow(i++);
		xssfcell = xssfrow.createCell(0);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("상품번호");
		xssfcell = xssfrow.createCell(1);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("매출일자");
		xssfcell = xssfrow.createCell(2);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("상품명");
		xssfcell = xssfrow.createCell(3);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("수량");
		xssfcell = xssfrow.createCell(4);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("단가");
		xssfcell = xssfrow.createCell(5);
		xssfcell.setCellStyle(tableStyle);
		xssfcell.setCellValue("매출금액");
		
		for(int index = 0; index < (excelData.length/6); index++) {
			xssfrow = xssfsheet.createRow(i++);// 한 행을 만든다.
			if(index==0) {
				for(int j = 0; j < 6; j++) {// 엑셀 데이터를 한 행에 6개씩 넣는다.
					xssfcell = xssfrow.createCell(j);
					xssfcell.setCellStyle(tableStyle);
					xssfcell.setCellValue(excelData[j]);
				}
			}else {
				for(int j = 0; j < 6; j++) {// 엑셀 데이터를 한 행에 6개씩 넣는다.
					xssfcell = xssfrow.createCell(j);
					xssfcell.setCellStyle(tableStyle);
					xssfcell.setCellValue(excelData[(6*index)+j]);
				}
			}
		}
		String downloadFoler = System.getProperty("user.home")+"\\Downloads";
		File mk = new File(downloadFoler);
		mk.mkdirs();
		System.out.println("파일 다운로드 위치 ===>"+System.getProperty("user.home")+"\\Downloads\\BEETMALL 매출관리.xlsx");
		File file = new File(System.getProperty("user.home")+"\\Downloads\\BEETMALL 매출관리.xlsx");
		try {
			// file의 경로로 엑셀 outputStream
			FileOutputStream fos = new FileOutputStream(file);
			// 파일출력
			xssfwb.write(fos);
			fos.close();
			System.out.println("엑셀파일 생성 성공");
		} catch(Exception e) {
			System.out.println("엑셀파일 생성 오류");
			e.printStackTrace();
		}
		
	}
	
}