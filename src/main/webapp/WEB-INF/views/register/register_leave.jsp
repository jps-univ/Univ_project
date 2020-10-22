<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<title>진포상대학교 | 휴학신청</title>
	
	<!-- Custom fonts for this template -->
	<link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="${contextPath}/resources/css/register_leave.css" rel="stylesheet">
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
	<style>

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
             <h1>휴학신청</h1>
           </div>
       
           <div>
             <div class="warn_1">
              <label>
                 <i class="fas fa-exclamation-circle" 
                      style="color: red;font-size: 30px; position: relative; top: 5px;"></i>
                      휴학신청 기간이 아닙니다. 기간은 2020-07-27 부터 2020-09-24 까지 입니다.
                 </label>
             </div>
             <div class="warn_2">
                   <label>
                      <i class="fas fa-exclamation-triangle"
                      style="color: #868686; font-size: 35px; position: relative; top: 80px; left: 55px;"></i>
                          <ul style="margin-left: 100px">
                              <li>군입대휴학 및 대체휴학, 출산휴학은 종합서비스센터에서 오프라인 신청만 가능합니다.</li>
                              <li>휴학 신청이 불가한 경우는 다음과 같습니다.</li>
                                  <ul>
                                          <li>신입/편입/재입학한 학기에 휴학신청한 경우(단 입영휴학은 종합서비스센터에서 오프라인 신청이 가능)</li>
                                          <li>재휴학 후 다시 휴학신청한 경우</li>
                                          <li>재학기간 중 휴학기간이 통산 5년을 초과한 경우</li>
                                              <ul>
                                                  <li>예) 휴학(1년) + 재휴학(1년) + 복학 + 휴학(1년) + 재휴학(1년) + 복학 + 휴학(1년) = 5년</li>
                                              </ul>
                                      <li>무기정학 및 징계를 받은 경우(해제 전까지)</li>
                                      <li>군입대 휴학 신청 후 입영통지서등 종합서비스센터로 미제출시</li>
                                      <li>휴학 신청 후 다시 복학 신청한 경우</li>
                                  </ul>
                              </ul> 
                   </label>
               </div>
            </div>
 
         <!--알림창 밑 부분-->
         <div>
            <h4 class="leave">휴학신청</h4>
         </div>
 
          <div class="con1">
            <!--휴학신청관련정보-->
            <div class="con2">
                <h4 class="list">휴학신청관련정보</h4>
                <div>
                    <dl class="line" style="position: static;">
                        <dt style="color: #c5d9e8;">휴학신청상태</dt>
                        <dd style="margin: auto;">처리완료</dd>
                    </dl>
                  </div>
                  <div>
                    <dl class="line" style="position: relative; bottom: 49px; left: 110px;">
                        <dt style="color: #c5d9e8;">현재학적상태</dt>
                        <dd style="margin: auto;">휴학</dd>
                    </dl>
                  </div>
                  <div>
                    <dl class="line" style="position: relative; bottom: 30px;">
                        <dt style="color: #c5d9e8;">최종등록년도/학기</dt>
                        <dd style="margin: auto;">2019/2</dd>
                    </dl>
                  </div>
                  <div>
                    <dl class="line" style="position: relative; bottom: 79px; left: 110px;">
                        <dt style="color: #c5d9e8;">최종등록일자</dt>
                        <dd style="margin: auto;">2019/10/16</dd>
                    </dl>
                  </div>
                </div>
            <!--휴학 사유 및 기간-->
            <div class="con3">
              <h4 class="list">휴학사유및기간</h4>
              <div class="box"> 
              <select class="select" >
                <option>==== 선택 ====</option>
                <option>일반휴학</option>
                <option>입영휴학</option>
                <option>질병휴학</option>
                <option>임신출산육아휴학</option>
                <option>창업휴학</option>
                <option>재휴학</option>
              </select>
              <select class="select" >
                <option>==== 선택 ====</option>
                <option>6개월</option>
                <option>1년</option>
                <option>2년</option>
              </select>
              <button class="select" onclick="button_leave();">저장</button>
              <!-- <input class="select" 
                      type="submit" value="저장"> -->
            </div>
            </div>
            <!--휴/복학 시기-->
            <div class="con4">
              <h4 class="list">휴/복학시기</h4>
              <div >
                <div>
              <dl class="line" style="position: static;">
                <dt style="color: #c5d9e8;">휴학년도/학기</dt>
                <dd style="margin: auto;">2020/2</dd>
              </dl>
              </div>
              <div>
              <dl class="line" style="position: relative; bottom: 49px; left: 100px;">
                <dt style="color: #c5d9e8;">복학예정도/학기</dt>
                <dd style="margin: auto;">2021/1</dd>
              </dl>
            </div> 
            </div>
          </div>
        </div>  

        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
      <script src="<%=request.getContextPath()%>/resources/js/register_button.js"></script>
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