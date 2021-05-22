<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/inc/menu_c.jspf"%>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/jcss/basicStyle.css">

<style>
	#mypageMenubar{
		display:block;
		font-size:17px;
	}
	
	*{margin:0px; padding:0px; list-style-type :none; font-size:14px;}

	a:hover, a:active, a:visited, a:link {
   		color: black;
    }
    a{color:black;}
	answer_line{width:100%; 	background-color:#f6f6f6; height:20px; }
	#qmtitle, select{border:none;}
	#qmtitle{width:300px; color:lightgray;}
	#qmtitle{width:500px}
	#write_btn{width:150px; margin-left:20px;}
	a{color:black;}
   /*표*/
	table{
		width:100%;	
		border-spacing: 0;
		text-indent: initial;	
		border-top:2px solid lightgray;
		border-bottom:2px solid lightgray;
		font-size:15px;
		margin-top:30px;
	}
	th, .th{
		height:40px;
		font-size:15px;
		width:80px; text-align:center;
		display: table-cell;
	    vertical-align: inherit;
	    font-weight: bold;
	    text-align: -internal-center;
   		background-color:#f6f6f6;
   		/*#fcfcfc*/
	}
	thead, .answer_content, .td{
		border-bottom: 2px solid #ccc;
	    border-top: 2px solid #ccc;
	    width:100%;
	}
	tr{
		display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	    height:40px;
	}
	.td, .qmcontent{
		padding-left:20px;
		
	}
	.qmcontent{
		margin: 20px 0 20px;
	}
	td, .td{
		height:40px;
	}
	.tr_head{
		font-weight:bold;
	}
	.tr_head li{
		float:left;
	}
	.td, .th{ line-height:40px;}
	.td{
		width:30%; line-height:40px;
	}
	#bottommm{
		text-align:center; 
		margin-bottom:30px;
		margin-top: 30px;
	}
	.td{
		width:0;
	}
	
	
	.recititlew{
	font-size:25px;
	}
	
	#tbodyid>.tr_head>.td>input{
	border: none;
	}
	
	.tr_head>.td>input{
	width:700px;
	}
	
</style>

<div class="section">
	
		
	<form method="post" action="/sshj/recipeWriteOk" enctype="multipart/form-data">
		<table>
			<tbody id="tbodyid">
				<tr class="bigrecititlew">
					<th colspan="4" class="recititlew">레시피 작성</th>
				</tr>
				<tr class="tr_head">
					<th class="menu" >제목</th>
					<td class="td" colspan="3"><input type="text" name="recipetitle" id="recipetitle" placeholder="레시피 제목을 입력해 주세요"/></td>
				</tr>
				<tr class="tr_head">
					<th class="menu">작성자</th>
					<td  class="td"><span id="idname">${logId}</span></td>
				</tr>
				<tr class="tr_head">
					<th class="menu">대표이미지</th>
					<td  class="td"><input type="file" value="파일첨부하기" name="file" style="width: 500px;"></td>
				</tr>
				<tr>
					<th colspan="4">레시피 내용</th>
				</tr>
				<tr>
					<td class="question_content" colspan="4">
						<textarea id="recipecontent" name="recipecontent" class="summernote" placeholder="문의내용을 입력해주세요."></textarea>
					</td>	
				</tr>
			</tbody>
		</table>
			<div id="bottommm">
				<input type="button" value="취소" class="btn" id="write_btn" onClick="location.href='<%=request.getContextPath() %>/recipeList'"/>
				<input type="submit" value="작성하기" class="btn" id="write_btn"/>		
						
			</div>
		</form>
</div>

<script>

$(document).ready(function() {
	
	
	  $('.summernote').summernote({
		  height: 500,                 // 에디터 높이 
		  focus: true,
		  //콜백 함수
        callbacks : { 
        	onImageUpload : function(files, editor, welEditable) {
        // 파일 업로드(다중업로드를 위해 반복문 사용)
        for (var i = files.length - 1; i >= 0; i--) {
        uploadSummernoteImageFile(files[i],
        this);
        		}
        	}
        }
	  });
	});
	
	if(${logId==null}){
		if(confirm("로그인후 이용해주세요")){
			location.href="login"
		}
	}
	
</script>

<script>
function uploadSummernoteImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
		}
	});
}


</script>
