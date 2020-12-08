<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<!-- Custom styles for this template -->
	<link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<%-- <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> --%>
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
	<style>
		#th_college{
		width: 22%;
		}
		#td_college{
		vertical-align: middle;
		}
		#th_department{
		width: 22%;
		}
		#td_department{
		vertical-align: middle;
		}
		#th_selectCollege{
		width: 30%;
		}
		#selectCollege{
		width: 70%;
		}
		#selectDepartment{
		width: 70%;
		}
		#th_selectDepartment{
		width: 30%;
		}
		#th_profName{
		width:22 %;
		}
		#th_profId{
		width: 22%;
		}
		#td_profName{
		vertical-align: middle;
		}
 		#td_profId{
		vertical-align: middle;
		}
 		#td_consult{
		vertical-align: middle;
		}
		#th_apply{
		width: 12%;
		}
		#div_selectProf{
		margin: 1% 0% 0% 20%;
		}
		.top{
		    background-color: #edf1fc;
		    border-bottom: solid #4e73df;
		    height: 100px;
		    padding: 40px;
		    position: relative;
		    bottom: 25px;
		    white-space: nowrap;
		    color: #4e73df;
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
				
				<div class="top">
               		<h1>상담 관리</h1>
          		</div>
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
		        <div class="container-fluid">
		
		          <!-- DataTales Example -->
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">신청 목록</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>신청 학생</th>
		                    <th>대학(과)</th>
		                    <th>학번</th>
		                    <th>신청 상태</th>
		                    <th>신청 일자</th>
		                    <th>진행 일자</th>
		                    <th>신청 승인</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '신청'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.stdName }</td>
				                    <td id="td_consult">${ c.collegeName }(${ c.departmentName })</td>
				                    <td id="td_consult">${ c.stdId }</td>
				                    <td id="td_consult">${ c.consultingStatus }</td>
				                    <td id="td_consult">${ c.applyDate }</td>
				                    <td id="td_consult">
				                    	<input type="date" name="progressDate" id="progressDate"/>
				                    </td>
				                    <td>
				                      <input type="button" class="btn btn-success btn-sm" value="승인" id="approveConsulting" onclick="approveConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                      <input type="button" class="btn btn-secondary btn-sm" value="취소" id="rejectConsulting" onclick="rejectConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                    </td>
				                  </tr>
			                  </c:if>     
		                  </c:forEach>
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">진행 목록</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 학생</th>
		                    <th>대학(과)</th>
		                    <th>학번</th>
		                    <th>진행 상태</th>
		                    <th>상담 일자</th>
		                    <th>완료 / 변경 일자</th>
		                    <th>진행 변경</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '진행'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.stdName }</td>
				                    <td id="td_consult">${ c.collegeName }(${ c.departmentName })</td>
				                    <td id="td_consult">${ c.stdId }</td>
				                    <td id="td_consult">${ c.consultingStatus }</td>
				                    <td id="td_consult">${ c.progressDate }</td>
				                    <td id="td_consult">
				                    	<input type="date" name="completeDate" id="completeDate"/>
				                    </td>
				                    <td>
				                      <input type="button" class="btn btn-primary btn-sm" value="완료" id="completeConsulting" onclick="completeConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                      <input type="button" class="btn btn-success btn-sm" value="변경" id="changeConsulting" onclick="changeConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                      <input type="button" class="btn btn-secondary btn-sm" value="취소" id="rejectConsulting" onclick="rejectConsulting(event)">
				                      <input type="hidden" id="hidden_consultingNo" value="${ c.consultingNo }">
				                    </td>
				                  </tr>
			                  </c:if>     
		                  </c:forEach>  
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">완료 상황</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 학생</th>
		                    <th>대학(과)</th>
		                    <th>학번</th>
		                    <th>진행 상태</th>
		                    <th>상담 일자</th>
		                    <th>완료 일자</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '완료'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.stdName }</td>
				                    <td id="td_consult">${ c.collegeName }(${ c.departmentName })</td>
				                    <td id="td_consult">${ c.stdId }</td>
				                    <td id="td_consult">${ c.consultingStatus }</td>
				                    <td id="td_consult">${ c.progressDate }</td>
				                    <td id="td_consult">${ c.completeDate }</td>
				                  </tr>
			                  </c:if>     
		                  </c:forEach>  
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">취소 상황</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>신청 학생</th>
		                    <th>대학(과)</th>
		                    <th>학번</th>
		                    <th>진행 상태</th>
		                    <th>신청 일자</th>
		                    <th>취소 일자</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '취소'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.stdName }</td>
				                    <td id="td_consult">${ c.collegeName }(${ c.departmentName })</td>
				                    <td id="td_consult">${ c.stdId }</td>
				                    <td id="td_consult">${ c.consultingStatus }</td>
				                    <td id="td_consult">${ c.applyDate }</td>
				                    <td id="td_consult">${ c.cancleDate }</td>
				                  </tr>
			                  </c:if>     
		                  </c:forEach>  
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		        </div>
		        <!-- /.container-fluid -->
		
		      </div>
		      <!-- End of Main Content -->
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
	
	<script type="text/javascript">
	    // 상담 승인
	    function approveConsulting(event)
	    {
	    	var consultingNo = event.target.nextElementSibling.value;
	    	var applyDate = event.target.parentElement.parentElement.children[4].innerHTML;				// 상담 일자
	    	var progressDate = event.target.parentElement.parentElement.children[5].children[0].value;
	    	
	    	var d = new Date();
	    	var sysDate = d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
	        
	    	if(progressDate == "")
	    	{
	    		alert("진행 일자를 선택하세요.");
	    	}
	    	else if(sysDate < progressDate)
	    	{
	    		alert("진행 일자가 현재 일자보다 빠릅니다.");	
	    	}
	    	else if(progressDate < applyDate)
	    	{
	    		alert("진행 일자가 상담 신청 일자보다 빠릅니다.");	
	    	}
	    	else
	    	{
		        if(confirm("승인하시겠습니까?"))
		    	{
			        $.ajax(
			        {
			            url: "approveConsulting.do",
			            data: {"consultingNo" : consultingNo, "progressDate" : progressDate},
			            success:function(data)
			            {
			            	alert("상담이 승인되었습니다.");
			            	location.reload();
			            }, 
			            error:function()
			            {
			                alert("상담이 승인되지 않았습니다.");
			            }
			        });
		    	}
		    	else
		    	{
		    		alert("취소되었습니다.");
					return;
		    	}
	    	}
	    }
	    
	    // 상담 승인 거부 
	    function rejectConsulting(event)
	    {
	        var consultingNo = event.target.nextElementSibling.value;
	        
	        if(confirm("취소하시겠습니까?"))
	    	{
		        $.ajax(
		        {
		            url: "rejectConsulting.do",
		            data: {"consultingNo" : consultingNo},
		            success:function(data)
		            {
		            	alert("상담이 취소되었습니다.");
		            	location.reload();
		            }, 
		            error:function()
		            {
		                alert("상담 신청 중입니다.");
		            }
		        });
	    	}
	    	else
	    	{
				alert("상담이 취소되지 않았습니다.");
				return;
	    	}
	    }
	    
	    // 상담 완료
	    function completeConsulting(event)
	    {
	    	var consultingNo = event.target.nextElementSibling.value;
	    	var progressDate = event.target.parentElement.parentElement.children[4].innerHTML;				// 상담 일자
	    	var completeDate = event.target.parentElement.parentElement.children[5].children[0].value;		// 완료 일자
	    	
	    	var d = new Date();
	    	var sysDate = d.getFullYear() + "-" + (d.getMonth()+1) + "-" +d.getDate();						// 현재 날짜
	        
	    	if(completeDate == "")
	    	{
	    		alert("완료 일자를 선택하세요.");
	    	}
	    	else if(progressDate > completeDate)
	    	{
	    		alert("완료 일자가 상담 일자보다 빠릅니다.");
	    	}
	    	else if(sysDate < completeDate)
	    	{
	    		alert("완료 일자가 현재 일자보다 빠릅니다.");
	    	}
	    	else
	    	{
		        if(confirm("완료하시겠습니까?"))
		    	{
			        $.ajax(
			        {
			            url: "completeConsulting.do",
			            data: {"consultingNo" : consultingNo, "completeDate" : completeDate},
			            success:function(data)
			            {
			            	alert("상담이 완료되었습니다.");
			            	location.reload();
			            }, 
			            error:function()
			            {
			                alert("상담이 완료되지 않았습니다.");
			            }
			        });
		    	}
		    	else
		    	{
		    		alert("취소되었습니다.");
					return;
		    	}
	    	}
	    }
	    
	    // 상담 변경
	    function changeConsulting(event)
	    {
	    	var consultingNo = event.target.nextElementSibling.value;
	    	var oldProgressDate = event.target.parentElement.parentElement.children[4].innerHTML;			// 현재 상담 일자
	    	var progressDate = event.target.parentElement.parentElement.children[5].children[0].value;		// 상담 변경 일자
	    	
	    	var d = new Date();
	    	var sysDate = d.getFullYear() + "-" + (d.getMonth()+1) + "-" +d.getDate();						// 현재 날짜
	        
	    	if(progressDate == "")
	    	{
	    		alert("변경 일자를 선택하세요.");
	    	}
	    	else if(oldProgressDate > progressDate)
	    	{
	    		alert("변경 일자가 현재 진행 일자보다 빠릅니다.");	
	    	}
	    	else if(sysDate < progressDate)
    		{
	    		alert("변경 일자가 현재 일자보다 빠릅니다.");	
    		}
	    	else
	    	{
		        if(confirm("변경하시겠습니까?"))
		    	{
			        $.ajax(
			        {
			            url: "changeConsulting.do",
			            data: {"consultingNo" : consultingNo, "progressDate" : progressDate},
			            success:function(data)
			            {
			            	alert("상담이 변경되었습니다.");
			            	location.reload();
			            }, 
			            error:function()
			            {
			                alert("상담이 변경되지 않았습니다.");
			            }
			        });
		    	}
		    	else
		    	{
		    		alert("취소되었습니다.");
					return;
		    	}
	    	}
	    }
	</script>

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