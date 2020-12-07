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
	<link href="${contextPath}/resources/css/graduation-table.css" rel="stylesheet">
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

        
            <div  style="margin: auto;">
                
                <p class="top-Text" >졸업 사정표</p>
        
            </div>
            <div id="rest_table_area">
                
                    <table id="graduation-t"  class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <p>전공 구분</p>
                                </th>
                                <th>
                                    <p>필수 학점</p>
                                </th>
                                <th>
                                    <p>이수 학점</p>
                                </th>
                                <th>
                                    <p>이수 여부</p>
                                </th>
                                <th>
                                    <p>이수 내용</p>
                                </th>
                             
                            </tr>
                        </thead>
                        <tbody>
                        	<c:set var="log" value="0"/>
                            <tr>
                            	
                                <td>총합계</td>
                                <td>180</td>
                                <td> 
                            		 <c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">        			
                  					<c:set var="totalgrade" value="${totalgrade +g.gradeSize }"/>
                  					
                  			
                  			
                  				</c:forEach>
                  				${totalgrade }
                                </td>
                                <td>
                                	<c:choose>
                                		<c:when test="${totalgrade<180 }">
                                			<c:set var="log" value="N"/>
                                			${log }
                                		</c:when>
                                		<c:when test="${totalgrade>=180 }">
                                		<c:set var="log" value="Y"/>
                                			${log }
                                		</c:when>
                                	</c:choose>
                                </td>
                                <td>
                                	<c:choose>
                                		<c:when test="${log eq 'Y' }">기준 요건 달성</c:when>
                                		<c:when test="${log eq 'N' }">학점 부족</c:when>
                                	</c:choose>
                                </td>
                             
                            </tr>
                            <tr>
                                <td>전공</td>
                                <td>130</td>
                                <td>
                                	<c:set var="gp" value="0"/>
                                	<c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">        			
                  					<c:if test="${g.classType eq '전필' }">
                  					 <c:set var="gp" value="${gp+g.gradeSize }"/>
                  						
                  					</c:if>
                  					<c:if test="${g.classType eq '전선' }">
                  					 <c:set var="gp" value="${gp+g.gradeSize }"/>
                  						
                  					</c:if>
                  					
                  			
                  			
                  				</c:forEach>
                                	${gp }
                                </td>
                                <td>
                                <c:choose>
                                		<c:when test="${gp<130 }">
                                			<c:set var="log" value="N"/>
                                			${log }
                                		</c:when>
                                		<c:when test="${gp>=130 }">
                                			<c:set var="log" value="Y"/>
                                			${log }
                                		</c:when>
                                </c:choose>
                                </td>
                                <td>
                                	<c:choose>
                                		<c:when test="${log eq 'Y' }">기준 요건 달성</c:when>
                                		<c:when test="${log eq 'N' }">학점 부족</c:when>
                                	</c:choose>
                                </td>
                              
                            </tr>
                            <tr>
                                <td>교양 필수</td>
                                <td>18</td>
                                <td>
                                	<c:set var="gp" value="0"/>
                                	<c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">        			
                  					<c:if test="${g.classType eq '교필' }">
                  					 <c:set var="gp" value="${gp+g.gradeSize }"/>
                  						
                  					
                  						
                  					</c:if>
                  					</c:forEach>
                  						${gp }
                                </td>
                                <td>
                                	 <c:choose>
                                		<c:when test="${gp<18 }">
                                			<c:set var="log" value="N"/>
                                			${log }
                                		</c:when>
                                		<c:when test="${gp>=18 }">
                                			<c:set var="log" value="Y"/>
                                			${log }
                                		</c:when>
                                	</c:choose>
                                </td>
                                <td>
                               		<c:choose>
                                		<c:when test="${log eq 'Y' }">기준 요건 달성</c:when>
                                		<c:when test="${log eq 'N' }">학점 부족</c:when>
                                	</c:choose> 
                                
                               </td>                           
                            </tr>
                            <tr>
                                <td>균형 교양</td>
                                <td>18</td>
                                <td><c:set var="gp" value="0"/>
                                	<c:forEach var="g" items="${ list }" begin="0" end="${fn:length(list) }">        			
                  					<c:if test="${g.classType eq '교선' }">
                  					 <c:set var="gp" value="${gp+g.gradeSize }"/>
                  						
                  					
                  						
                  					</c:if>
                  					</c:forEach>
                  						${gp }
                  						</td>
                                <td>
                                	 <c:choose>
                                		<c:when test="${gp<18 }">
                                			<c:set var="log" value="N"/>
                                			${log }
                                		</c:when>
                                		<c:when test="${gp>=18 }">
                                			<c:set var="log" value="Y"/>
                                			${log }
                                		</c:when>
                                </c:choose>
                                </td>
                                <td>
                                	<c:choose>
                                		<c:when test="${log eq 'Y' }">기준 요건 달성</c:when>
                                		<c:when test="${log eq 'N' }">학점 부족</c:when>
                                	</c:choose>
                                </td>                           
                            </tr>
                            <tr>
                                <td>자유 선택</td>
                                <td>15</td>
                                <td>0</td>
                                <td>N</td>
                                <td>학점 부족</td>                           
                            </tr>
                             <tr>
                                <td>영어 성적</td>
                                
                                <td>0</td>
                                <td>TOEIC : 850</td>
                                <td>Y</td>  
                                <td></td>                         
                            </tr>  
                            <tr>
                                <td>졸업 논문</td>
                                <td>0</td>
                                <td>0</td>
                                <td>N</td>
                                <td></td>                           
                            </tr>
                        
    
                        </tbody>
    
    
    
                    </table>
                    
            </div>
            <hr>
           
          
        

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