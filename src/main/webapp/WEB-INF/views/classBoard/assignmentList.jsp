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
  <link rel="stylesheet" href="${contextPath}/resources/css/board_assignmentIndex.css">

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
                        <td><div id="board_title">과 제 목 록</div></td>
                        <c:if test="${user.status eq 'P' }">
                        <td><button class="btn btn-primary btn-sm" id="board_button" 
										onclick="location.href='assignmentWrite.do'">등록하기</button></td>
                        </c:if>
                    </tr>
            </table>

            <!-- 공지사항 목록 조회  -->
            <div id="rest_table_area">
                    <form method="GET">
                        <table id="rest_notice"  class=" table-hover">
                            <thead>
                                <tr>
                                    <th>
                                        <p>번호</p>
                                    </th>
                                    <th>
                                        <p>과제명</p>
                                    </th>
                                    <th>
                                        <p>제출기한</p>
                                    </th>
                                    <th>
                                    	<p>작성자</p>
                                    </th>
                                    <th>
                                        <p>조회수</p>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="a" items="${ NoticeList }">
								<tr>
									<td>${ a.aSeq }</td>
									<td><a href="assignmentDetail.do?aSeq=${ a.aSeq }">${a.aTitle }</a></td>
									<td>${ a.dueDate }</td>
									<td>${ profName }</td>
									<td>${ a.aCount }</td>
								</tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </div>
                
                <div class="container1">
                    <ul class="pagination">
                    	<c:if test="${ pi.currentPage eq 1 }">
                    		<li><a href="#">이전</a></li>
                    	</c:if>
                    	
                    	<c:if test="${ pi.currentPage ne 1 }">
                    		<c:url var="before" value="assignmentList.do">
                    			<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
                    		</c:url>
		                   		<li><a href="${ before }">이전</a></li>
                    	</c:if>
                    	
                    	<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	                    	<c:if test="${ p eq pi.currentPage }">
								<li><a href="#"><b>${ p }</b></a></li>
							</c:if>
							
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="pagination" value="assignmentList.do">
									<c:param name="currentPage" value="${ p }"/>
								</c:url>
								<li><a href="${ pagination }">${ p }</a></li>
							</c:if>
						</c:forEach>
                       
                       	<c:if test="${ pi.currentPage eq pi.maxPage }">
                    		<li><a href="#">다음</a></li>
                    	</c:if>
                    	
                    	<c:if test="${ pi.currentPage ne pi.maxPage }">
                    		<c:url var="after" value="assignmentList.do">
                    			<c:param name="currentPage" value="${ pi.currentPage +1 }"/>
                    		</c:url>
		                   		<li><a href="${ after }">다음</a></li>
                    	</c:if>
                    </ul>
                </div>


     	   </div>
       
            <!-- Footer -->
             <c:import url="../common/footer.jsp"/> 
            <!-- End of Footer -->


      </div>
            <!-- End of Main Content -->

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
