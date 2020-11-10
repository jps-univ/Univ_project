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
  <link rel="stylesheet" href="${contextPath}/resources/css/wirte_assignment.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>  
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
          <div id="write_title"><p>과제 등록</p></div>
            <form id="write_assignment">
                <div id="write_content"  class="shadow">
                    <table id="title_secret">
                        <tbody>
                            <tr>
                                <td><label class="write_subject">제목</label></td>
                                <td><input type="text" size="35" name="search" id="textTitle"></td>
                            </tr>
                            <tr>
                                <td><label class="write_subject">비밀글</label></td>
                                <td><input type="checkbox" name="secret_mode" id="secret_mode" value="unseen"></td>
                            </tr>
                            <tr>
                                <td><label class="write_subject2">내용</label></td>
                                <td><textarea class="summernote"><p>Hello Summernote</p></textarea></td>
                            </tr>
                   		     	<tr>
                                <td><label class="write_subject">첨부파일</label></td>
                                <td><input type="file" name="uploadFile"></td>
	                	      	</tr>
                        </tbody>
                    </table>
                </div>        
            </form>
            <div id="button_div">
                <table>
                    <tr>
                        <td></td>
                        <td><button id="board_button1">등록</button></td>
                        <td><button id="board_button2">취소</button></td>
                    </tr>
                </table>
            </div>  
          </div>               
        </div>



        <script>
            $(document).ready(function() {
                $('.summernote').summernote();
            });
        </script>     
       



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
