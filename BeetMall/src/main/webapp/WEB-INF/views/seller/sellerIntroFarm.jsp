<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/xstyle_sellerIntroFarm.css">
<section>
	<%@include file="/WEB-INF/views/inc/sellerHeader.jsp" %>	
	<!-- 본문 시작 -->
	<article>
		<div class="seller_title">농장소개</div>
	
		<form method="post" action="sellerEditFarm" id="info_frm">
			<input type="hidden" name="storenum" value="${result.storenum}"/>
			<!-- info 컨테이너 묶기 width:700px 고정 -->
			<div id="info_container">
				<div id="profile_box">
					<img src="<%=request.getContextPath()%>/resources/img/${result.farmprofile}"/>
					<div id="farmname" name="farmname">${result.farmname }</div>
					<div>
						방문 : ${result.farmvisitor}명 | 농장 즐겨찾기 : ${favorite}명
					</div>
				</div><!-- profile_box 종료 -->
				<div id="farm_info">
					<div>INFO</div>
					<div>${result.farmintro }</div>
				</div><!-- farm_info 종료 -->
				<div id="farm_contact">
					<div>CONTACT</div>
					<div id="contact_content">
						<b>스토어 정보</b>
						<div><span>상호명</span><p name="storename">${result.storename }</p></div>
						<div><span>대표자</span><p name="sellername">${result.sellername}</p></div>
						<div><span>사업자등록번호</span><p name="sellerreginum">${result.sellerreginum }</p></div>
						<div><span>사업장 소재지</span><p name="storeaddr">${result.storeaddr} ${result.storedetailaddr }</p></div>
						<div><span>예금주</span><p name="bankname">${result.bankname }</p></div>
						<div><span>은행명</span><p name="bank">${result.bank }</p></div>
						<div><span>계좌번호</span><p name="bankaccount">${result.bankaccount }</p></div>
						<div><span>E-Mail</span><p name="storeemail">${result.storeemail }</p></div>
					</div>
				</div><!-- farm_contact 종료 -->
				<!-- 대표메뉴 -->
				<div id="farm_repMenu">
					<input type="hidden" name="productnum" value="${result.productnum }"/> 
					<div>대표메뉴</div>
					<div id="repMenu_content">
						<img src="<%=request.getContextPath()%>/resources/img/${result.thumbimg}" name="thumbimg"/>
						<div>
							<div>${result.productname }</div>
							<div>
								<div>
									<div>${ result1.saleprice }원 할인</div>
									<div>${ result.productprice- result1.saleprice }원</div>
								</div>
								<div>${ result.productprice }원</div>
							</div>
						</div>
					</div>
				</div>
			</div><!-- info_container 종료 -->
			<div>
				<input type="submit" id="edit_btn" value="수정하기"/>
			</div>
		</form>
	</article>
</section>