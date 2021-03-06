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
	<link href="${contextPath}/resources/css/sb-admin-3.min.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<%-- <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> --%>
	<%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
	<style>
		#changeInfo {
			float: right;
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
		#input_image{
			width: 100%;
		}
		#td_image{
			width: 5%;
		}
		#image{
			width: 100%;
			height: 720%;
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
               		<h1>개인 정보</h1>
          		</div>
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
		        <div class="container-fluid">
		
		            <!-- DataTales Example -->
		            <div class="card shadow mb-4">
		            <form action="insertProfImage.do" method="post" enctype="multipart/form-data" onsubmit="return insertImage()">
		              <div class="card-header py-3">
		                <h6 class="m-0 font-weight-bold text-primary">기본정보
		                	<input type="submit" class="btn btn-primary btn-sm" value="저장" id="changeInfo">
		                </h6>
		              </div>
		              <div class="card-body">
		                <div class="table-responsive">
		                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                    <tbody>
		                      <tr align="center">
		                        <td rowspan="5">
	    							<c:set var="profImage" value="${ loginUser.profId }_${ image.renameImageName }"/>
	    							<c:choose>
 	    								<c:when test="${ empty image }">이미지</c:when>
	    								<c:otherwise>
											<img id="image" alt="" src="${contextPath}/resources/uploadProfImage/${ profImage }"/>
	    								</c:otherwise>
	    							</c:choose>
		                        </td>
		                      </tr>
		                      <tr>
		                        <th>교번</th>
		                        <td>${ loginUser.profId }</td>
		                        <th>성명</th>
		                        <td>${ loginUser.profName }</td>
		                      </tr>
		                      <tr>
								<th>생년월일(성별)</th>
								<td>
									<c:set var="birth" value="${ loginUser.profBirth }"/>
									${ fn:substring(birth, 0, 2) }.${ fn:substring(birth, 2, 4) }.${ fn:substring(birth, 4, 6) }
									<c:set var="gender" value="${ fn:substring(birth, 7, 8) }"/>
									<c:choose>
										<c:when test="${ gender eq 1 }">
										(남)
										</c:when>
										<c:when test="${ gender eq 2 }">
										(여)
										</c:when>
										<c:when test="${ gender eq 3 }">
										(남)
										</c:when>
										<c:when test="${ gender eq 4 }">
										(여)
										</c:when>
									</c:choose>
								</td>
								<th>대학</th>
								<td>${ college }</td>
							</tr>
		                      <tr>
		                        <th>연구실</th>
		                        <td>${ loginUser.lab }</td>
		                        <th>학부(과)</th>
		                        <td>${ department }</td>
		                      </tr>
		                      <tr>
								<td colspan="4">
									<input type="file" id="input_image" name="uploadImage"/>
								</td>
		                      </tr>
		                    </tbody>
		                  </table>
		                </div>
		              </div>
		              </form>
		            </div>
		  
		            <div class="card shadow mb-4">
		              <div class="card-header py-3">
		                <h6 class="m-0 font-weight-bold text-primary">개인정보
		                	<input type="button" class="btn btn-primary btn-sm" value="변경" id="changeInfo" onclick="personalBtn()">
		                </h6>
		              </div>
		              <div class="card-body">
		                <div class="table-responsive">
		                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                    <tbody>
		                      <tr>
		                        <th>전화번호</th>
								<td>
									<input type="text" name="profTel" id="profTel" value="${ loginUser.profTel }">
								</td>
		                        <th>핸드폰</th>
								<td>
									<input type="text" name="profPhone" id="profPhone" value="${ loginUser.profPhone }">
								</td>
		                      </tr>
		                      <tr>
		                        <th>이메일</th>
								<td>
									<input type="text" name="profEmail" id="profEmail" value="${ loginUser.profEmail }">
								</td>
		                        <th>은행명</th>
		                        <td> 
		                            <select name="profBank" id="profBank" value="${ loginUser.profBank }">
		                                <option <c:if test="${ loginUser.profBank eq '신한은행' }"> selected="selected"</c:if>>신한은행</option>
		                                <option <c:if test="${ loginUser.profBank eq '국민은행' }"> selected="selected"</c:if>>국민은행</option>
		                                <option <c:if test="${ loginUser.profBank eq '농협' }"> selected="selected"</c:if>>농협</option>
		                                <option <c:if test="${ loginUser.profBank eq '기업은행' }"> selected="selected"</c:if>>기업은행</option>
		                                <option <c:if test="${ loginUser.profBank eq '우리은행' }"> selected="selected"</c:if>>우리은행</option>
		                                <option <c:if test="${ loginUser.profBank eq '하나은행' }"> selected="selected"</c:if>>하나은행</option>
		                                <option <c:if test="${ loginUser.profBank eq '카카오뱅크' }"> selected="selected"</c:if>>카카오뱅크</option>
		                            </select>
		                        </td>
		                      </tr>
		                      <tr>
		                        <th>주소</th>
								<td>
									<input type="text" name="profAddress" id="profAddress" value="${ loginUser.profAddress }">
								</td>
		                        <th>계좌번호</th>
								<td>
									<input type="text" name="profAccount" id="profAccount" value="${ loginUser.profAccount }">
								</td>
		                      </tr>
		                      <tr>
		                        <th>상세주소</th>
								<td>
									<input type="text" name="profAddressDetail" id="profAddressDetail" value="${ loginUser.profAddressDetail }">
								</td>
		                        <th>예금주명</th>
								<td>
									<input type="text" name="profAccountHolder" id="profAccountHolder" value="${ loginUser.profAccountHolder }">
								</td>
		                      </tr>
		                    </tbody>
		                  </table>
		                </div>
		              </div>
		            </div>
		  
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">개인정보동의
								<input type="button" class="btn btn-primary btn-sm" value="변경" id="changeInfo" onclick="agreeBtn()">
							</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<tbody>
										<tr>
											<th>SMS 수신동의</th>
											<c:choose>
												<c:when test="${ loginUser.profSmsAgree eq 'Y' }">
													<td>
														<label for="SMSAgree">수신동의</label> 
														<input type="radio" name="SMS" id="SMSAgree" value="Y" checked>
														&emsp;&emsp;&emsp;&emsp;
														<label for="SMSDisagree">수신거부</label>
														<input type="radio" name="SMS" id="SMSDisagree" value="N">
													</td>
												</c:when>
												<c:when test="${ loginUser.profSmsAgree eq 'N' }">
													<td>
														<label for="SMSAgree">수신동의</label> 
														<input type="radio" name="SMS" id="SMSAgree" value="Y">
														&emsp;&emsp;&emsp;&emsp;
														<label for="SMSDisagree">수신거부</label>
														<input type="radio" name="SMS" id="SMSDisagree" value="N" checked>
													</td>
												</c:when>
											</c:choose>
											<th>이메일 수신동의</th>
											<c:choose>
												<c:when test="${ loginUser.profEmailAgree eq 'Y' }">
													<td>
														<label for="EmailAgree">수신동의</label> 
														<input type="radio" name="Email" id="EmailAgree" value="Y" checked>
														&emsp;&emsp;&emsp;&emsp;
														<label for="EmailDisagree">수신거부</label>
														<input type="radio" name="Email" id="EmailDisagree" value="N">
													</td>
												</c:when>
												<c:when test="${ loginUser.profEmailAgree eq 'N' }">
													<td>
														<label for="EmailAgree">수신동의</label> 
														<input type="radio" name="Email" id="EmailAgree" value="Y">
														&emsp;&emsp;&emsp;&emsp;
														<label for="EmailDisagree">수신거부</label>
														<input type="radio" name="Email" id="EmailDisagree" value="N" checked>
													</td>
												</c:when>
											</c:choose>
										</tr>
										<tr>
											<td colspan="4">
												<a href="#" class="btn btn-info btn-circle btn-sm"> 
													<i class="fas fa-info-circle"></i>
												</a>
												개인정보수신동의를 수신거부로 변경하신 경우 학사 관련 정보를 이메일, SMS를 통해 전달받을 수 없습니다.
											</td>
										</tr>
										<tr>
											<td colspan="4">
												<a href="#" class="btn btn-info btn-circle btn-sm"> 
													<i class="fas fa-info-circle"></i>
												</a>
												개인 정보가 올바르지 않으신 분들은 변경버튼을 이용하여 개인정보를 변경하시기 바랍니다.
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
		function personalBtn()
		{
			var profId = ${ loginUser.profId };
			var profTel = $("#profTel").val();
			var profPhone = $("#profPhone").val();
			var profEmail = $("#profEmail").val();
			var profAddress = $("#profAddress").val();
			var profAddressDetail = $("#profAddressDetail").val();
			var profBank = $("#profBank").val();
			var profAccount = $("#profAccount").val();
			var profAccountHolder = $("#profAccountHolder").val();
			
			if(confirm("변경하시겠습니까?"))
			{
				$.ajax(
				{
					url:"changeProfessorInfo.do",
					data:{"profId" : profId, "profTel" : profTel, "profPhone" : profPhone, "profEmail" : profEmail, "profAddress" : profAddress, "profAddressDetail" : profAddressDetail, "profBank" : profBank, "profAccount" : profAccount, "profAccountHolder" : profAccountHolder},
					type:"post",
					success:function(data)
					{
						if(data == "ok")
						{
							console.log("성공");
							alert("변경되었습니다.");
							location.reload();
						}
						else
						{
							alert("실패하였습니다.");
						}
					},
					error:function(request, status, errorData)
					{
						console.log(request.status);
						console.log(request.responseText);
						console.log(errorData); 
					}
				});
			}
			else
			{
				alert("취소되었습니다.");
				return;
			}
		}
		
		function agreeBtn()
		{
			var profId = ${ loginUser.profId };
			var profSmsAgree = $('input[name="SMS"]:checked').val();
			var profEmailAgree = $('input[name="Email"]:checked').val();
			
			if(confirm("변경하시겠습니까?"))
			{
				$.ajax(
				{
					url:"changeProfAgreeInfo.do",
					data:{"profId" : profId, "profSmsAgree" : profSmsAgree, "profEmailAgree" : profEmailAgree},
					type:"post",
					success:function(data)
					{
						if(data == "ok")
						{
							console.log("성공");
							alert("변경되었습니다.");
						}
						else
						{
							alert("실패하였습니다.");
						}
					},
					error:function(request, status, errorData)
					{
						console.log(request.status);
						console.log(request.responseText);
						console.log(errorData); 
					}
				});
			}
			else
			{
				alert("취소되었습니다.");
				return;
			}
		}
		
	    function insertImage()
	    {
	        if(confirm("저장하시겠습니까?"))
	    	{
	        	console.log("test");
	        	return true;
	    	}
	    	else
	    	{
	    		alert("취소되었습니다.");
				return false;
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