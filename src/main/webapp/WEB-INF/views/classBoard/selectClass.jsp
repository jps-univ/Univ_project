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
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <style>
  #rest_table_area{    
    position: relative;
    top: 40px;
    padding: 10px;
    height: 30%;
    border-radius: 7px;
    margin: auto;
    text-align: center;
    }
    
    #main_con{
    overflow-y: hidden;
    width: 100%;
	height: 82%;
    margin: auto;
}
    
	#semester{
    width: 30%;
    margin-top: 15px;
    margin-left: 27.5%;
}

    #rest_lecture tr{
    height: 30px;
    border-bottom: solid rgb(149, 149, 150) 1px;
    text-align: center;
    font-size:14px;
    
    }


  </style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <!-- Sidebar -->
    <div id="main_sidebar">
	      <c:if test="${ userStatus eq 'S' }" >
   			<c:import url="../common/sidebar.jsp" />
   		  </c:if>
	      <c:if test="${ userStatus eq 'P' }" >
   			<c:import url="../common/sidebar_professor.jsp" />
   		  </c:if>
    </div>
    
    <!-- End of Sidebar -->
    
    <!-- 전체 페이지 Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        
        <%@include file="../common/select_mainTopbar.jsp" %>


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
    						var $classCode = $('<td height="40px">').text(data[i].classCode);
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


            <!-- Footer -->
            <c:import url="../common/footer.jsp"/>
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
