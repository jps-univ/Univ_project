<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>진포상대학교 | 포탈</title>
    <!-- Custom fonts for this template-->

    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
          <c:import url="../common/sidebar_professor.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
              	<c:import url="../common/topbar_professor.jsp"/>
                <!-- End of Topbar -->
                
                <div class="container-fluid">
                    <h2 class="h3 mb-2 text-gray-800">강의평가 조회</h2>
                    <a href="lecture_evaluation_detail.do">상세페이지로가자</a>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

<!--                             <h6 class="m-0 font-weight-bold text-primary">강의 선택 : <select>
                                    <option value="">---------</option>
                                </select>
                            </h6> -->
                            <form action="professorLecture.do" method="post">
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
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr align="center">
                                            <th>학번</th>
                                            <th>이름</th>
                                            <th>단과대학</th>
                                            <th>학과</th>
                                            <th>여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="s" items="${ schedule }">
	                                        <tr align="center">
	                                            <td>${  }</td>
	                                            <td>***</td>
	                                            <td>과학기술대학</td>
	                                            <td>컴퓨터공학과</td>
	                                            <td>o</td>
	                                        </tr>
	                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
     
     <script type="text/javascript">
     	function 
     </script>

    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/demo/chart-pie-demo.js"></script>
</body>
</html>