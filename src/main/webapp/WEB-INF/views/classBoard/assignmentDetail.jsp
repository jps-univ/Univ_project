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
<c:set var="a" value="${ aDetail }"/>
<c:set var="s" value="${ stdDetail }"/>

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
  <link href="${contextPath}/resources/css/sb-admin-2.min3-boardClass.css?ver=1" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<%--   <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css">    --%>    
  <link rel="stylesheet" href="${contextPath}/resources/css/assignment_detail.css?ver=1">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <style>
/*       .page {
        margin-top: 130px;
        margin-left: 330px;
    } */

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
		                            	<p>${a.aTitle}</p>
		                            </td>
		                        </tr>
		                        <tr>
		                            <th>
		                                <p>첨부파일</p>
		                            </th>
		                            <td>
										<c:if test="${ !empty a.originalFileName }">
											<a href="${contextPath }/resources/uploadFiles/${a.renameFileName}" 
											download="${a.originalFileName }"> ${ a.originalFileName }</a>
										</c:if>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td style="text-align:center; font-weight:bold;">
		                                <p>내용</p>
		                            </td>
		                            <td>
		                            	<div><p>${a.aContent}</p></div>
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
<!-- 			                    <form action="scoreAssign.do" method="get" enctype="multipart/form-data"> -->
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                  <thead>
			                  <tr align="center">
			                    <th style="width:5%">번호</th>
			                    <th style="width:10%">학번</th>
			                    <th style="width:20%">첨부 파일</th>
			                    <th style="width:10%">점수</th>
			                    <th style="width:40%">feedback</th>
			                    <th style="width:15%">제출/수정</th>
			                  </tr>
		                  </thead>
		                  <tbody>
		                  	<c:forEach var="r" items="${rDetail}">
				                    <tr>
				                      <td>
				                      	<input type="hidden"  id="sSeq" name="sSeq" value="${r.sSeq }" >${r.sSeq }
				                      	<input type="hidden"  id="aSeq" name="aSeq" value="${r.aSeq }" >
				                      </td>
				                      <td>
				                     	<input type="hidden"  id="stdId" name="stdId" value="${r.stdId }">${r.stdId }
				                      </td>
				                      <td>
				                      	<c:if test="${ !empty r.originalFileName }">
										<a href="${contextPath }/resources/uploadFiles/${r.renameFileName}" 
										download="${r.originalFileName }"> ${ r.originalFileName }</a>
										</c:if>
				                      </td>
				                      <td>
	<%-- 			                      	<c:if test="${ empty r.score }"> --%>
						                  <select id="selectScore" name="selectScore">
					                        <option value="A+">A+</option>
					                        <option value="A0">A0</option>
					                        <option value="A-">A-</option>
					                        <option value="B+">B+</option>
					                        <option value="B0">B0</option>
					                        <option value="B-">B-</option>
					                        <option value="C+">C+</option>
					                        <option value="C0">C0</option>
					                        <option value="C-">C-</option>
					                        <option value="D+">D+</option>
					                        <option value="F">F</option>
					                      </select>
	
				                      </td>
				                      <td>
		                                <input type="text" size="40" id="profComment" name="profComment">			                      	
				                      </td>
				                      <td>
	      				                <input type="submit" class="btn btn-secondary" value="채점" id="score" onclick="scoring();">
				                      </td>
				                    </tr>
		                    </c:forEach>
             			  </tbody>
		                </table>
<!-- 								</form> -->
		              </div>
		            </div>
		          </div>
				</div>
			</c:if>
		<script>
				function scoring(){
					if(confirm("채점완료하시겠습니까?")){
						$.ajax({
							url:"scoreAssign.do",
							data:{
								stdId:$('#stdId').val(),
								sSeq:$('#sSeq').val(),
								profComment:$('#profComment').val(),
								score:$('#selectScore').val(),
							},success:function(data){
								alert("성공적으로 채점되었습니다.");
							}
						})
					}
				}
			</script>
			
			<c:if test="${userStatus eq 'S' }">
			<div class="container-fluid">
				<div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">진행 상황</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		              	<form action="submitAssign.do" method="post" enctype="multipart/form-data">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <thead>
		                  <tr align="center">
		                    <th style="width:15%">제출 기간</th>
		                    <th style="width:20%">첨부 파일</th>
		                    <th style="width:10%">점수</th>
		                    <th style="width:40%">feedback</th>
		                    <th style="width:15%">제출/수정</th>
		                  </tr>
		                 </thead>
		                 <tbody>
				          <tr align="center">
				            <td>${ a.dueDate }</td>
				            <td>
                              <input type="file" class="uploadFile" name="uploadFile">
								<c:if test="${ !empty s.originalFileName }">
									<a href="${contextPath }/resources/uploadFiles/${s.renameFileName}" 
									download="${s.originalFileName }"> ${ s.originalFileName }</a>
								</c:if>
							</td>
				            <td>${ s.score }</td>
				            <td>${ s.profComment }+${userId }+${a.aSeq }+${classSeq }
				              <input type="hidden" id="classSeq" name="classSeq" value="${ classSeq }">
				              <input type="hidden" id="stdId" name="stdId" value="${ userId }">
 				              <input type="hidden" id="aSeq" name="aSeq1" value="${a.aSeq }">
				              <input type="hidden" id="profId" name="profId" value="${a.profId }">
				             </td>
				            <td>
				              <input type="submit" class="btn btn-secondary" value="제출" id="submitAssign" >
				            </td>
				          </tr>
		                 </tbody>
		                </table>
		                </form>
		              </div>
		            </div>
		          </div>			
			</div>
			

			
		</c:if></div>			
			
			
			
			
			

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
