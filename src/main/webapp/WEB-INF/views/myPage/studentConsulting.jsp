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
 		#td_lab{
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
		.even{text-align: center;}
		.odd{text-align: center;}
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
		#profTable{
		overflow: hidden;
		}
		.col-md-5{
		display: none;
		}
		.pagination{
		margin-left: 60%;
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
		
					
 		            
 		            <!-- <form action="selectProfessor.do" method="post"> -->
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
		                      &emsp;<input type="button" class="btn btn-primary btn-sm" value="검색" onclick="selectProfessor()">
		                    </th>
		                  </tr>
		                </table>
		              </div>
		              <!-- </form> -->
		              
		              <br>
<!-- 		              <div class="card-body">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="test" width="100%" cellspacing="0">
		                <tbody>              
 		                  <tr align="center">
		                  	<th>번호</th>
		                    <th id="th_college">학부</th>
		                    <th id="th_department">학과</th>
		                    <th id="th_profName">성명</th>
		                    <th id="th_profId">연구실</th>
		                    <th id="th_apply">상담 신청</th>
		                  </tr>
		                 </tbody>
		                </table>
		              </div>
		            </div> -->

		          
	 		          <div class="card-body">
		 		          <div class="table-responsive" id="profTable">
					          <table class="table table-bordered" id="selectProf" width="100%" cellspacing="0">
					          	<thead>
									<tr align="center">
										<th id="th_college">학부</th>
										<th id="th_department">학과</th>
										<th id="th_profName">성명</th>
										<th id="td_profId">교번</th>
										<th id="th_lab">연구실</th>
										<th id="th_apply">상담 신청</th>
									</tr>
					          	</thead>
					          </table>
				          </div>
			          </div>
			        </div>
		
		          <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary">신청 상황</h6>
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
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '신청'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.profName }</td>
				                    <td id="td_consult">${ c.consultingStatus } 중</td>
				                    <td id="td_consult">${ c.applyDate }</td>
				                    <td>
				                      <input type="button" class="btn btn-secondary" value="신청취소" id="cancleConsulting" onclick="cancleConsulting(event)">
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
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '진행'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.profName }</td>
				                    <td id="td_consult">${ c.consultingStatus } 중</td>
				                    <td id="td_consult">${ c.progressDate }</td>
				                    <td>
				                      <input type="button" class="btn btn-secondary" value="신청취소" id="cancleConsulting" onclick="cancleConsulting(event)">
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
		                    <th>상담 교수</th>
		                    <th>진행 상태</th>
		                    <th>상담 일자</th>
		                    <th>완료 일자</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '완료'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.profName }</td>
				                    <td id="td_consult">상담 ${ c.consultingStatus }</td>
				                    <td id="td_consult">${ c.applyDate }</td>
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
		                    <th>상담 교수</th>
		                    <th>진행 상태</th>
		                    <th>신청 일자</th>
		                    <th>취소 일자</th>
		                  </tr>
		                  <c:forEach var="c" items="${ consult }">
			                  <c:if test="${ c.consultingStatus eq '취소'}">
				                  <tr align="center">
				                    <td id="td_consult">${ c.profName }</td>
				                    <td id="td_consult">상담 ${ c.consultingStatus }</td>
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
		function selectProfessor()
	    {
	    	var profName = $("#searchProfName").val();
	    	var profCollege = $("#selectCollege").val();
	    	var departmentName = $("#selectDepartment").val();
	    	
	        table = $('#selectProf').DataTable(
	        {
	            //컨트롤러에서 보내줄 때 해당 함수의 반환형은 String이어야 하고 리스트를 뽑아온다고 하면 'dataSrc' : '' 로 해줘야함.
	            'ajax': 
	            {
	                'url': 'selectProfessor.do',
	                'type': 'post',
	                'data': {'profName' : profName, 'profCollege' : profCollege, 'departmentName' : departmentName},
	                'dataType': 'json',
	                'dataSrc': ''
	            },
	            // 'colunms' 옵션에는 각 data 에게 넘어오는 변수명(컬럼값)을 매칭해줘야함 꼭 .
	            // 그리고 테이블만들어줄때도 넘어오는 값이 4개라면 테이블의 th 갯수도 꼭 4개. 맞춰줘야함
	            'columns': 
	            [
	                {'data': 'collegeName'},
	                {'data': 'departmentName'},
	                {'data': 'profName'},
	                {'data': 'profId'},
	                {'data': 'lab'},
	                {'data': ''}
	            ],
	            'columnDefs': [
	                {
	                    'targets': [0, 1],
	                    'width': '20%',
	                    'vertical-align': 'middle'
	                },
	                {
	                    'targets': [2, 3, 4],
	                    'width': '15%'
	                },
	                {
	                	"targets"   : [ 5 ],
	                    "orderable" : false,
	                    "searchable": false,
	                    "className" : "center",
	                    "render"    : function ( data, type, row ) 
	                    			   {
	                                        var html = '<input type="button" class="btn btn-success" value="상담신청" id="applyConsulting" onclick="applyConsulting(event)">';
	                                        return html;
	                                    }
	                    }
	            ],
	            'searching': false,
	            'paging': true,
	            'bDestroy': true,
	            'scrollX': false,
	            'destroy': true,
	            "lengthMenu": [ 5, 10, 25, 50, 75 ]
	        });
	    }
		
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
	                
	                for (var i in data) 
	                {
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
	    
	    // 교수 조회
	    function selectProfessortest()
	    {
	    	var profName = $("#searchProfName").val();
	    	var profCollege = $("#selectCollege").val();
	    	var departmentName = $("#selectDepartment").val();
	        
	        $.ajax(
	        {
	            url: "selectProfessor.do",
	            data: {"profName" : profName, "profCollege" : profCollege, "departmentName" : departmentName},
	            success:function(data)
	            {
	            	$(".test2").remove();
	            	
	            	for(var i in data)
	            	{
	            		/*
 	            		var collegeName = $('<tr align="center"> <td id="td_college">' + data[i].collegeName + '</td>');
	            		var departmentName = $('<td id="td_department">' + data[i].departmentName + '</td>');
	            		var profName = $('<td id="td_profName">' + data[i].profName + '</td>');
	            		var lab = $('<td id="td_profId">' + data[i].lab + '</td>');
	            		var applyConsulting = $('<td> <input type="button" class="btn btn-success" value="상담신청" id="applyConsulting" onclick="applyConsulting(event)">');
	            		var hidden_profName = $('<input type="hidden" id="hidden_profName" value="${ p.profId }"> </td> </tr>');
	            		
 	            		$("#test").append(collegeName);
	            		$("#test").append(departmentName);
	            		$("#test").append(profName);
	            		$("#test").append(lab);
	            		$("#test").append(applyConsulting);
	            		$("#test").append(hidden_profName);
	            		*/
	            		
 	            		if(data[i].profName != "관리자")
            			{
 	            			var iNum = i;
 	            			var num = ++iNum;
 	            			
		            		var result = $('<tr align="center" class="test2"><td>'+ num +'</td><td id="td_college">' + data[i].collegeName + '</td>' +
				            				'<td id="td_department">' + data[i].departmentName + '</td>' + 
				            				'<td id="td_profName">' + data[i].profName + '</td>' + 
				            				'<td id="td_profId">' + data[i].lab + '</td>' + 
				            				'<td> <input type="button" class="btn btn-success" value="상담신청" id="applyConsulting" onclick="applyConsulting(event)">' + 
				            				'<input type="hidden" id="hidden_profName" value="' + data[i].profId + '"> </td></tr>'
		            					  );
            			}
	            		
	            		
	            		$("#test").append(result);
	            	}
	            }, 
	            error:function()
	            {
	                alert("조회에 실패하였습니다.");
	            }
	        });
	    }
	    
	    // 상담 신청 
	    function applyConsulting(event)
	    {
	    	var profId = event.target.parentElement.parentElement.children[3].innerHTML;
	    	console.log(profId);
	    	/* var profId = test.profId; */
	    	/* console.log(profId); */
	    	
	        
	        if(confirm("신청하시겠습니까?"))
	    	{
		        $.ajax(
		        {
		            url: "applyConsulting.do",
		            data: {"profId" : profId},
		            success:function(data)
		            {
		            	alert("상담이 신청되었습니다.");
		            	location.reload();
		            }, 
		            error:function()
		            {
		                alert("상담이 신청되지 않았습니다.");
		            }
		        });
	    	}
	    	else
	    	{
				alert("취소되었습니다.");
				return;
	    	}
	    }
	    
	    // 상담 신청 취소 
	    function cancleConsulting(event)
	    {
	        var consultingNo = event.target.nextElementSibling.value;
	        
	        if(confirm("취소하시겠습니까?"))
	    	{
		        $.ajax(
		        {
		            url: "cancleConsulting.do",
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