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
 <%--  <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css">    --%>    
  <link rel="stylesheet" href="${contextPath}/resources/css/board_gradeObjection.css?ver=1">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <style>
  #answer {
        border: 1px solid #555;
        width: 99%;
        height: 110px;
        resize: none;
  }
  #gradeTable{
  	align: center;
	vertical-align: middle;
	width:97&
  }
  #replyBoard tr th{
 	align: center;
  }
   th.dt-center, td.dt-center { text-align: center; }
  #gradeTable_wrapper{
  width:97%}
  </style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <div id="main_sidebar">
	      <c:if test="${ userStatus eq 'S' }" >
   			<c:import url="../common/sidebar.jsp" />
   		  </c:if>
	      <c:if test="${ userStatus eq 'P' }" >
   			<c:import url="../common/sidebar_professor.jsp" />
   		  </c:if>
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
                    <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">성적이의신청</h1>
		
		      <c:if test="${ userStatus eq 'P' }" >
      
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">성적 이의 조회</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive" >
                 <table id="gradeTable" class="table table-bordered" >
                  <thead>
                    <tr align="center">
                      <th>번호</th>
                      <th>학번</th>
                      <th>성적</th>
                    </tr>
                  </thead>
              </table>
           </div>   
             </div>
<!--             </div> -->
          </div>

      <div class="card shadow mb-4">          
         <div id="container">
                  <div id="rest_table_area">
                      <table class="table table-bordered question-table">
                      <colgroup>
                         <col style="width:8%;">

                         <col style="width:*">
                      </colgroup>
                          <thead>
                              <tr align="center">
                                  <th style="font-size: 14px; vertical-align: middle;">
                                      FEEDBACK
                                  </th>
                                  <td id="proFeedback">
                                  </td>
                              </tr>
                              <tr align="center">
                                  <th style="   vertical-align: middle;">
                                         건의 내용
                                  </th>
                                  <td id="studOpinion">
                                  </td>
                              </tr>
                              <tr align="center">
                                  <th style="   vertical-align: middle;">
                                         교수 답변
                                  </th>
                                  <td id="profAnswer">
                                      <textarea id="answer" name="bAnswer"></textarea>
                                  </td>
                              </tr>
                          </thead>
                      </table>
                      <input id="handOutQA" type="button" value="등록" class="btn btn-primary btn-sm">
                      <input id="modifyQA" type="button" value="수정" class="btn btn-primary btn-sm">
                  </div>
            </div>
                  
             </div>
      
      </c:if>
      
         <script>
            $(document).ready(function callObjectionTable(){
            table=$('#gradeTable').DataTable({
               'ajax':{
                  'url':"callGrade.do",
                  'type':'post',
                  'dataType':"json",
                  'dataSrc':''
               },
            'columns':[
               {'data':'sSeq'},
               {'data':'stdId'},
               {'data':'score'},
            ],
            'columnDefs':[
               {
                  'targets':0,
                  'width':'10%'
               },
               {
                  'targets':2,
                  'width':'10%'
               },
               {   'targets': [0,1,2],
                  'className':'dt-center'   
               }
            ],
                'searching': true,
                'paging': true,
                // 'bDestroy': true,
                'destroy': true,
                'scrollX': false,
                'scrollY': true
                
            });
            
            
            $('#gradeTable tbody').on('click','tr',function(){
               console.log("?");
               $.ajax({
                  
                  url:'callObjectionDetail.do',
                  data:{sSeq:$(this).children().eq(0).text()},
                  dataType:"json",
                  success:function(data){
                     console.log(data);
                     $('#proFeedback').text(data.profComment);
                     $('#studOpinion').text(data.studQa);
                     $('#profAnswer').children().val(data.profReply);
                  }
               });
            });
         });      
      </script>
		
		
		
		

		
		
		
	  </div>
	<!-- End of Main con -->

      </div>
	<!--  ENd of Main content -->


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
