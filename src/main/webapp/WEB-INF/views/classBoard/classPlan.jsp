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
  <link rel="stylesheet" href="${contextPath}/resources/css/class_plan.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
            <table id="title_button">
                <tbody>
                    <tr>
                        <td><div id="board_title">강의계획서</div></td>
                    </tr>
            </table>

            <!-- 공지사항 목록 조회  -->
            <div id="class_plan_area">
                <table id="class_info">
                    <div id="class_info_title"><div>교과목 개요</div></div>
                    <tbody>
                        <tr>
                            <td><div>강의명</div></td>
                            <td><div></div></td>
                            <td><div>담당교수</div></td>
                            <td><div></div></td>
                            <td><div>이메일</div></td>
                            <td><div></div></td>
                        </tr> 
                        <tr>
                            <td><div>년도</div></td>
                            <td><div></div></td>
                            <td><div>학기</div></td>
                            <td><div></div></td>
                            <td><div>학점</div></td>
                            <td><div></div></td>
                        </tr> 
                        <tr>
                            <td><div>이수구분</div></td>
                            <td><div></div></td>
                            <td><div>전공영역</div></td>
                            <td><div></div></td>
                            <td><div>과목코드</div></td>
                            <td><div></div></td>
                        </tr> 
                    </tbody>
                </table>
                <div id="class_sum_title"><div>교과목 개요</div></div>                               
                <div id="class_sum_content"><div>내용</div></div>
                <table id="class_goal">
                    <tbody>
                        <tr>
                            <td><div>교육목표</div></td>
                            <td><div></div></td>
                            <td><div>주교재</div></td>
                            <td><div></div></td>
                        </tr>
                    </tbody>
                </table> 

                <div id="class_detail_title"><div>주차별 계획</div></div>

                <table id="class_detail_table">
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td class="detail_head"><div>주차</div></td>
                            <td class="detail_head"><div>주제</div></td>
                            <td class="detail_head"><div>세부 내용</div></td>
                        </tr>   
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                        <tr>
                            <td><div>1</div></td>
                            <td><div>html</div></td>
                            <td><div>알아서 만들기</div></td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>  


       

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
