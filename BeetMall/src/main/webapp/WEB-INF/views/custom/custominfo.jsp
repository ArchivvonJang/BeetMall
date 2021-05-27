<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/inc/menu_c.jspf"%>

<style>
	*{margin:0px; padding:0px; list-style-type :none; font-family: 'Nanum Gothic', sans-serif;}
  #cMyPageLeft {
	display: block;
}
	a:hover, a:active, a:visited, a:link {
   		color: black;
   }
   .wrapTitle{
	   margin-top: 50px;
	   height: 60px;
	   line-height: 60px;
	   /* color: #fff; */
	   color:black;
	   font-weight:bold;
	   font-size:2em;
	   text-indent: 0.4em;
	   /* background-color: rgb(224,102,102); */
	   margin-bottom:30px;
	}
	ul, li, a{
		list-style: none; padding:0; margin:0;
	}
/* ---------------상세정보2 --------------------------------------------------------------------------------- */
#productInfoPage2 {
	width: 100%;
}


#productInfoPage2>#retitle,#qtitle {
	width: 100%;
	float: left;
	margin-top: 30px;
	margin-bottom: 50px;
	padding-left:20px;
	color:gray;
	font-size:14px;
}



#qnaViewbox{
	width:100%;
	float:left;
	padding-left:30px;
	padding-bottom:10px;
	border-bottom:1px solid #ddd;
	margin-bottom:20px;
	display: none;
}

/* 리뷰이미지 설정*/
#reviewImgbox {
   width:100%;
   float: left;
   padding-left:50px;
}

#reviewImgbox>img {
	width:600px;
	height: 400px;
	float: left;
}


#reviewtxtbox,#qnatxtbox {
    padding-left:15px;
	width:1050px;
	height: 200px;
	line-height: 100px;
	float: left;
	padding-left:50px;
	overflow:auto;
}

#qnatxtbox2{
   padding-left:15px;
	width:1050px;
	height: 150px;
	line-height: 100px;
	float: left;
	padding-left:50px;
	background-color:#eee;
	overflow:auto;
}

#nonebox{
float:left;
 width:100%;
 height:2px;
 line-height:2px;
 margin-top:50px;
 margin-bottom:150px;
}
	/* ---------------상세정보박스3시잗-------------------- */
#productInfoPage3 {
   float:left;
	width: 100%;
	height:900px;
}

#productInfoPage3>#qtitle {
	width: 100%;
	float: left;
	margin-top:5px;
	
}

#qnaTitle {
	width: 100%;
	margin-bottom: 10px;
	color:gray;
}


#qnaList {
	width: 100%;
	height: 60px;
	margin-bottom: 10px;
	padding-bottom:10px;
}

#qnaTitle>li{
	text-align: center;
	
}

.qnaViewbtn{
overflow:hidden;
}

#qnaTitle>li, #qnaList>li {
	float: left;
	border-bottom: 1px solid #ddd;
	height: 60px;
	line-height: 50px;
	padding-bottom:10px;
	font-size:17px;
	
}

#qnaTitle>li:nth-child(6n+1), #qnaList>li:nth-child(6n+1) {
	text-align:center;
	width: 50px;
}

#qnaTitle>li:nth-child(6n+2), #qnaList>li:nth-child(6n+2) {
	text-align:center;
	width: 300px;
}


#qnaTitle>li:nth-child(6n+3){
	text-align:center;
}
#qnaTitle>li:nth-child(6n+3), #qnaList>li:nth-child(6n+3) {
	width: 430px;
	
}


#qnaTitle>li:nth-child(6n+4), #qnaList>li:nth-child(6n+4) {
	text-align:center;
	width: 130px;
}

#qnaTitle>li:nth-child(6n+5), #qnaList>li:nth-child(6n+5) {
	text-align:center;
	width: 70px;
}

#qnaTitle>li:nth-child(6n+6), #qnaList>li:nth-child(6n+6) {
	text-align:center;
	width: 100px;
}

#qnaList a:link, #qnaList a:active, #qnaList a:visited, #qnaList a:hover{
	color:black;
}
#qnaList>li>img {
	width: 20px;
	height: 20px;
}

<!-- 문의 후기 버튼 -->

#reviewWriteBtn {
	width:100%;
	padding-left:980px;
	padding-right:10px;
}

#reviewWriteBtn>input {
	float: right;
	width: 80px;
	height: 25px;
	line-height: 20px;
	margin-left:1000px;
	margin-bottom:20px;
	
	padding: 3px 5px;
	color: #666666;
	border-radius: 1px;
	background:#eee;
	text-align: center;
 	text-decoration: none;
	display: inline-block;
	border:1px solid #ddd;
	
}

#qnaWriteBtn>input {
	float: right;
	width: 80px;
	height: 25px;
	line-height: 20px;
}

