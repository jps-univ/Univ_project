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
		
 		.guide{display:none; font-size:15px; top:12px; right:10px;}
		.ok{color:green;}
		.fail{color:red;}
		.ok2{color:green;}
		.fail2{color:red;}
		#changePwd{display:none;}
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
               		<h1>비밀번호 변경</h1>
          		</div>
				
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
		                            <input type="password" name="stdPwd" id="originPwd" autofocus>
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
								          <input type="password" name="stdPwd" id="inputNewPwd">
								          <span class="guide ok">사용 가능</span>
										  <span class="guide fail">사용 불가능(8자 이상, 최소 하나의 숫자와 하나의 특수문자를 포함해야 합니다.)</span>
								      </td>
								    </tr>
								    <tr>
								      <th id="th_pwd">새 비밀번호 확인</th>
								      <td>
								          <input type="password" name="stdPwd" id="checkNewPwd">
								          <span class="guide ok2">비밀번호 일치</span>
										  <span class="guide fail2">비밀번호 불일치</span>
								      </td>
								    </tr>
								</tbody>
							</table>
							
							<div align="right">
							    <input type="button" class="btn btn-primary" id="changePwd" value="변경" onclick="changePwd()">
							    <input type="button" class="btn btn-secondary" id="changePwd2" value="변경">
							</div>
						</div>
                  	
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- /.container-fluid -->
	  
	        </div>
	        <!-- End of Main Content -->

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
			var stdId = ${ loginUser.stdId };
			var stdPwd = $("#originPwd").val();
		
			$.ajax(
			{
				url:"checkStudentPwd.do",
				data:{"stdId" : stdId, "stdPwd" : stdPwd},
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
			var stdId = ${ loginUser.stdId };
			var stdPwd = $("#inputNewPwd").val();
			var checkPwd = $("#checkNewPwd").val();
			var pwdCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);
			
			if(!pwdCheck.test(stdPwd))
			{
				alert("비밀번호를 다시 입력해주세요.");
			}
			else if(stdPwd == checkPwd)
			{
				if(confirm("변경하시겠습니까?"))
				{
					$.ajax(
					{
						url:"changeStudentPwd.do",
						data:{"stdId" : stdId, "stdPwd" : stdPwd},
						type:"post",
						success:function(data)
						{
							if(data == "ok")
							{
								console.log("성공");
								alert("변경되었습니다.");
								location.href="student_password.do";
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
		
		$(function()
		{
			$("#inputNewPwd").on("keyup", function()
			{
				var newPwd = $("#inputNewPwd").val();
				var pwdCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);

				if(pwdCheck.test(newPwd))
				{
					$(".fail").hide();
					$(".ok").show();
				}
				else
				{
					$(".fail").show();
					$(".ok").hide();
				}
			});
			
			$("#checkNewPwd").on("keyup", function(){
				var newPwd = $("#inputNewPwd").val();
				var checkNewPwd = $("#checkNewPwd").val();
				
				if(checkNewPwd == newPwd)
				{
					$(".fail2").hide();
					$(".ok2").show();
					$("#changePwd").show();
					$("#changePwd2").hide();
				}
				else
				{
					$(".fail2").show();
					$(".ok2").hide();
					$("#changePwd").hide();
					$("#changePwd2").show();
				}
			});
		});
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