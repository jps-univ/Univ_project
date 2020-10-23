<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	</style>
	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<c:import url="../common/sidebar_p.jsp" />
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
		        <div class="container-fluid">
		
		            <!-- DataTales Example -->
		            <div class="card shadow mb-4">
		              <div class="card-header py-3">
		                <h6 class="m-0 font-weight-bold text-primary">개인정보</h6>
		              </div>
		              <div class="card-body">
		                <div class="table-responsive">
		                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                    <tbody>
		                      <tr align="center">
		                        <td rowspan="6">이미지</td>
		                      </tr>
		                      <tr>
		                        <th>교번</th>
		                        <td>20102010</td>
		                        <th>성명</th>
		                        <td>아무개</td>
		                      </tr>
		                      <tr>
		                        <th>생년월일(성별)</th>
		                        <td>1965.10.12(남)</td>
		                        <th>대학</th>
		                        <td>이공대학</td>
		                      </tr>
		                      <tr>
		                        <th>학부(과)</th>
		                        <td>컴퓨터공학과</td>
		                        <th></th>
		                        <td></td>
		                      </tr>
		                      <tr>
		                        <th></th>
		                        <td></td>
		                        <th></th>
		                        <td></td>
		                      </tr>
		                      <tr>
		                        <th></th>
		                        <td></td>
		                        <th></th>
		                        <td></td>
		                      </tr>
		                    </tbody>
		                  </table>
		                </div>
		              </div>
		            </div>
		  
		            <div class="card shadow mb-4">
		              <div class="card-header py-3">
		                <h6 class="m-0 font-weight-bold text-primary">개인정보
		                	<input type="button" value="수정" id="changeInfo">
		                </h6>
		              </div>
		              <div class="card-body">
		                <div class="table-responsive">
		                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                    <tbody>
		                      <tr>
		                        <th>전화번호</th>
		                        <td>02-123-4567</td>
		                        <th>핸드폰</th>
		                        <td>010-1111-2222</td>
		                      </tr>
		                      <tr>
		                        <th>이메일</th>
		                        <td>hong123@gmail.com</td>
		                        <th>은행명</th>
		                        <td> 
		                            <select>
		                                <option>신한은행</option>
		                                <option>국민은행</option>
		                                <option>농협</option>
		                                <option>기업은행</option>
		                                <option>우리은행</option>
		                            </select>
		                        </td>
		                      </tr>
		                      <tr>
		                        <th>주소</th>
		                        <td>서울시 강남구 역삼동 127-8번지</td>
		                        <th>계좌번호</th>
		                        <td>110-123-987654</td>
		                      </tr>
		                      <tr>
		                        <th>상세주소</th>
		                        <td>123동 1904호</td>
		                        <th>예금주명</th>
		                        <td>아무개</td>
		                      </tr>
		                    </tbody>
		                  </table>
		                </div>
		              </div>
		            </div>
		  
		            <div class="card shadow mb-4">
		              <div class="card-header py-3">
		                <h6 class="m-0 font-weight-bold text-primary">개인정보동의</h6>
		              </div>
		              <div class="card-body">
		                <div class="table-responsive">
		                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                    <tbody>
		                      <tr>
		                        <th>SMS 수신동의</th>
		                        <td>
		                          <label for="SMSAgree">수신동의</label>
		                          <input type="radio" name="SMS" id="SMSAgree" value="agree" checked>
		                          &emsp;&emsp;&emsp;&emsp;&emsp;
		                          <label for="SMSDisagree">수신거부</label>
		                          <input type="radio" name="SMS" id="SMSDisagree" value="disagree">
		                        </td>
		                        <th>이메일 수신동의</th>
		                        <td>
		                          <label for="EmailAgree">수신동의</label>
		                          <input type="radio" name="Email" id="EmailAgree" value="agree" checked>
		                          &emsp;&emsp;&emsp;&emsp;&emsp;
		                          <label for="EmailDisagree">수신거부</label>
		                          <input type="radio" name="Email" id="EmailDisagree" value="disagree">
		                        </td>
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