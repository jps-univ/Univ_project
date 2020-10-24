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
        <li class="active"><a href="#section2">Q & A 관리</a></li>
        <li><a href="#section3">공지사항 관리</a></li>
      </ul>
    </nav>
	<!-- 사이드바 끝 -->

    <!-- 본문 -->
    <div class="col-sm-9 page">
        <div id="container">
            <div id="rest_table_area">
                <table class="table table-bordered question-table">
                    <thead>
                        <tr>
                            <th>
                                <p>제목</p>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <p>작성자</p>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <p style="min-height: 240px;">내용</p>
                            </th>
                        </tr>
                        <tr>
                            <th style="text-align: center;">
                                <p style="float: left;">답변</p>
                                <textarea id="answer"></textarea>
                            </th>
                        </tr>
                    </thead>
                </table>
            </div>

            <div>
                <button type="button" class="btn" id="writeBtn">취소</button>
                <button type="button" class="btn" id="writeBtn" style="margin-right: 20px;">등록</button>
            </div>
            
        </div>
    </div>
    
</div>
    <!-- 본문 끝 -->

<!-- footer -->
<footer class="container-fluid navbar-fixed-bottom">
  <span style="margin: 0 0 10px;">진포상대학</span>
</footer>
<!-- footer 끝 -->

</body>
</html>