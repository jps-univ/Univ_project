<%--
  Created by IntelliJ IDEA.
  User: moduhan
  Date: 2020-10-16
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>진포상대학교</title>
  <!-- Custom fonts for this template-->
  <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css">       
  <link rel="stylesheet" href="${contextPath}/resources/css/assignment_detail.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <style>
      .page {
        margin-top: 130px;
        margin-left: 330px;
    }

    #container {
        margin-top: 30px;
        margin-bottom: 30px;
        color: #252525;
    }

    .question-table p {
        margin: 10px;
    }

    .table-bordered {
        border: 5px solid #ddd;
    }

    #answer {
        border: 1px solid #555;
        width: 99%;
        height: 110px;
        resize: none;
    }

    .writeBtn {
        float: right;
    }

    /* footer */
    footer {
        background-color: #555;
        color: white;
        padding: 15px;
    }
    
    .question-table th {
    	text-align:center;
    }
  
  </style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <div id="main_sidebar">
   		<c:import url="../common/sidebar.jsp" />
    </div>
    
    <!-- End of Sidebar -->
    
    <!-- 전체 페이지 Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
  		<c:import url="../common/pageTopbar.jsp" />
        

          <!-- main content -->
          <div id="main_con">
              <div id="write_title"><p>과제</p></div>
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
		                                <p>첨부파일</p>
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
		                    </thead>
		                </table>
		            </div>
		
		            
		        </div>



              
       		<c:if test="${ userStatus eq 'P' }" >
             <div class="container-fluid">
		
		          <!-- DataTales Example -->
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
		            </div>
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                  <thead>
			                  <tr align="center">
			                    <th style="width:15%">학번</th>
			                    <th style="width:20%">첨부 파일</th>
			                    <th style="width:10%">점수</th>
			                    <th style="width:40%">feedback</th>
			                    <th style="width:15%">제출/수정</th>
			                  </tr>
		                  </thead>
		                  <tfoot>
		                    <tr>
		                      <th>Name</th>
		                      <th>Position</th>
		                      <th>Office</th>
		                      <th>Age</th>
		                      <th>Start date</th>
		                      <th>Salary</th>
		                    </tr>
		                  </tfoot>
		                  <tbody>
		                    <tr>
		                      <td>Tiger Nixon</td>
		                      <td>System Architect</td>
		                      <td>Edinburgh</td>
		                      <td>61</td>
		                      <td>2011/04/25</td>
		                      <td>$320,800</td>
		                    </tr>
             			  </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
				</div>
			</c:if>
			
			
			<c:if test="${userStatus eq 'S' }">
			<div class="container-fluid">
				<div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">진행 상황</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th style="width:15%">제출 기간</th>
		                    <th style="width:20%">첨부 파일</th>
		                    <th style="width:10%">점수</th>
		                    <th style="width:40%">feedback</th>
		                    <th style="width:15%">제출/수정</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '진행'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.profName }</td>
				                    <td id="td_consult">${ c.consultingStatus } 중</td>
				                    <td id="td_consult">${ c.progressDate }</td>
				                    <td>
				                      <input type="button" class="btn btn-secondary" value="신청취소" id="cancleConsulting" onclick="cancleConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                    </td>
				                  </tr>
			                  </c:if>     
		                  </c:forEach>  
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>			
			</div>
			
			
			</c:if>
			
			
			
			
			
			

        </div>
       <!-- end of main con -->

      </div>



    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->	




	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<c:import url="../common/logoutModal.jsp" />

	<!-- Bootstrap core JavaScript-->
	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="${contextPath}/resources/js/demo/datatables-demo.js"></script>

</body>

</html>
