<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>진포상대학교 | 등록금납부조회 및 출력</title>
	
	<!-- Custom fonts for this template -->
	<link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="${contextPath}/resources/css/payment.css" rel="stylesheet">
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
    <style>
    .reverse{
      background: #E4E4E4;
    }
  </style>
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

				<!-- Topbar -->
				<c:import url="../common/topbar.jsp" />
				<!-- End of Topbar -->
				
				<!-- 여기서부터 내용  -->
				        <!-- Begin Page Content -->
        
       <div class="content">
        <div class="top">
            <h1>등록금 납부 조회 및 출력</h1>
        </div>


      <div class="container">
        <div>
          <h6 class="enroll">등록급 납부내역</h6>
        </div>

        <div class="printp">
          
          <input class="btn btn-primary btn-sm" type="button" onclick="printp();" value="인쇄하기">

        </div> 

         <form method="GET">
            <table class="table table-condensed">
              <thead>
                <tr>
                    <th>
                        <p class="head"></p>
                    </th>
                    <th>
                        <p class="head">학년도</p>
                    </th>
                    <th>
                        <p class="head">학기</p>
                    </th>
                    <th>
                        <p class="head">학년</p>
                    </th>
                    <th>
                        <p class="head">등록일자</p>
                    </th>
                    <th>
                        <p class="head">등록금액</p>
                    </th>
                    <th>
                        <p class="head">사전감면</p>
                    </th>
                    <th>
                        <p class="head">납부금액</p>
                    </th>
<!--                     <th>
                        <p class="head">인쇄하기</p>
                    </th> -->
                </tr>  
            </thead> 
            <tbody>
                <input type="hidden" class="stdId" value="${ id }"/>    
                <c:forEach var="p" items="${ list }">
                <tr class="line">
                	<td><input type="radio" name="checkRadio" class="checkRadio" value="${ p.paymentNo }"></td>
                	<c:set var="dueDate" value="${ fn:substring( p.dueDate, 0, 4 )  }"/>
                    <td>${ dueDate }학년도</td>
                    <fmt:parseNumber var="Semester" value="${ (p.schoolYear + 1) % 2 }" integerOnly="true"/>
                    <c:choose>
                        <c:when test="${ Semester eq 0 }">
                    		<td>1학기</td>
                        </c:when>
                        <c:when test="${ Semester eq 1 }">
                    		<td>2학기</td>
                        </c:when>
                    </c:choose>
                    <fmt:parseNumber var="stdSemester" value="${ (p.schoolYear + 1) div 2 }" integerOnly="true"/>
                    <td>${ stdSemester }학년</td>
                    <td>${ p.dueDate }</td>
                    <td>${ p.paymentAmount }</td>
                    <td>${ p.totalScholarships }</td>
                    <td>${ p.totalPayments }</td>
<!--                      <td>   
                      <button style="text-decoration: none;" class="btn btn-primary btn-sm" onclick="print();">클릭</button>
                    </td>  -->
                </tr>
                </c:forEach>
            </tbody>
          </table>
        </form>
    
        <!--알림-->
        <div class="alarm">
          <label>
            <i class="fas fa-exclamation-triangle"
               style="color: #868686; font-size: 35px; position: relative; top: 22px; left: 50px;"></i>
              <ul id="alarm">
                <li>등록금을 납수하신 당일은 은행에서 자료가 오후 7시 이후 경리과로 전송됩니다.</li>
                <li>등록금 납부 다음날 납부확인을 해주시기 바랍니다.</li>
              </ul>
           </label>
        </div>

        <div class="mini">
          <p>계좌번호는 기업은행 990-009079-02-010 입니다.</p>
        </div>

      </div>


      <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
      
      <script src="<%=request.getContextPath()%>/resources/js/payment&salary.js"></script>
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