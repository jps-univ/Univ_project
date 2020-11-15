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
            
                <table class="table table-bordered" id="qnaTable" style="text-align:center;">
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
    <input type="hidden" id="searhKind" />

<!-- footer -->
<footer class="container-fluid navbar-fixed-bottom">
  <span style="margin: 0 0 10px;">진포상대학</span>
</footer>
<!-- footer 끝 -->

<script>
	$(function(){
		$("#searhKind").val("Q");
		getList(1,"Q");
	});
	
	function qnaOneSelect(qnaNum) { 
		location.href = "adQAnswer.do?boardId=" + qnaNum;
	}
	
	function getList(currentPage, searchKind) {
		
		var params = {
				mode : searchKind ,
				currentPage : currentPage ,
				isAdmin : "Y"
		}
		
		$.ajax({
			url:"boardList.do",
			type:"post",
			data:JSON.stringify(params),
			contentType:"application/json",
			success:function(data) {
				console.log(data);
				setPageing(data.pi);
				setList(data.boardList);
			},
			error:function() {
				
			}
		});
	}


	function setPageing(pageInfo) {
		
		var $pagination = $(".pagination");
		$pagination.empty();
		
		var currentPage = pageInfo.currentPage;
		var startPage = pageInfo.startPage;
		var endPage = pageInfo.endPage;
		var limit = pageInfo.limit;
		var maxPage = pageInfo.maxPage;
		var searchCondition = $("#searhKind").val();
		
			$pagination.append($("<li>").append($("<a>").text("<<")).css("cursor","pointer").click(function(){	
				setList(1,searchCondition);
			}));
		   	   
			if(currentPage <= 1) { 
				$pagination.append($("<li>").append($("<a>").text("<")).attr("disabled",true).css("cursor","pointer"));
			}else{ 
				$pagination.append($("<li>").append($("<a>").text("<")).css("cursor","pointer").click(function(){
					getList(currentPage - 1,searchCondition);
				}));
			 } 
			 for(var p= startPage; p <= endPage; p++){
				if(p == currentPage){
				$pagination.append($("<li>").append($("<a>").text(p)).attr("disabled",true));
			 }else{ 
				$pagination.append($("<li>").append($("<a>").text(p)).css("cursor","pointer").click(function(){
					getList($(this).children().text(),searchCondition);
				}));
			 }
				
			 } 
			 if(currentPage >= maxPage){ 
				 $pagination.append($("<li>").append($("<a>").text(">")).attr("disabled",true).css("cursor","pointer"));					
			 }else {
				 $pagination.append($("<li>").append($("<a>").text(">")).css("cursor","pointer").click(function(){
					 getList(currentPage + 1,searchCondition);
				 }));
			 } 
			 	$pagination.append($("<li>").append($("<a>").text(">>")).css("cursor","pointer").click(function(){
			 		getList(endPage,searchCondition);
		 	}));
			 	
	}

	function setList(boardList) {
		
		$elm = $("#qnaTable tbody");
		$elm.empty();
		
		boardList.forEach(function(item,index){
			var $tr = $("<tr>").attr("id",item.boardId).click(function() {
				qnaOneSelect($(this).attr("id"));
			});
			
			var $NumberTd = $("<td>").text(item.rowNum);
			var $NameTd = $("<td>").text(item.bTitle).css("text-align","left");
			var $WriterTd = $("<td>").text(item.stdName);
			var $dataTd = $("<td>").text(setDate(item.bDate));
			
			$tr.append($NumberTd).append($NameTd).append($WriterTd).append($dataTd);
			
			$elm.append($tr);
		})
		
	}

	function setDate(dateTime) {
		var date = new Date(dateTime);
		
		return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
	}

	function registQna() {
		var qnaTitle = $("#qnaTitle").val();
		var qnaContent = $("#qnaContent").val();
		
		if(qnaTitle != "" && qnaContent != "") {
		var params = {
				bTitle : qnaTitle ,
				bContents : qnaContent,
				bType : "Q"
		}
		
			$.ajax({
				url:"registQna.do",
				type:"post",
				data:JSON.stringify(params),
				contentType:"application/json",
				success:function(data) {
					$("#qnaTitle").val("");
					$("#qnaContent").val("");
					$("#searhKind").val("Q");
					getList(1,"Q");
				},
				error:function(error) {
					console.log(error);
				}
			});
		} else {
			alert("내용을 입력하세요.");
		}
		
	}
	
</script>
</body>
</html>