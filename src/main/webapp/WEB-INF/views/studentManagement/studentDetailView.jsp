<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">
  <style>
 #list{ text-align: center;}
  #btn1,#btn2{ background: white; border: 0px solid white; }
  #body{ width: 100%; }
  /*.contents {
          width: 80%;
          height: 70%;
          background: rgb(231, 231, 231);
          text-align : left;
          display : none;
          margin : auto; 
          margin-bottom: 20px;
      }*/

    #bar{ background-color: #edf1fc;
    border-bottom: solid #4e73df;
    height: 100px;
    padding: 40px;
    position: relative;
    bottom: 25px;
    white-space: nowrap;
    color: #4e73df;
    font-size: 35px; }
 /*  #main2{ text-align: left; margin: auto; font-size: 35px; line-height: 550%;} */
  #tb{
    font-size:22px;
    color: black;
  }
  #content_title{
margin-top: 30px;
font-size: 40px;
color: #252525;


}
#rest_table_area{
padding: 10px; 
height: 500px;
overflow-y: scroll;
}

#rest_lecture{
width: 100%;
border-top: 5px solid rgb(46, 109, 151);
color: #808080;


}

#rest_lecture tr{
height: 30px;
/* border-top: solid rgb(149, 149, 150) 1px; */
text-align: center;

}
#rest_lecture  tbody tr:nth-child(2n-1){
background: #f8f6ff;
}

#rest_lecture thead tr th{
  text-align: center;
}
/* #rest_lecture thead tr th:first-child,
#rest_lecture thead tr th:nth-child(2){
  width: 80px;
}
#rest_lecture thead tr th:nth-child(6){
width: 300px;
} */
#rest_lecture tr p{
margin-bottom: 0;

}
#rest_lecture_btn{
float: right;

margin-right: 10px;
}
.page {
 margin-top:50px;
 margin-left: 200px;

}
#text1,#text2{ width: 170px; }
#tb{
    font-size:22px;
    color: black;
    margin-left: 350px;
  }
  </style>
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
	<link href="${contextPath}/resources/css/sb-admin-3.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<%-- <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> --%>
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
	<style>
		#changeInfo {
			float: right;
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
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
<div id="body">
          <div id="bar">
              <p id="main2">수강생 상세 조회</p>
          </div>
          <br><br>
          <table border="0" cellspacing="0" width="700px" id="tb">
          <c:forEach var="std" items="${ list }" end="0">
            <tr>
                <td><h4 id="code">과목코드 : </h4></td>
                <td><input type="text" id="text1" placeholder="${ std.classId }" disabled name="sclassId" value="${ std.classId }"></td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <td><h4 id="code">교과목명 : </h4></td>
                <td><input type="text" id="text2" placeholder="${ std.className }" disabled></td>
            </tr>
            </c:forEach>
        </table>
          <br>
          <div class="col-sm-9 page">
            <div id="content_title">
                <h2>수강생 상세 조회</h2>
                <hr>
            </div>
            <div id="rest_table_area">
                <form method="GET">
                    <table id="rest_lecture"  class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <p>학생명</p>
                                </th>
                                <th>
                                    <p>학번</p>
                                </th>
                                <th>
                                    <p>전공</p>
                                </th>
                                <th>
                                    <p>학년</p>
                                </th>
                                <th>
                                    <p>연락처</p>
                                </th>
                                <th>
                                    <p>이메일</p>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="std" items="${ list }">
	                            <tr>
	                                <td>${ std.stdName }</td>
	                                <td>${ std.stdId }</td>
	                                <td>${ std.stdDepartment }</td>
	                                <td>${ std.stdSemester }</td>
	                                <td>${ std.stdTel }</td>
	                                <td>${ std.stdEmail }</td>
	                            </tr>
							</c:forEach>
                        </tbody>
                    </table>
            </div>
        </div>
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