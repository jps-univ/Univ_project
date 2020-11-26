<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>진포상대학교 | 포탈</title>
    <!-- Custom fonts for this template common-->
    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">


    <%-- <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css"> --%>
    <link rel="stylesheet" href="${contextPath}/resources/css/board_noticeIndex.css">

  
	<!-- just this page -->
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <c:import url="../common/sidebar.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">



            <!-- Main Content -->
            <div id="content">


                
                <!-- pagetopbar -->
                
                <c:import url="../common/pageTopbar.jsp" />

                <!-- End of pageTopbar -->
                
                
                <!-- main content -->
				<div id="main_con">
					<table id="title_button">
						<tbody>
							<tr>
								<td><div id="board_title">과 목 공 지</div></td>
								<c:if test="${ user.status eq 'p' }">
								<td><button class="btn btn-primary btn-sm" id="board_button">등록하기</button></td>
								</c:if>
							</tr>
					</table>

					<!-- 공지사항 목록 조회  -->
					<div id="rest_table_area">
						<form method="GET">
							<table id="rest_notice" class=" table-hover">
								<thead>
									<tr>
										<th>
											<p>번호</p>
										</th>
										<th>
											<p>제목</p>
										</th>
										<th>
											<p>작성자</p>
										</th>
										<th>
											<p>작성일</p>
										</th>
										<th>
											<p>조회수</p>
										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${ NoticeList }"> 
									<tr>
										<td>${ c.nId }</td>
										<td><a href="cNoticeDetail.do?nId=${c.nId }">${ c.nTitle}</a></td>
										<td>${ c.profName}</td>
										<td>${ c.nCreateDate}</td>
										<td>${ c.nCount}</td>
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
                    		<c:url var="before" value="cNoticeList.do">
                    			<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
                    		</c:url>
		                   		<li><a href="${ before }">이전</a></li>
                    	</c:if>
                    	
                    	<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	                    	<c:if test="${ p eq pi.currentPage }">
								<li><a href="#"><b>${ p }</b></a></li>
							</c:if>
							
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="pagination" value="cNoticeList.do">
									<c:param name="currentPage" value="${ p }"/>
								</c:url>
								<li><a href="${ pagination }">${ p }</a></li>
							</c:if>
						</c:forEach>
                       
                       	<c:if test="${ pi.currentPage eq pi.maxPage }">
                    		<li><a href="#">다음</a></li>
                    	</c:if>
                    	
                    	<c:if test="${ pi.currentPage ne pi.maxPage }">
                    		<c:url var="after" value="cNoticeList.do">
                    			<c:param name="currentPage" value="${ pi.currentPage +1 }"/>
                    		</c:url>
		                   		<li><a href="${ after }">다음</a></li>
                    	</c:if>
                    </ul>
                </div>
				
				</div>
				
				


			</div>
            <!-- End of Main Content -->
            
            
            
            
            
            <!-- Footer -->
             <c:import url="../common/footer.jsp"/> 
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
    <c:import url="../common/logoutModal.jsp"/>

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
