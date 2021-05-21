<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/inc/menu_c.jspf"%>
<style>
	<style>
	#cMyPageLeft{
		display: block;
	}
	#mypointList{
		height:1080px;
		position:relative;
	}
	.Pbuttons{
		height:40px;
		width:80px;
		background-color: rgb(252,118,45);
		color:white;
		line-height:40px;
		text-align:center;
		border-radius:7%;
		margin-left:1px;
	}
	#pointSelectDate{
		float:right;
	}
	#pointSelectDate>div{
		float:left;
	}
	#pointUl{
		padding:30px 0px;
		margin:0px;
		width:1080px;
		
	}
	#pointUl>li{
		width:180px;
		height:60px;
		line-height:60px;
		margin:5px 0;
		text-align:center;
		border-bottom:1px solid #eee;
	}
	#pointUl>li:nth-child(1), #pointUl>li:nth-child(2), #pointUl>li:nth-child(3){
		border-bottom:1px solid rgb(252,118,45);
		font-size:20px;
	}
	#pointUl>li:nth-child(3n){
		width:300px;
	}
	#pointUl>li:nth-child(3n+2){
		width:600px;
	}
	.chatttitle, .chatdetail{
		line-height:30px;
		text-align:left;
		float:left;
		width:542px;
	}
	#pointUl>li:nth-child(3n+2) img{
		line-height:60px;
		float:left;
	}
	#pointUl img{
		height:58px;
		width:58px;
		float:left;
	}
	#cMyPageLeft{
		display:block;
	}
	.chattitle{
		font-size:1.1em;
	}
	.chatdetail{
		font-size:0.9em;
		color:#999;
	}
	.wordcut{
		overflow:hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
	.chatbutton{
		width:70px;
		height:35px;
		line-height:35px;
		text-align:center;
		margin:1px;
		padding:0px;
		border: none;
		background-color:rgb(252,118,45);
		color:white;
		border-radius: 5px;
	}
	.chatbuttonNo{
		width:70px;
		height:35px;
		line-height:35px;
		text-align:center;
		margin:1px;
		padding:0px;
		border: none;
		background-color:rgb(252,118,45);
		color:white;
		border-radius: 5px;
		opacity:60%;
	}
	#mypointList>h2{
		margin-top:20px;
		margin-left:20px;
		margin-bottom:20px;
	}
	/* 채팅창 설정부분 */
	.chatDiv{
		height:540px;
		width:500px;
		background-color:rgb(252,118,45);
		position:absolute;
		border:1px solid rgb(252,118,45); 
	}
	.chatDivBar{
		height:10px;
		width:500px;
	}
	.chatDivTitle{
		height:30px;
		widht:500px;
		background-color:white;
		text-align:center;
		line-height:30px;
		border-bottom:1px solid rgb(252,118,45); 
	}
	.chatDivcontent{
		height:400px;
		width:498px;
		background-color:#ddd;
	}
	.chatDivInputBox{
		height:101px;
	}
	.chatInput, .chatInput>textarea{
		width:400px;
		height:100px;
		background-color:white;
		float:left;
	}
	.chatInput>textarea{
		border: 3px solid rgb(252,118,45);
	}
	.chatSendBtn{
		width:97px;
		height:100px;
		background-color: rgb(252,118,45);
		float:left;
		border:none;
		color:white;
	}
	.chatSendBtn>input{
		background-image: url(/sshj/img/dpaper-plane.png);
		background-repeat:no-repeat;
		background-size:cover;
		width:97px;
		height:100px;
		float:left;
		border:none;
	}
	.chatPrint{
		position: relative;
	}
	.chatHeight{
		height:100px;
		background-color: 
	}
	.myChat, .theyChat{
		height:40px;
		width:300px;
		position: absolute;
		line-height:40px;
		border-radius: 10px;
		background-color: white;
	}
	.myChat{
		left:180px;
		text-align:right;
		padding-right:10px;
	}
	.theyChat{
		left:10px;
		padding-left:10px;
	}
	.myChatTime, .theyChatTime{
		height:20px;
		width:60px;
		line-height:20px;
		padding:0;
		margin:0;
		font-size:10px;
		color:#555;
		position: absolute;
		top:5px;
	}
	.myChatTime{
		left:-62px;
		text-align:right;
	}
	.theyChatTime{
		left:301px;
		text-align:left;
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
	#chatIframe{
		position:absolute;
		top:400px;
		left:800px;
		width:502px;
		height:662px;
		padding:1px;
		background-color:rgb(250, 250, 250);
		display:none;
	}
	#chatContainer{
		width:500px;
		height:590px;
	}
	#chatTop{
		width:500px;
		height:20px;
		background-color:rgb(252,118,45);
	}
	#chatInfoTitle{
		height:50px;
		width:500px;
		background-color:white;
	}
	#closedivBtn, #reportChat{
		cursor: pointer;
	}
	#chatHeaderSpan{
		line-height:50px;	
	}
	#chatInfoTitle{
		text-align: center;
		font-size:16px;
	}
	#reportChat{
		color:red;
		float:left;
		margin-left:10px;
	}
	#closedivBtn{
		float:right;
		line-height:50px;
		font-size:20px;
		margin-right:10px;
	}
	#theyId{
		font-weight:bold;
		font-size:17px;
		margin-right:5px;
	}