#productPageDiv {
	font-size: 17px;
}

#productInfoPage {
	padding-left: 0px;
}

	
	
	
	
	
	#infoBtn1,#infoBtn2,#infoBtn3{
	   border-radius: 1px;	 	
	   background-color:#eee;	
	}
	
	#infoBtn1:hover,#infoBtn2:hover,#infoBtn3:hover{
	
	background-color:#FF5430;	
	color:white;
	
	}
	
	
	
	#infoBtn1>a:active,#infoBtn2>a:active,#infoBtn3>a:active{
	outline: 0;
	}
	
	#productBtn>.btn{
	background-color:#eee;	
	height:30px;
	}
	#productBtn>.btn:hover{
	background-color:#FF5430;
	color:white;
	}


#productBtn{
    padding-left: 0px;
}

	/*페이징*/
	.paging,th{
		margin-top:30px;
		text-align:center;
	}
	.wrap_paging, .option_change, table, fieldset, .paging{
		width:100%;
	}
	
	.cs_message {
	    margin: 0 auto;
	    font-size: 15px;
	    width: 90%;
	    margin-bottom: 20px;
	}
	select {
	    float: right;
	    height: 28px;
	    border: 1px solid lightgray;
	    border-radius: 8px;
	    font-family: inherit;
	    font-size: inherit;
	    line-height: inherit;
	    /* text-transform: none; */
	    color: inherit;
	    font: inherit;
	    margin: 0;
	}
	
	.answer_span {
	    background-color: rgb(252,118,45);
	    border-radius: 10px;
	    color: white;
	    padding: 5px;
	    font-size: 14px;
	}
	
	#no_answer {
	    color: gray;
	    background: gray;
	    color: white;
	    padding: 5px;
	}
	
	/* 페이징처리부분 */
	.page_wrap {
		text-align:center;
		font-size:0;
		padding-bottom: 30px;
		padding-top: 50px;
	
	}
	.page_nation {
		display:inline-block;
	}
	.page_nation .none {
		display:none;
	}
	.page_nation a {
		display:block;
		margin:0 3px;
		float:left;
		border:1px solid #e6e6e6;
		width:35px;
		height:35px;
		line-height:35px;
		text-align:center;
		background-color:#fff;
		font-size:13px;
		color:#999999;
		text-decoration:none;
	}
	.page_nation .arrow {
		border:1px solid #ccc;
	}
	.page_nation .pprev {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_pprev.png') no-repeat center center;
		margin-left:0;
	}
	.page_nation .prev {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_prev.png') no-repeat center center;
		margin-right:7px;
	}
	.page_nation .next {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_next.png') no-repeat center center;
		margin-left:7px;
	}
	.page_nation .nnext {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_nnext.png') no-repeat center center;
		margin-right:0;
	}
	.page_nation a.active {
		background-color:#42454c;
		color:#fff;
		border:1px solid #42454c;
	}
	/* 페이징처리끝 */
	
	
</style>

<script>
	//답변완료 답변대기중 select 

	
	


