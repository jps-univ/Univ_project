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
		#writeBtn{
		  float: right;
		}
		
		#search{
		  text-align: center;
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
		<c:import url="../common/sidebar_professor.jsp" />
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
		              <h6 class="m-0 font-weight-bold text-primary">상담 관리
		                <input type="button" value="글쓰기" id="writeBtn">
		              </h6>
		              
		            </div>
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		
		                <tbody>
		                  <tr align="center">
		                    <th>번호</th>
		                    <th>제목</th>
		                    <th>작성자</th>
		                    <th>작성일</th>
		                    <th>조회수</th>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  <tr align="center">
		                    <td>1</td>
		                    <td>질문있습니다.</td>
		                    <td>홍길동</td>
		                    <td>2020.10.13</td>
		                    <td>1</td>
		                  </tr>
		                  
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div id="search">
		            <select>
		              <option>제목</option>
		              <option>번호</option>
		              <option>글쓴이</option>
		              <option>내용</option>
		            </select>
		
		            <input type="text" name="" id="">
		
		            <input type="submit" value="검색">
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