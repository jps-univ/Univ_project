<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>진포상대학교 | 포탈</title>
	
	<!-- Custom fonts for this template -->
	<link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<%-- <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> --%>
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
	<style>
		#searchProf{
		}
		.top{
		    background-color: #edf1fc;
		    border-bottom: solid #4e73df;
		    height: 100px;
		    padding: 40px;
		    position: relative;
		    bottom: 25px;
		    white-space: nowrap;
		    color: #4e73df;
		}
	</style>
	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<c:import url="../common/sidebar.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<c:import url="../common/topbar.jsp" />
				<!-- End of Topbar -->
				
				<div class="top">
               		<h1>상담 관리</h1>
          		</div>
				
				<!-- 여기서부터 내용  -->
		        <!-- Begin Page Content -->
		        <div class="container-fluid">
		
		          <!-- DataTales Example -->
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">상담 신청</h6>
		            </div>
		
		            <div class="card-body">
		              <div>
		                <table>
		
		                </table>
		              </div>
		              
		              <div class="table-responsive">
		                <table class="table table-bordered" id="" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th id="searchProf">학부
		                      <select>
		                        <option value="전체">전체</option>
		                        <option value="공과대">공과대</option>
		                        <option value="인문대">인문대</option>
		                      </select>
		                    </th>
		                    <th id="searchProf">학과
		                      <select>
		                        <option value="전체">전체</option>
		                        <option value="공과대">공과대</option>
		                        <option value="인문대">인문대</option>
		                      </select>
		                    </th>
		                    <th id="searchProf">성명
		                      <input type="text" name="" id="">
		                    </th>
		                    <th id="searchProf">
		                      <input type="button" value="검색" id="">
		                    </th>
		                  </tr>
		                  
		                  <tr align="center">
		                    <th>학부</th>
		                    <th>학과</th>
		                    <th>성명</th>
		                    <th>상담 신청</th>
		                  </tr>
		                  <tr align="center">
		                    <td>
		                    	이공대학
		                    </td>
		                    <td>
		                    	전자공학과
		                    </td>
		                    <td>
		                    	임신일 교수
		                    </td>
		                    <td>
		                      <input type="button" value="상담신청" id="">
		                    </td>
		                  </tr>                
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">신청 관리
		              </h6>
		              
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 교수</th>
		                    <th>신청 상태</th>
		                    <th>신청 일자</th>
		                    <th>신청 취소</th>
		                  </tr>
		                  <tr align="center">
		                    <td>아무개</td>
		                    <td>신청 중</td>
		                    <td>2020.10.13</td>
		                    <td>
		                      <input type="button" value="취소" id="">
		                    </td>
		                  </tr>                
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">진행 상황
		              </h6>
		              
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 교수</th>
		                    <th>진행 상태</th>
		                    <th>상담 일자</th>
		                    <th>신청 취소</th>
		                  </tr>
		                  <tr align="center">
		                    <td>아무개</td>
		                    <td>신청 중</td>
		                    <td>2020.10.13</td>
		                    <td>
		                      <input type="button" value="취소" id="">
		                    </td>
		                  </tr>                
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		        </div>
		        <!-- /.container-fluid -->
		
		      </div>
		      <!-- End of Main Content -->
		      <!-- 여기까지 내용  -->

			<!-- Footer -->
			<c:import url="../common/footer.jsp" />
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> 
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<c:import url="../common/logoutModal.jsp" />

	<!-- Bootstrap core JavaScript-->
	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="${contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="${contextPath}/resources/js/demo/datatables-demo.js"></script>

</body>
</html>