$(function(){	
	var reporteduser=0;
	var reportboardnum=0;
	
	$(document).on('click','.chatHeaderSpan', function(){
		
		var scroll = window.scrollY;
		if(scroll>255){
			$("#reportDiv").css("top",scroll+250);
		}else {
			$("#reportDiv").css("top",scroll+250);
		}
		
	
		$("#reportDiv").css("display","block");
		reporteduser=$(this).parent().next().val();
		reportboardnum=$(this).parent().next().next().val();
		//alert("id"+reporteduser+"num"+reportboardnum);
		$("#reporteduser").val(reporteduser);
		$("#reportboardnum").val(reportboardnum);
		
	   	$(document).on('click','input[value=신고하기]', function(){	// 신고창 여는 부분(여기서 신고할 유저아이디, 신고할 글번호 세팅해줌)
			//alert("id2"+reporteduser+"num2"+reportboardnum);
			//var reporteduser=$(this).parent().parent().parent().prev().children().eq(0).value();
			//var reportboardnum=$(this).parent().parent().parent().prev().children().eq(1).value();
			
			//alert(reporteduser+reportboardnum+여기까지옴);
			$("#reportDiv").css("display","block");
	
	      });
		
		
		$(".reportsubmit").click(function(){	// 신고처리하는 ajax부분
			
			var formdata = $(".reportForm").serialize();
			//alert("formdata === "+formdata);
			$.ajax({
				url: "customreport",
				type : "POST",
				cache:false,
				data:formdata,
				success:function(result){
					console.log(result);
					if(result == 1){
						alert('고객님의 신고가 접수되었습니다');
						location.href="custominfo";
					}else if(result != 1){
						alert('신고에 실패했습니다. error_code : 176');
						$("#reportcontent").val('');
						$("#reportDiv").css("display","none");
					}
				}, error:function(error){
					console.log(error);
				}
			})
			$("#reportcontent").val('');
			$("#reportDiv").css("display","none");
		})
		
		
		
		$("#reportClose").click(function(){			// 신고  닫기 부분 
		$("#reportcontent").val('');
		$("#reportDiv").css("display","none");
	     })
	     
	     
	  
    });

	

	
	
		$(".qnaViewbtn").click(function() {
		    		
		  			$(this).parent().next().next().toggle(
		  					
		  				function(){
		  					$(this).parent().next().css("display", "block"); 
		  				},
		  				function(){
		  					$(this).parent().next().css("display", "hide"); 
		  					
		  				}
		  			);
		  		});
		
		

	
	///////////////////비공개처리 업데이트////////////////
/*	
	$(".lockbtn").click(function(data) {
	
		
		if(confirm("게시글을 비공개 처리하시겠습니까?")){			
			
		var num = $(this).parent().next("input[name=inum]").val() ;

		//var num=$(data).parent().next().val();
		var url = "lockinfo";
			
			console.log(url,num);
			
			$.ajax({
				url:url,
				data:num,
				success:function(result){
					console.log('비공개처리 성공---> ');
					alert(num);
				},error:function(e){
					console.log('비공개처리 실패---> ');
				}
			})
		}
		
		
	});

	*/
	/*
	function lockf(this){
		if(confirm("게시글을 비공개 처리하시겠습니까?")){			
			
			
			var num=$(data).parent().next().val();
			var url = "lockinfo";
				
				console.log(url,num);
				
				$.ajax({
					url:url,
					data:num,
					success:function(result){
						console.log('비공개처리 성공---> ');
						alert(num);
					},error:function(e){
						console.log('비공개처리 실패---> ');
					}
				})
			}
			
	
	}
	*/

	
});
	
	
	
	
</script>

<div class="section">
	<div class="main">
		<div class="wrapTitle">${logId}님의 문의 내역입니다.</div>
		<div class="cs_message">
				질문 전 자주묻는 질문을 먼저 확인해주세요. <br/>
				<a href="<%=request.getContextPath() %>/FAQBoard"><span id="link">자주묻는질문 바로가기 >></span></a><br/>
				<br/>
				고객님께서 비트몰에 문의하신 내용을 확인할 수 있습니다.<br/>
		</div>
		
			<!--문의하기 버튼 -->
			<a href="<%=request.getContextPath()%>/mybuyList" class="btn" id="ask_btn">문의하기</a>
			
	
			
			
				<!-- -------------------------------------상세정보박스3  시작-------------------------------------------------------- -->
		<div id="productInfoPage">
			<div id="productInfoPage3">

				<div id="qtitle"> </div>
					

				<ul id="qnaTitle">
					<li><b>번호</b></li>
					<li><b>상품이름</b></li>
					<li><b>제목</b></li>
					<li><b>작성일</b></li>
					<li><b>공개여부</b></li>
					<li><b>답변여부</b></li>
				</ul>

		   <c:if test="${empty faqlist}">
		       <div id="noreview">작성된 문의가 없습니다.</div>
		   </c:if>
		   
           <c:if test="${not empty faqlist}">
           <c:forEach var="qlist" items="${faqlist}">   
               	<input type=hidden value="${qlist.selleruserid}"> 
				<input type=hidden value="${qlist.qnum}">
				 
				<ul id="qnaList">
					 <li>${qlist.qnum}</li> <!-- 문의 숫자 -->		
					 <li><a href="customproduct?productnum=${qlist.productnum}">${qlist.productname}</a></li><!-- 상품이름 -->	
					 <li class="qnaViewbtn">${qlist.qtitle}</li>
					 <li>${qlist.qwritedate}</li><!-- 날짜 -->
				  <c:if test="${qlist.qopen==0}">	<!-- 비공개일경우 그림표시 -->
					 <li class="unlockbtn"><img src="img/ciconlock2.png"></li>
				  </c:if>
				  <c:if test="${qlist.qopen==1}">	 <!-- 공개일경우 그림표시 -->
					 <li class="lockbtn"><img src="img/ciconlock.png"></li>
				  </c:if>
				  
				    <c:if test="${qlist.qanswer==null}">
				  		<li>미답변</li>
				  	</c:if>
				  	
				  	
				  	<c:if test="${qlist.qanswer!=null}">
				 		 <li>답변완료</li>
				 	</c:if>
				</ul>
				<input type="hidden" name="inum" value="${qlist.qnum}">
				<div id="qnaViewbox" style="display:none" >
			
							<div id="qnatxtbox">				
							     ${qlist.qcontent}
							</div>
							
						 <c:if test="${qlist.qanswer==null}"> <!-- 답변없을경우 -->	
						    <div id="qnatxtbox2">	
							  아직 작성된 답변이 없습니다.
							</div>
						 </c:if>	
						 
						 <c:if test="${qlist.qanswer!=null}">
						    <div id="qnatxtbox2">					
							     ${qlist.qanswer}
							</div>
							<div id="chatInfoTitle"><span id="chatHeaderSpan" class="chatHeaderSpan"><span id="reportChat">신고하기</span><span id="theyId"></span></span></div>
							<input type=hidden value="${qlist.selleruserid}">
							<input type=hidden value="${qlist.qnum}">
						</c:if>		
				</div>
		  </c:forEach>		 
		  </c:if>

 