</style>
<script>
	$(function(){
		var popup = $(document)
		var eventX, eventY, divX, divY, moveX, moveY, flag=false;
		function setMoveStart(){
			eventX = event.clientX;
			eventY = event.clientY;
			divX = parseInt()
		}
		
	})
	$(document).on('click','input[value=대화하기]', function(){
		var roomcode =$(this).prev().val();
		var theyid = $(this).parent().prev().children().eq(0).text();
		var myid = "${logId}";
		console.log("logid="+myid);
		$("#theyId").text(theyid);
		$("#chatIframe").css("display","block");/* 아이피 수정해야 할 곳 ^^^^^^ */
		$("#chatContainer").attr("src","http://192.168.0.52:12021/chatForm?sender="+myid+"&receiver="+theyid+"&roomcode="+roomcode);
	});
	$(document).on('click','input[value=삭제]', function(){
		if(confirm("해당대화를 삭제하시겠습니까? \n대화가 삭제되더라도 상대방에게는 남아있을 수 있습니다.\n삭제한 대화는 취소할 수 없습니다.")){
			var roomcode = $(this).prev().prev().val();
		url = "chatdel";
		param = "roomcode="+roomcode;
		$.ajax({
			url:url,
			data : param,
			success : function(result){
				console.log(result);
				if(result == 1){
					alert("해당 대화가 삭제되었습니다.");
					location.href="myChatList";
				}else{
					alert('해당 대화를 삭제하는데 실패하였습니다.');
				}
			}, error : function(){
				console.log('실패..');
			}
		});
		}
	});
	$(document).on('click',"#closedivBtn",function(){
		$("#chatIframe").css("display","none");
	})
