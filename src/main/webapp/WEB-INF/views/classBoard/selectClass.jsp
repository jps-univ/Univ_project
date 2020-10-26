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
<%@ page session="false"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>진포상대학교 | 포탈</title>

<!-- Custom fonts for this template common-->
<link
	href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="${contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap"
	rel="stylesheet">


<link rel="stylesheet"
	href="${contextPath}/resources/css/lecBoard_base.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/lec_select.css">


<!-- just this page -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- Custom styles for this page -->
<link
	href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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

				<div class="top_bar">
					<table class="professor_info">
						<tbody>
							<tr>
								<td><div id="semi_title">수강과목조회</div></td>
								<td><div id="semi_notice">공지사항</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- End of Topbar -->


				<!-- secondnavibar -->
				<div class="sec_navi">
					<ul id="sec_navibar">
						<li class="drop"><a href="boardMain.do">home</a></li>
						<li class="drop"><a href="#">강의 정보</a></li>
						<ul id="drop_submenu">
							<li><a href="classPlan.do">강의 계획서</a></li>
							<li><a href="noticeList.do">공지 사항</a></li>
						</ul>
						<li class="drop"><a href="#">학습 활동</a></li>
						<ul id="drop_submenu">
							<li><a href="assignmentList.do">과제제출</a></li>
						</ul>
						<li class="drop"><a href="#">성적 관리</a></li>
						<ul id="drop_submenu">
							<li><a href="#">성적 이의 신청</a></li>
						</ul>
					</ul>
				</div>
				<!-- End of pageTopbar -->

				<!-- 강의 목록 조회 -->
				<div id="rest_table_area">
					<form method="GET">
						<table id="rest_lecture" class=" table-hover">
							<thead>
								<tr>
									<th>
										<p>과목 코드</p>
									</th>
									<th>
										<p>학기</p>
									</th>
									<th>
										<p>과목명</p>
									</th>
									<th>
										<p>교수</p>
									</th>
									<th>
										<p>학점</p>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>A12</td>
									<td>1</td>
									<td>유승제와 함께하는 html</td>
									<td>유승제</td>
									<td>3</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>


			</div>



		</div>
		<!-- End of Main Content -->





		<!-- Footer -->
<%-- 		<c:import url="../common/footer.jsp" /> --%>
		<!-- End of Footer -->

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
