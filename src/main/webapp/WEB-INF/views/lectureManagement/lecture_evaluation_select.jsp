<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<style>


.top {
    background-color: #edf1fc;
    border-bottom: solid #4e73df;
    height: 100px;
    padding: 40px;
    position: relative;
    bottom: 25px;
    white-space: nowrap;
    color: #4e73df;
}
#explanation{
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 15px;
}

	</style>
</head>
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
        <c:import url="../common/sidebar.jsp"/>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
<c:import url="../common/topbar.jsp"/>
       
        <!-- End of Topbar -->
        <div class="top">
                    <h1>강의 평가 선택</h1>
                </div>
                <div class="container-fluid">
                    <div id="main_content">
                        <hr>
                        <div id="explanation">

                            <ul>
                                <li>이 설문조사는 강의내용을 충실하게 하여 수업의 질을 제고하는데 필요한 기초자료를 수집하기 위해 시행됩니다.</li>
                                <li>수강한 과목과 관련한 아래의 질문을 읽고 각 문항별로 본인이 동의하는 응답을 택하여 마우스로 클릭해주시기 바랍니다.</li>
                                <li>해당과목의 설문을 마쳐야만 성적 공시조회가 가능합니다. </li>
                                <li>강의평가가 완료된 교과목은 추후 수정할 수 없으니 작성에 신중을 기하여 주시기 바랍니다.</li>
                            </ul>


                        </div>
                        <hr>
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <span class="m-0 font-weight-bold">
                                    년도 : <label class=" text-primary">2020</label>
                                    학기 : <label class=" text-primary">1</label>

                                    
                                </span>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover" id="eva_table" width="100%" cellspacing="0" >
                                        <thead>
                                            <tr>
                                                <th width="90px">번호</th>
                                                <th width="130px">강의 코드</th>
                                                <th>강의명</th>
                                                <th>담당교수</th>
                                                <th width="90px">여부</th>
                                            </tr>
                                        </thead>
                                  
                                        <tbody>
                                           <tr>
                                               <td>1</td>
                                               <td>10102</td>
                                               <td>자바프로그래밍</td>
                                               <td>유승제</td>
                                               <td class="text-primary">x</td>
                                           </tr>
                                      
                                        
                                        </tbody>
                                    </table>
                                    
                                   
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Jinposang University 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->
		<c:import url="../common/logoutModal.jsp"/>
        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    

    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/main_page.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugins -->
    <script src="${contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/demo/chart-pie-demo.js"></script>
</body>
</html>