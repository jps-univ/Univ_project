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
		#day{
			width : 15%;
		}
	</style>
	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<c:import url="../common/sidebar_p.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<c:import url="../common/topbar.jsp" />
				<!-- End of Topbar -->
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
		        <div class="container-fluid">
		
		          <div>
		            <select>
		              <option value="">2020년도</option>
		              <option value="">2019년도</option>
		              <option value="">2018년도</option>
		              <option value="">2017년도</option>
		              <option value="">2016년도</option>
		            </select>
		            <select>
		              <option value="">1학기</option>
		              <option value="">2학기</option>
		            </select>
		
		            <input type="button" value="조회">
		          </div>
		          <br>
		
		          <!-- DataTales Example -->
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">시간표</h6>
		            </div>
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <!-- <table border="1px" width="100%" cellspacing="0"> -->
		                  <tbody>
		                    <tr align="center">
		                      <th id="day"></th>
		                      <th id="day">월요일</th>
		                      <th id="day">화요일</th>
		                      <th id="day">수요일</th>
		                      <th id="day">목요일</th>
		                      <th id="day">금요일</th>
		                    </tr>
		                    <tr align="center">
		                      <th>1교시<br>(09:00~10:15)</th>
		                      <td id="1th_Mon"></td>
		                      <td id="1th_Tue"></td>
		                      <td id="1th_Wed"></td>
		                      <td id="1th_Thu"></td>
		                      <td id="1th_Fri"></td>
		                    </tr>
		                    <tr align="center">
		                      <th>2교시<br>(10:30~11:45)</th>
		                      <td id="2th_Mon"></td>
		                      <td id="2th_Tue"></td>
		                      <td id="2th_Wed"></td>
		                      <td id="2th_Thu"></td>
		                      <td id="2th_Fri"></td>
		                    </tr>
		                    <tr align="center">
		                      <th>3교시<br>(12:00~13:15)</th>
		                      <td id="3th_Mon"></td>
		                      <td id="3th_Tue"></td>
		                      <td id="3th_Wed"></td>
		                      <td id="3th_Thu"></td>
		                      <td id="3th_Fri"></td>
		                    </tr>
		                    <tr align="center">
		                      <th>4교시<br>(13:30~10:45)</th>
		                      <td id="4th_Mon"></td>
		                      <td id="4th_Tue"></td>
		                      <td id="4th_Wed"></td>
		                      <td id="4th_Thu"></td>
		                      <td id="4th_Fri"></td>
		                    </tr>
		                    <tr align="center">
		                      <th>5교시<br>(15:00~16:15)</th>
		                      <td id="5th_Mon"></td>
		                      <td id="5th_Tue">프로그래밍 실습<br>교수명</td>
		                      <td id="5th_Wed"></td>
		                      <td id="5th_Thu">프로그래밍 실습<br>교수명</td>
		                      <td id="5th_Fri"></td>
		                    </tr>
		                    <tr align="center">
		                      <th>6교시<br>(16:30~17:45)</th>
		                      <td id="6th_Mon"></td>
		                      <td id="6th_Tue">프로그래밍 실습<br>교수명</td>
		                      <td id="6th_Wed"></td>
		                      <td id="6th_Thu">프로그래밍 실습<br>교수명</td>
		                      <td id="6th_Fri"></td>
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