<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<%=path%>/resources/css/admin/ad_qna_answer.css">
  <script type="text/javascript" src="<%=path %>/resources/ckeditor/ckeditor.js"></script>
  <title>진포상대학교</title>
</head>
<body>
<c:import url="../common/adminTopbar.jsp" />

<div class="container-fluid">

  	<!-- 사이드바 -->
    <nav class="col-sm-3 sidenav">
      <h4>게시판 관리</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<%=path%>/adQList.do">Q & A 관리</a></li>
        <li class="active"><a href="<%=path%>/adNList.do">공지사항 관리</a></li>
      </ul>
    </nav>
	<!-- 사이드바 끝 -->

    <!-- 본문 -->
    <form action="enrollNotice.do" method="POST" id="formSubmit">
    <div class="col-sm-9 page">
        <div id="container">
            <div id="rest_table_area">
                <table class="table table-bordered question-table">
                <colgroup>
                	<col style="width:8%;">
                	<col style="width:*">
                </colgroup>
                    <thead>
                        <tr>
                            <th>
                                <p>제목</p>
                            </th>
                            <td>
                            	<input type="text" name="bTitle" style="width:100%;" class="form-control validation" value="${board.bTitle}" />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <p>작성자</p>
                            </th>
                            <td>
                            	<p>${loginUser.stdName}</p>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; font-weight:bold;">
                                <p>내용</p>
                            </td>
                            <td>
                            	<div><textarea id="p_content" style="width:100%;">${board.bContents}</textarea></div>
                            </td>
                        </tr>
                    </thead>
                </table>
            </div>

            <div>
                <button type="button" class="btn writeBtn" id="delBtn">삭제</button>
                <button type="button" class="btn writeBtn" id="writeBtn" style="margin-right: 20px;">수정</button>
                <button type="button" class="btn writeBtn" id="cancleBtn" style="display:none; margin-right: 20px;">취소</button>
            </div>
            
        </div>
    </div>
    	<input type="hidden" name="stdId" value="${loginUser.stdId}" />
		<input type="hidden" name="bType" value="N"/>
    	<input type="hidden" value="${board.boardId}" name="boardId" id="boardId" />
    	<input type="hidden" value="" name="bContents" id="bContents"/>
    </form>
    	
</div>
    <!-- 본문 끝 -->

<!-- footer -->
<footer class="container-fluid navbar-fixed-bottom">
  <span style="margin: 0 0 10px;">진포상대학</span>
</footer>
<!-- footer 끝 -->
	<script>
	$(function() { 
		
		CKEDITOR.replace('p_content'
                , {height: 400});
	
		
	if($("#boardId").val() == "") {
		$("#writeBtn").text("등록");
		$("#cancleBtn").css("display","");
		$("#delBtn").css("display","none");
	} else {
		
	}
		
	$("#writeBtn").on('click',function(){
		$("#bContents").val(CKEDITOR.instances["p_content"].getData());
		if($("#boardId").val() == "") {
			$("#boardId").val(0);
		}
		if(validation()) {
			$("#formSubmit").submit();
		} else {
			alert("필수 입력사항을 입력하세요.");
		}
		
	});
	
		$("#cancleBtn").click(function() {
			history.back(0);
		});
		
		$("#delBtn").click(function() {
			if(confirm("정말록 삭제 하시겠습니끼?")) {
				deleteNotice();
			}
			});
		
	});
	
	function deleteNotice() {
		$("#formSubmit").attr("action","removeNotice.do");
		$("#formSubmit").submit();
	}
	
	function validation() {
		
		var validationCnt = 0;
		$(".validation").each(function(idx, item){
			if($(item).val() == "") {
				$(item).css("border","1px solid red");
				validationCnt++;
			}
		});
		
		if(CKEDITOR.instances["p_content"].getData() == "") {
			validationCnt++;
		}
		
		return (validationCnt > 0)?false:true;
	}
	</script>
</body>
</html>