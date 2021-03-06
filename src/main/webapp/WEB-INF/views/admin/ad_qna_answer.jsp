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
  <title>진포상대학교</title>
</head>
<body>
<c:import url="../common/adminTopbar.jsp" />

<div class="container-fluid">

  	<!-- 사이드바 -->
    <nav class="col-sm-3 sidenav">
      <h4>게시판 관리</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="<%=path%>/adQList.do">Q & A 관리</a></li>
        <li><a href="<%=path%>/adNList.do">공지사항 관리</a></li>
      </ul>
    </nav>
	<!-- 사이드바 끝 -->

    <!-- 본문 -->
    <form action="registAnswerQna.do" method="POST">
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
                            	<p>${board.bTitle}</p>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <p>작성자</p>
                            </th>
                            <td>
                            	<p>${board.stdName}</p>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; font-weight:bold;">
                                <p>내용</p>
                            </td>
                            <td>
                            	<div><p>${board.bContents}</p></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; font-weight:bold;">
                                <p>답변</p>
                            </td>
                            <td >
                             <textarea id="answer" name="bAnswer">${board.bAnswer}</textarea>
                            </td>
                        </tr>
                    </thead>
                </table>
            </div>

            <div>
                <button type="button" class="btn writeBtn" id="cancleBtn">취소</button>
                <button type="submit" class="btn writeBtn" id="writeBtn" style="margin-right: 20px;">등록</button>
            </div>
            
        </div>
    </div>
    	<input type="hidden" value="${board.boardId}" name="boardId" />
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
		$("#cancleBtn").click(function() {
			history.back(0);
		});
	
	})
	</script>
</body>
</html>