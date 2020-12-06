<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">

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
	
	<link href="${contextPath}/resources/css/gradeproof.css" rel="stylesheet">
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
			<c:if test="${!empty sessionScope.loginUser }">
			</c:if>
			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<c:import url="../common/topbar.jsp" />
				<!-- End of Topbar -->

        <p class="HStyle0"><span style='font-size:12.0pt;line-height:160%;'>[별지</span><span
          style='font-size:12.0pt;letter-spacing:20%;line-height:160%;'> 제32호서식</span><span
          style='font-size:12.0pt;line-height:160%;'>]</span></p>

  <p class="HStyle0" style='margin-left:8.0pt;text-align:center;line-height:150%;'><span
          style='font-size:24.0pt;letter-spacing:20%;font-weight:bold;line-height:150%;'>성 적 증 명 서</span></p>

  <p class="HStyle14" style='text-align:left;line-height:160%;'><span
          style='font-size:10.0pt;font-family:한양신명조,한컴돋움;font-weight:normal;line-height:160%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  </p>

  <p class="HStyle0">
  <div style="margin: auto;">
      <table border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;border:none;'>
         	
            <c:set var="birth" value="${ loginUser.stdBirth }"/>
            <c:set var="department" value="${loginUser.stdDepartment }"/>
            
            
          <tr>
              <td  rowspan="2" width="53" height="50" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>학번</p>
              </td>
              <td rowspan="2" width="149" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>${loginUser.stdId }</p>
              </td>
              <td rowspan="2" width="66" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>성&nbsp;&nbsp; 명</p>
                  <p class="HStyle0" style='text-align:center;'><span style='letter-spacing:-3%;'>(한&nbsp; 자)</span>
                  </p>
              </td>
              <td width="136" height="26" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>${loginUser.stdName }</p>
              </td>
              <td rowspan="2" colspan="2" width="202" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
              <td rowspan="2" width="52" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>입&nbsp; 학</p>
                  <p class="HStyle0" style='text-align:center;'>년월일</p>
              </td>
              <td rowspan="2" width="150" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>
                  	<c:out value="${loginUser.stdEntrance }"/>
                  </p>
              </td>
              <td rowspan="2" width="50" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>졸&nbsp; 업</p>
                  <p class="HStyle0" style='text-align:center;'>년월일</p>
              </td>
              <td rowspan="2" width="128" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>2021.02.21</p>
                  
              </td>
          </tr>
          <tr>
              <td width="136" height="24" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td width="53" height="41" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>성별</p>
              </td>
              <td width="149" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>
            			<c:set var="gender" value="${ fn:substring(birth, 7, 8) }"/>
            			<c:if test="${gender eq 1 or gender eq 3 }">
            				(남)
            				
            			</c:if>
            			
            			<c:if test="${gender eq 2 or gender eq 4 }">
            				(여)
            				
            			</c:if>
						
                  </p>
              </td>
              <td width="66" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>생년월일</p>
              </td>
              <td width="136" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>
                  	
					 ${ fn:substring(birth, 0, 2) }.${ fn:substring(birth, 2, 4) }.${ fn:substring(birth, 4, 6) }
												
                  </p>
              </td>
              <td width="67" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>학과</p>
              </td>
              <td colspan="5" width="516" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" >
                  	<c:out value="${loginUser.stdDepartment }"/>
                  	
                  </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="178" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0"><span style='letter-spacing:-4%;'>구분&nbsp;&nbsp; 교과목&nbsp;&nbsp; 학점&nbsp;
                          성적</span></p>
              </td>
          </tr>
          <tr>
          
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0"><span style='letter-spacing:-4%;'>
                  	
                  		<c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">
                  			${g.classType }
                  			${g.className }
                  			${g.gradeSize }
                  			${g.gradePoint }             			
                  			
                  			
                  			<br>
                  		</c:forEach>
                  
                  </span></p>
              </td>
              	
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>&nbsp;</p>
              </td>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
              <td colspan="2" width="178" height="128" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>총취득학점 : 
                  	
                  	<c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">
                  			<c:set var="totalgrade" value="${totalgrade +g.gradeSize }"/>
                  			 
                  			
                  			
                  		</c:forEach>
                  		${totalgrade }
                  </p>
              </td>
          </tr>
          
          <tr>
              <td colspan="2" width="178" height="21" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>총평점평균 :
                  <c:set var="average" value="0"/>
                  <c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">
                  	<c:set var="gp" value="0"/>
                  	
                  	<c:choose>
                  		<c:when test="${g.gradePoint eq 'A+' }">
                  			<c:set var="gp" value="4.5"/>
                  		</c:when>
                  		<c:when test="${g.gradePoint eq 'A' }">
                  			<c:set var="gp" value="4.0"/>
                  		</c:when>
                  		<c:when test="${g.gradePoint eq 'B+' }">
                  			<c:set var="gp" value="3.5"/>
                  		</c:when>
                  		<c:when test="${g.gradePoint eq 'B' }">
                  			<c:set var="gp" value="3.0"/>
                  		</c:when>
                  		<c:when test="${g.gradePoint eq 'C+' }">
                  			<c:set var="gp" value="2.5"/>
                  		</c:when>
                  		
                  	</c:choose>
                  	<c:set var="average" value="${average + gp  }"/>
                  	
                  	</c:forEach>
                  	
                  	${average/fn:length(list) }
                   </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="21" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>백&nbsp; 분&nbsp; 율 : </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="163" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:200%;'>위의 사실을 증명합니다.</p>
                  <p class="HStyle0" style='text-align:center;line-height:200%;'>2021년&nbsp;&nbsp;&nbsp;
                      02월&nbsp;&nbsp;&nbsp; 21일</p>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
                  <p class="HStyle0" style='text-align:center;'><span style='font-weight:bold;'>진포상대학교총장</span></p>
                  <p class="HStyle0" style='text-align:center;'><span style='font-weight:bold;'>&nbsp;</span></p>
              </td>
          </tr>
          
      </table>
      </p>

      <p class="HStyle0" style='line-height:130%;'>*성적등급 A+(95-100)4.5&nbsp; A0(94- 90)4.0&nbsp; B+(85-89)3.5&nbsp;
          B0(80-84)3.0&nbsp; C+(75-79)2.5&nbsp; C0(70-74)2.0&nbsp; D+(65-69)1.5&nbsp; D0(60-64)1.0&nbsp; F(59이하)0</p>

      <p class="HStyle0" style='line-height:130%;'>&nbsp;별도지정교과목: S(급제) U(낙제) 단, 평점은 부여하지 않음.</p>

      <p class="HStyle0"><br /></p>
      
      
  </div>
     
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