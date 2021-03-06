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
	
	<title>진포상대학교 | 졸업신청</title>
	
	<!-- Custom fonts for this template -->
	<link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min2.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="${contextPath}/resources/css/register_graduation.css?ver=1" rel="stylesheet">
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
               <h1>졸업신청</h1>
          </div>
             
          <div>
            <div class="warn_1">
            <label>
                <i class="fas fa-exclamation-circle" 
                    style="color: red;font-size: 30px; position: relative; top: 5px;"></i>
                    졸업신청 기간이 아닙니다. 기간은 2020-12-28 부터 2021-01-29입니다.
                </label>
            </div>
            <div class="warn_2">
                  <label>
                    <i class="fas fa-exclamation-triangle"
                    style="color: #868686; font-size: 35px; position: relative; top: 45px; left: 55px;"></i>
                        <ul style="margin-left: 100px">
                            <li>조기졸업은 종합서비스센터에서 오프라인 신청만 가능합니다.</li>
                            <li>졸업 신청이 불가한 경우는 다음과 같습니다.</li>
                                <ul>
                                        <li>총 이수학점을 채우지 못했을 경우</li>
                                        <li>필수 과목을 미수강 했을 경우</li>
                                </ul>
                            </ul> 
                  </label>
              </div>
          </div>
          

        <!--알림창 밑 부분-->
        <div>
          <h4 class="graduation">졸업신청</h4>
        </div>

        
          <c:choose>
            <c:when test="${studentGraduation.applicationStatus eq '신청가능' }">
               <div>
                 <button class="button" onclick="button_graduation();">신청하기</button>
               </div>
            </c:when>
            <c:when test="${studentGraduation.applicationStatus ne '신청가능' }">
               <div>
                 <button class="button" onclick="button_graduation();" disabled >신청하기</button>
               </div>
            </c:when>
         </c:choose>
        

        <div class="request">
            <label style="font-size: 12pt; margin-right: 100px;">
                <i class="far fa-check-square"
                    style="color: #868686;font-size: 30px; position: relative; top: 5px;"></i>
                <b>신청불가</b>
        </label>         
                <!-- <button class="button">신청하기</button> -->
                <i class="fas fa-angle-double-right"
                    style="color: #BDD4E9;font-size: 30px; position: relative; top: 5px;"></i>

            <label style="color: #BDD4E9; font-size: 12pt; margin-left: 100px;">       
                <i class="far fa-check-square"
                style="color: #BDD4E9;font-size: 30px; position: relative; top: 5px;"></i>
                <b>처리완료  </b>
            </label>
        </div>

        <hr style="margin-top: 10px; margin-bottom: 60px;
        width: 680px;">
       
               
        <div class="con1">
        <!--졸학신청관련정보-->
        <!-- <div class="con2"> -->
            <h4 class="list">졸업신청관련정보</h4>
        <!-- </div>      -->
                <div>
                    <dl class="line" style="position: relative; right: 100px;">
                        <dt style="color: #c5d9e8;">졸업신청상태</dt>
                        <dd style="margin: auto;">${ studentGraduation.applicationStatus }</dd>
                    </dl>
                </div>
                <div>
                    <dl class="line" style="position: relative; right: 75px;">
                        <dt style="color: #c5d9e8;">현재학적상태</dt>
                        <dd style="margin: auto;">${ studentGraduation.stdStatus }</dd>
                    </dl>
                </div>
                <div>
                    <dl class="line" style="position: relative; right: 50px;">
                        <dt style="color: #c5d9e8;">졸업신청일자</dt>
                        <dd style="margin: auto;">${ studentGraduation.graduationDate }</dd>
                    </dl>
                </div>
                <div>
                    <dl class="line" style="position: relative; right: 25px;">
                        <dt style="color: #c5d9e8;">총이수학기</dt>
                        <dd style="margin: auto;">${ studentGraduation.stdSemester }</dd>
                    </dl>
                </div>
                <div>
                    <dl class="line" style="position: relative;">
                        <dt style="color: #c5d9e8;">학적변동일자</dt>
                        <dd style="margin: auto;">${ studentGraduation.applicationDate }</dd>
                    </dl>
                </div>
            <!-- </div>   -->

          </div>
              <!-- /.container-fluid -->
      
            </div>

            <!-- End of Main Content -->
      
      <!--  --><script src="<%=request.getContextPath()%>/resources/js/register_button.js"></script>
				<!-- 여기까지 내용  -->

			<!-- Footer -->
			<c:import url="../common/footer.jsp" />
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->
		<script>
		function button_graduation(){
			
			location.href="graduation_approve.do";
		}
		
		</script>
<!--  	   <script>
 	   
   		  function button_graduation(){
   				
	    		if(confirm("졸업신청하시겠습니까?"))
	    							
	    			$.ajax({
	    				url:"graduation_approve.do",
	    				type:"post",
	    				data:{
	    					stdStatus:stdStatus
	    					
	    			},success:function(result)
	    				{
	    					if(result =="ok"){
	    						
	    						alert("졸업이 신청되었습니다.");
	    						location.href="graduation.do";
	    						
	    					}else{
	    						alert("실패하였습니다.");
	    					}
	    				},
	    			error:function(request, status, errorData)
	    			{
						console.log(request.status);
						console.log(request.responseText);
						console.log(errorData);
	    				alert("졸업이 신청되지 않았습니다.");
	    				
	    				}
	    				
	    			});
	    		
	    			alert("취소되었습니다.");
	    		}
	    	
	    	
   			  
   		</script>  -->

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