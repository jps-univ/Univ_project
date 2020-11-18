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
	
	<title>진포상대학교 | 급여조회 및 출력</title>
	
	<!-- Custom fonts for this template -->
	<link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="${contextPath}/resources/css/salary_1.css" rel="stylesheet">
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
        
        <div class="content">
          <div class="top">
              <h1>급여조회 및 출력</h1>
          </div>


        <div class="container">
          <div>
            <h6 class="salary">급여지급 내역</h6>
            <select class="select" id="schoolYear">
              <!-- <option>==== 연도 ====</option> -->
<!--               <option>2018년</option>
              <option>2019년</option>
              <option>2020년</option> -->
            </select>
          </div>

          <div class="prints">
           
            <input class="btn btn-primary btn-sm" type="button" onclick="prints();" value="인쇄하기">
            
          </div>

           <form method="GET">
              <table class="table table-condensed" id="salaryTable">
                <thead>
                  <tr>
                    <th>
                        <p class="head"></p>
                    </th>
                      <th>
                          <p class="head">지급년도</p>
                      </th>
                      <th>
                          <p class="head">지급월</p>
                      </th>
                      <th>
                          <p class="head">지급은행</p>
                      </th>
                      <th>
                          <p class="head">지급계좌</p>
                      </th>
                      <th>
                          <p class="head">실지급액</p>
                      </th>
                  </tr>  
              </thead> 
              <tbody>
                  <input type="hidden" class="profId" value="${ id }"/> 
                  <c:forEach var="s" items="${ list }">
                  <tr class="line">
                      <td><input type="radio" name="checkRadio" id="checkRadio" class="checkRadio" value="${ s.salaryNo }"></td>
                      <td>${ s.schoolYear }</td>
                      <td>${ s.schoolMonth }</td>
                      <td>${ s.profBank }</td>
                      <td>${ s.profAccount }</td>
                      <td>${ s.salaryTotal }</td>
                  </tr>
                  </c:forEach>
<!--                   <tr class="line">
                      <td>2019</td>
                      <td>02</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>12,777,000</td>
                  </tr>
                  <tr class="line">
                      <td>2019</td>
                      <td>03</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>
                  <tr class="line">
                      <td>2019</td>
                      <td>04</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>
                  <tr class="line">
                      <td>2019</td>
                      <td>05</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>
                  <tr class="line">
                      <td>2019</td>
                      <td>06</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>
                  <tr class="line">
                      <td>2019</td>
                      <td>07</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>   
                  <tr class="line">
                      <td>2019</td>
                      <td>08</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>   
                  <tr class="line">
                      <td>2019</td>
                      <td>09</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>12,777,000</td>
                  </tr>   
                  <tr class="line">
                      <td>2019</td>
                      <td>10</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>   
                  <tr class="line">
                      <td>2019</td>
                      <td>11</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>   
                  <tr class="line">
                      <td>2019</td>
                      <td>12</td>
                      <td>기업은행</td>
                      <td>990-009078-02-010</td>
                      <td>9,777,000</td>
                  </tr>    -->
              </tbody>
            </table>
          </form>
      
          <!--알림-->
          <div class="alarm">
            <label>
              <i class="fas fa-exclamation-triangle"
                 style="color: #868686; font-size: 35px; position: relative; top: 22px; left: 50px;"></i>
                <ul id="alarm">
                  <li>급여 산정기간은 매월 16일부터 익월 15일입니다.</li>
                  <li>기타 문의사항은 종합서비스센터(010-5132-4190)로 연락바랍니다.</li>
                </ul>
             </label>
          </div>

        </div>

        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
      <script src="<%=request.getContextPath()%>/resources/js/payment&salary.js"></script>
				<!-- 여기까지 내용  -->
				
 	  <script>
               $(function(){
            	   $(".select").change(function(){
                	$.ajax({
                		url:"salary_Year.do",
            			dataType:"json",
            			data:{
            				schoolYear:$("#schoolYear").val()
            			},success:function(data){
            				console.log(data);
            				$("#salaryTable tbody").empty();
            				$("#salaryTable").append();
	              				for(var index =0; index < data.length;index++){
	              				/* $("#salaryTable tbody").append("<tr>");
            					$("#salaryTable tbody tr").append("<td><input type="+"radio "+"name ="+"checkRadio "+"id="+"checkRadio "+"value=" +data[index].salaryNo+">");
            					$("#salaryTable tbody tr").append("<td>"+data[index].schoolYear);
            					$("#salaryTable tbody tr").append("<td>"+data[index].schoolMonth);
            					$("#salaryTable tbody tr").append("<td>"+data[index].profBank);
            					$("#salaryTable tbody tr").append("<td>"+data[index].profAccount);
            					$("#salaryTable tbody tr").append("<td>"+data[index].salaryTotal); */
            					var $tr =$('<tr>');
            					var $input= $("<td><input type="+"radio "+"name ="+"checkRadio "+"id="+"checkRadio "+"class="+"checkRadio "+"value=" +data[index].salaryNo+">");
            					var $schoolYear =$('<td>').text(data[index].schoolYear);
            					var $schoolMonth =$('<td>').text(data[index].schoolMonth);
            					var $profBank =$('<td>').text(data[index].profBank);
            					var $profAccount =$('<td>').text(data[index].profAccount);
            					var $salaryTotal =$('<td>').text(data[index].salaryTotal);
            					
            					$tr.append($input);
            					$tr.append($schoolYear);
            					$tr.append($schoolMonth);
            					$tr.append($profBank);
            					$tr.append($profAccount);
            					$tr.append($salaryTotal);
            					$('#salaryTable tbody').append($tr);
            				} 
            			},error:function(rquest,error,errorCode){
            				console.log("전송실패");
            			}	
                	});
                }); 
            }); 	   
      </script> 

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