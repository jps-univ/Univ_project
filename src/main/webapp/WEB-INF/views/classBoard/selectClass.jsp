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
<%--   <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css?ver=1">  --%>      
  <link rel="stylesheet" href="${contextPath}/resources/css/board_selectClass.css?ver=1">
  <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base_select.css">       
  <link rel="stylesheet" href="${contextPath}/resources/css/lec_select.css">
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

  		 <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar 로그인창 -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님 환영합니다.</span>
              </a>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="modal" data-target="#logoutModal" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그아웃</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->

        <!-- page top bar -->
        
        <div class="top_bar">
           <h1>강의게시판</h1>
        </div>
 

        <!-- second navibar -->
        <div class="sec_navi shadow">
            <ul id="sec_navibar">
                <li class="drop"><a href="selectClass.do">수강과목조회</a></li>
                <li class="drop"><a href="#">강의 정보</a></li>
                    <ul class="drop_submenu">
                        <li><a href="classPlan.do">강의 계획서</a></li> 
                        <li><a href="cNoticeList.do">공지 사항</a></li>
                    </ul>
                <li class="drop"><a href="#">학습 활동</a></li>
                    <ul class="drop_submenu">
                        <li><a href="assignmentList.do">과제</a></li>
                    </ul>
                <li class="drop"><a href="#">성적 관리</a></li>
                    <ul class="drop_submenu">
                        <li><a href="gradeObjectionList.do">성적 이의 신청</a></li>
                    </ul>                    
            </ul>
        </div>

  		<c:import url="../common/select_mainTopbar.jsp" />
        

        <div id="main_con">  
          <p id="select_title"></p>
          <form id="semester">
            <fieldset id="select_semester" class="shadow">
              <select id="year">
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
              <button id="submit" type="button">조회</button>
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
       		
       		
       		
            $(function(){
                $('.drop_submenu').slideUp();
                $('.drop').click(function(){
                  $('.drop_submenu').slideUp();
                  $(this).next('ul').toggle();
                });
              });
       		
       	</script>


        </div>
       

      </div>


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
