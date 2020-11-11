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
		<c:import url="../common/sidebar.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<c:import url="../common/topbar.jsp" />
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
		              <h6 class="m-0 font-weight-bold text-primary">상담 신청</h6>
		            </div>
		
					
 		            
 		            <form action="selectProfessor.do" method="post">
		              <div id="div_selectProf">
		                <table>
							<tr align="center">
		                    <th id="th_selectCollege">학부&nbsp;
		                      <select id="selectCollege" name="profCollege" onchange="changeCollege()">
		                        <option value="c0">전체</option>
		                        <option value="c1">인문대학</option>
		                        <option value="c2">사회과학대학</option>
		                        <option value="c3">자연과학대학</option>
		                        <option value="c4">공과대학</option>
		                        <option value="c5">IT대학</option>
		                        <option value="c6">예술체육대학</option>
		                      </select>
		                    </th>
		                    <th id="th_selectDepartment">&emsp;학과&nbsp;
		                      <select id="selectDepartment" name="departmentName">
		                        <option>전체</option>
		                      </select>
		                    </th>
		                    
		                    <th id="th_searchProfName">&emsp;&emsp;성명&nbsp;
		                      <input type="text" name="profName" id="searchProfName">
		                    </th>
		                    
		                    <th id="th_searchProfBtn">
		                      &emsp;<button type="submit" class="btn btn-primary btn-sm">검색</button>
		                    </th>
		                  </tr>
		                </table>
		              </div>
		              </form>
		              <br>
		              <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="" width="100%" cellspacing="0">
		                <tbody>                
		                  <tr align="center">
		                    <th id="th_college">학부</th>
		                    <th id="th_department">학과</th>
		                    <th id="th_profName">성명</th>
		                    <th id="th_profId">교번</th>
		                    <th id="th_apply">상담 신청</th>
		                  </tr>
		                  <c:forEach var="p" items="${ selectProf }">
		                  <tr align="center" class="test">
		                    <td id="td_college">
		                    	${ p.collegeName }
		                    </td>
		                    <td id="td_department">
		                    	${ p.departmentName }
		                    </td>
		                    <td id="td_profName">
		                    	${ p.profName }
		                    </td>
		                    <td id="td_profId">
		                    	${ p.profId }
		                    </td>
		                    <td>
		                      <input type="button" class="btn btn-success" value="상담신청" id="applyConsulting" onclick="applyConsulting(event)">
		                      <input type="hidden" id="test_profName" value="${ p.profId }">
		                    </td>
		                    </c:forEach>
		                  </tr>                
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">신청 관리</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 교수</th>
		                    <th>신청 상태</th>
		                    <th>신청 일자</th>
		                    <th>신청 취소</th>
		                  </tr>
		                  <tr align="center">
		                    <td>아무개</td>
		                    <td>신청 중</td>
		                    <td>2020.10.13</td>
		                    <td>
		                      <input type="button" class="btn btn-secondary" value="신청취소" id="">
		                    </td>
		                  </tr>                
		                 </tbody>
		                </table>
		              </div>
		            </div>
		          </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">진행 상황</h6>
		            </div>
		
		            <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                <tbody>
		                  <tr align="center">
		                    <th>상담 교수</th>
		                    <th>진행 상태</th>
		                    <th>상담 일자</th>
		                    <th>신청 취소</th>
		                  </tr>
		                  <tr align="center">
		                    <td>아무개</td>
		                    <td>신청 중</td>
		                    <td>2020.10.13</td>
		                    <td>
		                      <input type="button" class="btn btn-secondary" value="신청취소" id="">
		                    </td>
		                  </tr>                
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
	    function changeCollege() 
	    {
	    	var college = $('#selectCollege').val();
	        
	        $.ajax(
	        {
	            url: "checkCollege.do",
	            data: {collegeCode: college},
	            dataType: "json",
	            success: function (data)
	            {
	                $('#selectDepartment').empty();
	                $('#selectDepartment').append("<option>전체</option>");
	                $('#selectMajor').empty();
	                $('#selectMajor').append("<option>전체</option>");
	                for (var i in data) {
	                    var option = $("<option>" + data[i].deptCode + "</option>");
	                    $('#selectDepartment').append(option);
	                }
	            }, 
	            error: function ()
	            {
	                alert("에러발생");
	            }
	        });
	    }
	    
	    function applyConsulting(event)
	    {
	        var profId = event.target.nextElementSibling.value;
	        
	        console.log(profId);
	        $.ajax(
	        {
	            url: "applyConsulting.do",
	            data: {"profId" : profId},
	            success:function(data)
	            {
	            	alert("성공");
	            }, 
	            error:function()
	            {
	                alert("에러발생");
	            }
	        });
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