<!-- 신고하기 부분-->
	<div style="height:350px;width:500px;border:2px solid #ddd;position:absolute;top:400px;left:800px;background-color:white;display:none;" id="reportDiv" class="reportDiv">
		<form style="height:400px;width:500px;float:left;" method="post" action="customreport" id="reportForm" class="reportForm">
			<h2 style="margin-left:10px; color:#50586C; font-weight:bold">신고하기</h2>
			<span style="float:left;font-size:20px;margin-left:10px;">신고사유</span>
				<input type="hidden" name="userid" value="${logId}"/>												<!-- 신고자 아이디 -->
				<input type="hidden" name="reporteduser" id="reporteduser" value=""/>											<!-- 신고할 사람 아이디 -->
				<input type="hidden" name="reportboard" value="문의"/>							<!-- 신고한 게시판 -->
				<input type="hidden" name="reportboardnum" id="reportboardnum" value=""/>										<!-- 신고한 글 번호 -->
				<select name="reportreason"  style="float:right;margin-right:10px;font-size:20px;">	<!-- 신고사유 -->
					<option value="비방/욕설">비방/욕설</option>
					<option value="허위">허위</option>
					<option value="성희롱">성희롱</option>
					<option value="기타">기타</option>
				</select>
			<textarea name="reportcontent" id="reportcontent" style="height:200px;width:480px;margin-left:10px; margin-right:10px;font-size:15px;" maxlength="149"></textarea><!-- 신고내용 -->
			<div style="font-size:18px;float:right;margin-right:10px;">
				<input type="button" value="신고하기" style="background-color:#ff3a3a;color:white;border:1px solid #fff;"id="reportsubmit" class="reportsubmit"/><!-- 신고버튼 -->
				<input type="button" value="닫기"style="background-color:gray;color:white;border:1px solid #fff;"id="reportClose"/>
				
			</div>
		</form>
	</div>
 <!--  신고하기 밑에 스크립트까지임 -->	
		

	
	<div id="nonebox">   </div>

		

			</div>
			<!--productInfoPage3  -->

			<c:if test="${not empty faqlist}">
			
				<!-- 페이징 표시--------- -->
	<div class="page_wrap">
			<div class="page_nation">
			   <c:if test="${pageVO2.pageNum>1}"><!-- 이전페이지가 있을때 -->
			   		<a class="arrow prev" href="/sshj/custominfo?fpageNum=${pageVO2.pageNum-1}<c:if test="${pageVO2.searchWord != null && pageVO2.searchWord != ''}">&searchKey=${pageVO2.searchKey}&searchWord=${pageVO2.searchWord}</c:if>"></a>
			   </c:if>
			   <!-- 페이지 번호                   1                                    5                     -->
	           <c:forEach var="p" begin="${pageVO2.startPageNum}" step="1" end="${pageVO2.startPageNum + pageVO2.onePageNum-1}">
	              <c:if test="${p<=pageVO2.totalPage}">
	                 <c:if test="${p==pageVO2.pageNum}"> <!-- 현재페이지일때 실행 -->
	                    <a class="active">${p}</a>
	                 </c:if>   
	                 <c:if test="${p!=pageVO2.pageNum}"> <!-- 현재페이지가 아닐때 실행 -->
	                    <a href="/sshj/custominfo?fpageNum=${p}<c:if test="${pageVO2.searchWord != null && pageVO2.searchWord != ''}">&searchKey=${pageVO2.searchKey}&searchWord=${pageVO2.searchWord}</c:if>">${p}</a>
	                 </c:if>
	              </c:if>
	           </c:forEach>
	           <c:if test="${pageVO2.pageNum < pageVO2.totalPage}">
	              <a class="arrow next" href="/sshj/custominfo?&fpageNum=${pageVO2.pageNum+1}<c:if test="${pageVO2.searchWord != null && pageVO2.searchWord != ''}">&searchKey=${pageVO2.searchKey}&searchWord=${pageVO2.searchWord}</c:if>"></a>
	           </c:if>
			</div>
	 </div>
				<!-- 페이징 표시--------- -->
  			</c:if>


		</div>
		<!--productInfoPage  -->

	</div>
</div>

