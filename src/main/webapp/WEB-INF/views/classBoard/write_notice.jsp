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
  <link rel="stylesheet" href="${contextPath}/resources/css/write_notice.css">
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
           <form action="enrollcNotice.do" method="post" enctype="multipart/form-data">
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
                                <input type="text" size="30" class="nTitle" name="nTitle">
                                  </td>
                              </tr>
                              <tr>
                                  <th>
                                      <p>첨부파일</p>
                                  </th>
                                  <td>
                              <input type="file" class="uploadFile" name="uploadFile">
                                  </td>
                              </tr>
                              <tr>
                                  <td style="text-align:center; font-weight:bold;">
                                      <p>내용</p>
                                  </td>
                                  <td>
                                      <textarea class="nContent" name="nContent"></textarea>
                                  </td>
                              </tr>
                          </thead>
                      </table>
                  </div>

                  <div>
                     <input type="submit" value="제출!">
<!--                       <input type="submit" class="btn writeBtn" value="등록"> -->
                      <input type="button" class="btn writeBtn" onclick="cancelBtn()" value="취소!" id="cancelBtn" style="margin-right: 20px;">
                      <input type="hidden" id="classSeq" name="classSeq" value="${classSeq }">
                      <input type="hidden" id="profName" name="profName" value="${profName }">
                      <c:if test="${ user.status eq 'P' }">
                      <input type="hidden" id="profId" name="profId" value="${userId }">
                      </c:if>
                      <c:if test="${ user.status eq 'S' }">
                      <input type="hidden" id="stdId" name="stdId" value="${userId }">
                      </c:if>
                  </div>

                 </div>
            </form>
         </div>
         
<%--              <input type="hidden" id="currentPage" value="${(int) currentPage}" name="currentPage" /> --%>

 
       



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