</script>
<div class="section">
	<div id="mypointList">
		<h2>${logId}님의 1:1대화 내역입니다. </h2>
		<div>
			대화가 삭제되더라도 상대방에게는 남아있을 수 있습니다.<br>
			삭제한 대화는 취소할 수 없습니다.<br/>
			욕설, 비방, 비난 등의 이유로 신고가 누적될 경우 사이트 이용에 제한이 될 수 있습니다.<br/> 
		</div>
		<div>
			<ul id="pointUl">
				<li>일시</li>
				<li>마지막 대화 내용</li>
				<li>&nbsp;</li>
				
				<!-- 구분용 -->
				
				<c:forEach var="vo" items="${list}">
					<li><span class="pointdate">${vo.otodate}</span></li>
					<li>
					<c:if test="${vo.receiver == logId}">
						<span class="chatttitle wordcut">${vo.sender}</span><span class="chatdetail wordcut">${vo.otocontent}</span>
					</c:if>
					<c:if test="${vo.receiver != logId}">
						<span class="chatttitle wordcut">${vo.receiver}</span><span class="chatdetail wordcut">${vo.otocontent}</span>
					</c:if>
					</li>
					<li><input type="hidden" value="${vo.roomcode}"/><input type="button" class="btn" value="대화하기"/><input type="button" class="btn" value="삭제"/><input type="button" class="btn" value="신고하기"/></li>
				</c:forEach>
			</ul>
		</div>
		
		<!-- 페이징 -->
		<div class="page_wrap">	
			<div class="page_nation">
			   <c:if test="${pageVO.pageNum>1}"><!-- 이전페이지가 있을때 -->
			   		<a class="arrow prev" href="myChatList?pageNum=${pageVO.pageNum-1}"></a>
			   </c:if>
			   <!-- 페이지 번호                   1                                    5                     -->
	           <c:forEach var="p" begin="${pageVO.startPageNum}" step="1" end="${pageVO.startPageNum + pageVO.onePageNum-1}">
	              <c:if test="${p<=pageVO.totalPage}">
	                 <c:if test="${p==pageVO.pageNum }"> <!-- 현재페이지일때 실행 -->
	                    <a class="active">${p}</a>
	                 </c:if>   
	                 <c:if test="${p!=pageVO.pageNum}"> <!-- 현재페이지가 아닐때 실행 -->
	                    <a href="myChatList?pageNum=${p}">${p}</a>
	                 </c:if>
	              </c:if>
	           </c:forEach>
	           <c:if test="${pageVO.pageNum < pageVO.totalPage}">
	              <a class="arrow next" href="myChatList?pageNum=${pageVO.pageNum+1}"></a>
	           </c:if>
			</div>
		 </div>
	</div>
	<div id ="chatIframe">
				<div id="chatTop"></div>
				<div id="chatInfoTitle"><span id="chatHeaderSpan"><span id="reportChat">신고하기</span><span id="theyId"></span>님과의 채팅입니다.</span><span id="closedivBtn">&times;</span></div>
				<iframe src="" id="chatContainer" frameborder="0" ></iframe>
	</div>
	<!-- 신고하기 부분 -->
	<div style="height:350px;width:500px;border:1px solid red;position:absolute;top:400px;left:800px;background-color:white;display:none;" id="reportDiv">
		<form style="height:400px;width:500px;float:left;" method="post" action="customreport">
			<h2 style="margin-left:10px;">신고하기</h2>
			<span style="float:left;font-size:20px;margin-left:10px;">신고사유</span>
				<input type="hidden" name="userid"/>												<!-- 신고자 아이디 -->
				<input type="hidden" name="reporteduser"/>											<!-- 신고할 사람 아이디 -->
				<input type="hidden" name="reportboard" value="1:1채팅"/>							<!-- 신고한 게시판 -->
				<input type="hidden" name="reportboardnum"/>										<!-- 신고한 글 번호 -->
				<select name="reportreason"  style="float:right;margin-right:10px;font-size:20px;">	<!-- 신고사유 -->
					<option>비방/욕설</option>
					<option>허위</option>
					<option>성희롱</option>
					<option>기타</option>
				</select>
			<textarea name="reportcontent" id="reportcontent" style="height:200px;width:480px;margin-left:10px; margin-right:10px;font-size:15px;"></textarea><!-- 신고내용 -->
			<div style="font-size:20px;float:right;margin-right:10px;">
				<input type="button" value="신고하기" style="background-color:#ff3a3a;color:white;border:1px solid #aaa;"id="reportsubmit"/>
				<input type="button" value="닫기"style="background-color:#ddd;color:white;border:1px solid #aaa;"id="reportClose"/>
			</div>
		</form>
	</div>
	<!-- 신고하기 밑에 스크립트까지임 -->
	<script>
		$(function(){
			$("#reportsubmit").click(function(){
				
				$("#reportcontent").val('');
				$("#reportDiv").css("display","none");
			})
			$("#reportClose").click(function(){
				$("#reportcontent").val('');
				$("#reportDiv").css("display","none");
			})
			$(document).on('click','input[value=신고하기]', function(){
				$("#reportDiv").css("display","block");
				
			});
		})
	</script>
	<!-- 신고하기 끝 -->
</div>