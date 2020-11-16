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
				<c:import url="../common/topbar_professor.jsp" />
				<!-- End of Topbar -->
				
				<div class="top">
               		<h1>전체 시간표</h1>
          		</div>
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
				<form action="professorSchedule.do" method="post">
		        <div class="container-fluid">
		          <div>
		            <select name="classYear" id="year">
		              <option value="2021">2021년도</option>
		              <option value="2020">2020년도</option>
		              <option value="2019">2019년도</option>
		              <option value="2018">2018년도</option>
		              <option value="2017">2017년도</option>
		              <option value="2016">2016년도</option>
		            </select>
		            <select name="classSemester" id="semester">
		              <option value="1">1학기</option>
		              <option value="2">2학기</option>
		            </select>
		
		            <!-- <input type="button" class="btn btn-primary btn" value="조회" id="selectSchedule" onclick="scheduleBtn()"> -->
		            <button type="submit" class="btn btn-primary btn-sm">조회</button>
		          </div>
		          </form>
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
		                      <th>1교시<br>(09:00~09:50)</th>
		                      <td id="1th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 1 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="1th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 1 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="1th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 1 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="1th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 1 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="1th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 1 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>

		                    <tr align="center">
		                      <th>2교시<br>(10:00~10:50)</th>
		                      <td id="2th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 2 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="2th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 2 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="2th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 2 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="2th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 2 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="2th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 2 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    
		                    <tr align="center">
		                      <th>3교시<br>(11:00~11:50)</th>
		                      <td id="3th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 3 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="3th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 3 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="3th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 3 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="3th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 3 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="3th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 3 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    <tr align="center">
		                      <th>4교시<br>(12:00~12:50)</th>
		                      <td id="4th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 4 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="4th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 4 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="4th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 4 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="4th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 4 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="4th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 4 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    
		                    <tr align="center">
		                      <th>5교시<br>(13:00~13:50)</th>
		                      <td id="5th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 5 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="5th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 5 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="5th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 5 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="5th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 5 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="5th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 5 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    
		                    <tr align="center">
		                      <th>6교시<br>(14:00~14:50)</th>
		                      <td id="6th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 6 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="6th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 6 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="6th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 6 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="6th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 6 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="6th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 6 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    <tr align="center">
		                      <th>7교시<br>(15:00~15:50)</th>
		                      <td id="7th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 7 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="7th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 7 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="7th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 7}">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="7th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 7 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="7th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 7 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    
		                    <tr align="center">
		                      <th>8교시<br>(16:00~16:50)</th>
		                      <td id="8th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 8 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="8th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 8 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="8th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 8 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="8th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 8 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="8th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 8 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                    </tr>
		                    
		                    <tr align="center">
		                      <th>9교시<br>(17:00~17:50)</th>
		                      <td id="9th_Mon">
		                    	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '월' && s.time.hour eq 9 }">${ s.className }<br>${ s.room } 호</c:if>
			                    </c:forEach>
		                      </td>
		                      <td id="9th_Tue">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '화' && s.time.hour eq 9 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="9th_Wed">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '수' && s.time.hour eq 9 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="9th_Thu">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '목' && s.time.hour eq 9 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
		                      </td>
		                      <td id="9th_Fri">
		                      	<c:forEach var="s" items="${ schedule }">
		                      	<c:if test="${ s.time.day eq '금' && s.time.hour eq 9 }">${ s.className }<br>${ s.room } 호</c:if>
		                      	</c:forEach>
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