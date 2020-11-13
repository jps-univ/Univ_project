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
		#th_pwd{
			width : 20%;
		}
		#newPwd{
			visibility:hidden;
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
               		<h1>비밀번호 변경</h1>
          		</div>
				
				<!-- 여기서부터 내용  -->
		        <!-- Begin Page Content -->
       			<div class="container-fluid">

            	<!-- DataTales Example -->
            	<div class="card shadow mb-4">
	              <div class="card-header py-3">
	                <h6 class="m-0 font-weight-bold text-primary">비밀번호 변경</h6>
	              </div>
	              <div class="card-body">
	                <div class="table-responsive">
	                	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                    	<p>비밀번호 확인(입력해야 비밀번호를 변경할 수 있습니다. 비밀번호를 초기화 하셨으면 초기화한 비밀번호를 입력하세요.)</p>
		                    <tbody>
		                      <tr>
		                        <th id="th_pwd">기존 비밀번호</th>
		                        <td>
		                            <input type="password" name="profPwd" id="originPwd" autofocus>
		                        </td>
		                      </tr>
		                    </tbody>
	                  	</table>
	
						<div align="right">
						    <input type="button" class="btn btn-primary" id="checkPwd" value="확인" onclick="checkPwd()">
						</div>
						
						<div id="newPwd">
							<table class="table table-bordered" width="100%" cellspacing="0">
						    	<p>비밀번호 변경(앞으로 사용하실 비밀번호를 입력하세요.)</p>
								<tbody>
								    <tr>
								      <th id="th_pwd">새 비밀번호</th>
								      <td>
								          <input type="password" name="profPwd" id="inputNewPwd">
								      </td>
								    </tr>
								    <tr>
								      <th id="th_pwd">새 비밀번호 확인</th>
								      <td>
								          <input type="password" name="profPwd" id="checkNewPwd">
								      </td>
								    </tr>
								</tbody>
							</table>
							
							<div align="right">
							    <input type="button" class="btn btn-primary" id="changePwd" value="변경" onclick="changePwd()">
							</div>
						</div>
                  	
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
		function checkPwd()
		{
			var profId = ${ loginUser.profId };
			var profPwd = $("#originPwd").val();
		
			$.ajax(
			{
				url:"checkProfessorPwd.do",
				data:{"profId" : profId, "profPwd" : profPwd},
				type:"post",
				success:function(data)
				{
 					if(data == "ok")
					{
						console.log('성공');
						$('#newPwd').css('visibility', 'visible');
 						$('#originPwd').val('');
						$('#inputNewPwd').focus();
 					}
					else
					{
						alert("비밀번호가 일치하지 않습니다.");
						$('#originPwd').focus();
					}
				},
				error:function(request, status, errorData)
				{
					/* 	
					console.log(request.status);
					console.log(request.responseText);
					console.log(errorData);  
					*/
					alert("실패"); 
				}
			});
		}
		
		function changePwd()
		{
			var profId = ${ loginUser.profId };
			var profPwd = $("#inputNewPwd").val();
			var checkPwd = $("#checkNewPwd").val();
			
			if(profPwd == checkPwd)
			{
				if(confirm("변경하시겠습니까?"))
				{
					$.ajax(
					{
						url:"changeProfessorPwd.do",
						data:{"profId" : profId, "profPwd" : profPwd},
						type:"post",
						success:function(data)
						{
							if(data == "ok")
							{
								console.log("성공");
								alert("변경되었습니다.");
								location.href="professor_password.do";
							}
							else
							{
								alert("실패하였습니다.");
							}
						},
						error:function(request, status, errorData)
						{
							/* 	
							console.log(request.status);
							console.log(request.responseText);
							console.log(errorData);  
							*/
							alert("실패"); 
						}
					});
				}
				else
				{
					alert("취소되었습니다.");
					return;
				}
			}
			else
			{
				alert("비밀번호가 일치하지 않습니다.");
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