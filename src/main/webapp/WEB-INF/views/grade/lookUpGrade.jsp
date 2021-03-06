<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>진포상대학교 | 포탈</title>

<!-- Custom fonts for this template -->
<link
	href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="${contextPath}/resources/css/lookup-grade.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template -->
<link href="${contextPath}/resources/css/sb-admin-3.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<%-- <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> --%>
<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
<style>
#changeInfo {
	float: right;
}
</style>
<%-- <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script> --%>
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
				<!-- 전체 학점 및 성적-->
				<div style="margin: auto;">

					<p class="top-Text">학기별 성적 조회</p>

				</div>

				<!-- 개인의 전체 학점 및 신청/ 취득학점 부분 (성적증명서 출력 버튼 포함)-->
				<div class="total" style="height: 80px;">
					<button onclick="popup();" class="grade-print">성적 증명서 출력</button>
					<!-- 총 신청 학점 나오는부분 가로로 1행 8열 테이블처리해서 가로로 뺐음-->
					<table id="grade-top" class="grade-top">
						<thead>
							<tr>
								<th>
									<p>전체 학점 및 성적</p>
								</th>

							</tr>

						</thead>
						<tbody >
							<td>총 신청 학점</td>
							<td id="total-grade"></td>
							<td>총 취득 학점</td>
							<td>140</td>
							<td>백분위 성적</td>
							<td>99.9</td>
							<td>총 평점 평균</td>
							<td id="total-average"></td>
						</tbody>
					</table>
				</div>
				<!-- 중간부분 전공, 교양 기타로 나누어져 성적 나오는 부분-->
				<div id="grade">
					<div id="gradeL">
						<p id="middle-text">전공</p>
						<table class="grade-middle-L">
							<th>
							<tr>
								<td>구분</td>
								<td>신청학점</td>
								<td>취득학점</td>
							</tr>
							<tr>
								<td>전공</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							<tr>
								<td>합계</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							</th>

						</table>
					</div>

					<div id="gradeM">
						<p id="middle-text">교양</p>
						<table class="grade-middle-M">
							<th>
							<tr>
								<td>구분</td>
								<td>신청학점</td>
								<td>취득학점</td>
							</tr>
							<tr>
								<td>교양 필수</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							<tr>
								<td>균형 교양</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							<tr>
								<td>합계</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							</th>

						</table>
					</div>
					<div id="gradeR">
						<p id="middle-text">기타</p>
						<table class="grade-middle-R">
							<th>
							<tr>
								<td>구분</td>
								<td>신청 학점</td>
								<td>취득 학점</td>
							</tr>
							<tr>
								<td>자유 선택</td>
								<td>점수</td>
								<td>점수</td>
							</tr>
							<tr>
								<td>합계</td>
								<td>점수</td>
								<td>점수</td>
							</tr>

							</th>

						</table>
					</div>
				</div>
				<!-- 학년/ 학기별 성적 조회하기 위하여 년도 및 학기 선택하는곳-->

			<div id="main_con">  
          <p id="select_title"></p>
          <form id="semester">
            <fieldset id="select_semester" class="shadow">
              <select id="year">
                <option value = "2020">2021</option>
                <option value = "2020">2020</option>
                <option value = "2019">2019</option>
                <option value = "2018">2018</option>
                <option value = "2017">2017</option>
                <option value = "2016">2016</option>
                <option value = "2015">2015</option>
                <option value = "2014">2014</option>
              </select>
              <select id="grade">
                <option value="1">1학기</option>
                <option value="2">2학기</option>
              </select>
              <button class="btn btn-primary btn-sm" id="submit" type="button">조회</button>
            </fieldset>
          </form>


          <!-- 강의 목록 조회 -->
          <div id="rest_table_area">
                <form method="GET">
                    <table id="rest_lecture"  class="shadow table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <p>과목 코드</p>
                                </th>
                                <th>
                                    <p>학기</p>
                                </th>
                                <th>
                                    <p>과목명</p>
                                </th>
                                <th>
                                    <p>교수</p>
                                </th>
                                <th>
                                    <p>학점</p>
                                </th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </form>
            </div>
       
       	<script>
       		$('#submit').click(function(){
       			$.ajax({
       				url:'classList.do',
       				type:'get',
       				dataType:'JSON',
       				data : {
       					
       					userYear:$('#year').val(),
       					userGrade:$('#grade').val()
       				},
       				success : function(data){
       					
        				$tableBody = $('#rest_lecture tbody');
       					$tableBody.html(""); 
       					for (var i in data) {
       						var $tr = $("<tr>");
    						var $classCode = $('<td>').text(data[i].classCode);
    						var $classSemester = $('<td>').text(data[i].classSemester);
    						var $className = $('<td>').html('<a href="classBoardMain.do?classSeq='+data[i].classSeq+'&profName='+data[i].proName+'">'+data[i].className+'</a>');
    						var $proName = $('<td>').text(data[i].proName);
    						var $classGradeSize = $('<td>').text(data[i].classGradeSize);
    						
    						$tr.append($classCode);
    						$tr.append($classSemester);
    						$tr.append($className);
    						$tr.append($proName); 
    						$tr.append($classGradeSize);
    						
    						$tableBody.append($tr);
       					} 
       				}, error:function(){
       					console.log("시이바알");
       				}
       			});
       		});

       	</script>


        </div>
			</div>

			<c:import url="../common/footer.jsp" />
			<!-- End of Footer -->

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
	
	<script>
       		$('#search').click(function(){
       			$.ajax({
       				url:'classList.do',
       				type:'get',
       				dataType:'JSON',
       				data : {
       					
       					userYear:$('#year').val(),
       					userGrade:$('#grade').val()
       				},
       				success : function(data){
       					
        				$tableBody = $('#rest_lecture tbody');
       					$tableBody.html(""); 
       					for (var i in data) {
       						var $tr = $("<tr>");
    						var $classCode = $('<td>').text(data[i].classCode);
    						var $classSemester = $('<td>').text(data[i].classSemester);
    						var $className = $('<td>').html('<a href="classBoardMain.do?classSeq='+data[i].classSeq+'&profName='+data[i].proName+'">'+data[i].className+'</a>');
    						var $proName = $('<td>').text(data[i].proName);
    						var $classGradeSize = $('<td>').text(data[i].classGradeSize);
    						
    						$tr.append($classCode);
    						$tr.append($classSemester);
    						$tr.append($className);
    						$tr.append($proName); 
    						$tr.append($classGradeSize);
    						
    						$tableBody.append($tr);
       					} 
       				}, error:function(){
       					console.log("시이바알");
       				}
       			});
       		});

       	</script>
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