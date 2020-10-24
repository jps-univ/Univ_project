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
  <link rel="stylesheet" href="<%=path%>/resources/css/admin/ad_qna_list.css">
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
    <div class="col-sm-9 page">
        <div id="container">
            <h2 style="padding-left: 4px;"><b>Q & A</b></h2>
        </div>
        <div id="rest_table_area">
            
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 8%;">
                                <p>게시글 번호</p>
                            </th>
                            <th style="width: 65%;">
                                <p>제목</p>
                            </th>
                            <th>
                                <p>작성자</p>
                            </th>
                            <th>
                                <p>작성일자</p>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td id="qnaBtn" style="cursor:pointer;">임시로 넣어보는 질문이다~~~~~~~~~~~~~~~</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
        </div>
        
        <!-- 페이징 -->
        <div class="container1">       
          <ul class="pagination">
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
          </ul>
      </div>
    </div>

      
     
    
</div>
    <!-- 본문 끝 -->

<!-- footer -->
<footer class="container-fluid navbar-fixed-bottom">
  <span style="margin: 0 0 10px;">진포상대학</span>
</footer>
<!-- footer 끝 -->

<script>
	$(function(){
		$("#qnaBtn").on('click',function(){
			location.href = "adQAnswer.do";
	
		});
	});
</script>
</body>
</html>