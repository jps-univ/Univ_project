<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>진포상대학교 | 포탈</title>
    <!-- Custom fonts for this template-->

    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/lecture_evaluation.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		            <h1>강의 평가</h1>
		        </div>
		        
                <div class="container-fluid">
                    <div id="main_content">
                        <hr>
                        <div id="explanation">
							<ul>
							    <li>이 설문조사는 강의내용을 충실하게 하여 수업의 질을 제고하는데 필요한 기초자료를 수집하기 위해시행됩니다.</li>
							    <li>수강한 과목과 관련한 아래의 질문을 읽고 각 문항별로 본인이 동의하는 응답을 택하여 마우스로 클릭해주시기 바랍니다.</li>
							    <li>해당과목의 설문을 마쳐야만 성적공시조회가 가능합니다. </li>
							    <li>강의평가가 완료된 교과목은 추후 수정할 수 없으니 작성에 신중을 기하여 주시기 바랍니다.</li>
							</ul>
                        </div>
                        <hr>
                        
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                            	<div class="m-0 font-weight-bold">
	                            	학번 : <label class=" text-primary">${ student.stdId }</label>&emsp;&emsp;
	                            	이름 : <label class= text-primary>${ student.stdName }</label>&emsp;&emsp;
	                            	강의명 : <label class=" text-primary">${ lecture.className }</label>&emsp;&emsp;
	                            	담당 교수 : <label class=" text-primary">${ lecture.profName }</label>
                            	</div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                <!-- <form action="lecture_evaluation_submit.do" method="post"> -->
                                    <table class="table table-bordered" id="eva_table" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th width="90px">번호</th>
                                                <th>평가 문항</th>
                                            </tr>
                                        </thead>
                                  
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>교수가 수업시간을 준수했습니까?</td>
                                            </tr>
                                            <tr>
                                                <td>답</td>
                                                <td>
                                                	<input type="radio" id="highest_1" name="evalOne" value="5">
                                                    <label for="highest_1">매우 그렇다</label>
                                                    <input type="radio" id="higher_1" name="evalOne" value="4">
                                                    <label for="higher_1">그렇다</label>
                                                    <input type="radio" id="normal_1" name="evalOne" value="3">
                                                    <label for="normal_1">보통이다</label>
                                                    <input type="radio" id="lower_1" name="evalOne" value="2">
                                                    <label for="lower_1">아니다</label>
                                                    <input type="radio" id="lowest_1" name="evalOne" value="1">
                                                    <label for="lowest_1">전혀 아니다</label>
                                                </td>
                                            </tr>
                                       
	                                        <tr>
	                                          <td>2번</td>
	                                          <td>수업 목표는 구체적으로 명확하게 제시되었다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_2" name="evalTwo" value="5">
	                                            <label for="highest_2">매우 그렇다</label>
	                                            <input type="radio" id="higher_2" name="evalTwo" value="4">
	                                            <label for="higher_2">그렇다</label>
	                                            <input type="radio" id="normal_2" name="evalTwo" value="3">
	                                            <label for="normal_2">보통이다</label>
	                                            <input type="radio" id="lower_2" name="evalTwo" value="2">
	                                            <label for="lower_2">아니다</label>
	                                            <input type="radio" id="lowest_2" name="evalTwo" value="1">
	                                            <label for="lowest_2">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>3번</td>
	                                          <td>수업목표, 내용, 방법에 따른 합리적인 성적평가 방법과 기준이 안내 되었다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_3" name="evalThree" value="5">
	                                            <label for="highest_3">매우 그렇다</label>
	                                            <input type="radio" id="higher_3" name="evalThree" value="4">
	                                            <label for="higher_3">그렇다</label>
	                                            <input type="radio" id="normal_3" name="evalThree" value="3">
	                                            <label for="normal_3">보통이다</label>
	                                            <input type="radio" id="lower_3" name="evalThree" value="2">
	                                            <label for="lower_3">아니다</label>
	                                            <input type="radio" id="lowest_3" name="evalThree" value="1">
	                                            <label for="lowest_3">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>4번</td>
	                                          <td>교수는 학생의 활동이나 과제에 대해 적절한 피드백을 제공하였다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_4" name="evalFour" value="5">
	                                            <label for="highest_4">매우 그렇다</label>
	                                            <input type="radio" id="higher_4" name="evalFour" value="4">
	                                            <label for="higher_4">그렇다</label>
	                                            <input type="radio" id="normal_4" name="evalFour" value="3">
	                                            <label for="normal_4">보통이다</label>
	                                            <input type="radio" id="lower_4" name="evalFour" value="2">
	                                            <label for="lower_4">아니다</label>
	                                            <input type="radio" id="lowest_4" name="evalFour" value="1">
	                                            <label for="lowest_4">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>5번</td>
	                                          <td>교수는 학생들이 흠미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_5" name="evalFive" value="5">
	                                            <label for="highest_5">매우 그렇다</label>
	                                            <input type="radio" id="higher_5" name="evalFive" value="4">
	                                            <label for="higher_5">그렇다</label>
	                                            <input type="radio" id="normal_5" name="evalFive" value="3">
	                                            <label for="normal_5">보통이다</label>
	                                            <input type="radio" id="lower_5" name="evalFive" value="2">
	                                            <label for="lower_5">아니다</label>
	                                            <input type="radio" id="lowest_5" name="evalFive" value="1">
	                                            <label for="lowest_5">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>6번</td>
	                                          <td>교수는 교과와 관련된 학문적 관심과 흥미를 이끌어냈다</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_6" name="evalSix" value="5">
	                                            <label for="highest_6">매우 그렇다</label>
	                                            <input type="radio" id="higher_6" name="evalSix" value="4">
	                                            <label for="higher_6">그렇다</label>
	                                            <input type="radio" id="normal_6" name="evalSix" value="3">
	                                            <label for="normal_6">보통이다</label>
	                                            <input type="radio" id="lower_6" name="evalSix" value="2">
	                                            <label for="lower_6">아니다</label>
	                                            <input type="radio" id="lowest_6" name="evalSix" value="1">
	                                            <label for="lowest_6">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>7번</td>
	                                          <td>교수는 학생들이 흥미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_7" name="evalSeven" value="5">
	                                            <label for="highest_7">매우 그렇다</label>
	                                            <input type="radio" id="higher_7" name="evalSeven" value="4">
	                                            <label for="higher_7">그렇다</label>
	                                            <input type="radio" id="normal_7" name="evalSeven" value="3">
	                                            <label for="normal_7">보통이다</label>
	                                            <input type="radio" id="lower_7" name="evalSeven" value="2">
	                                            <label for="lower_7">아니다</label>
	                                            <input type="radio" id="lowest_7" name="evalSeven" value="1">
	                                            <label for="lowest_7">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>8번</td>
	                                          <td>강의는 교과와 관련된 실력 향상에 도움을 주었다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_8" name="evalEight" value="5">
	                                            <label for="highest_8">매우 그렇다</label>
	                                            <input type="radio" id="higher_8" name="evalEight" value="4">
	                                            <label for="higher_8">그렇다</label>
	                                            <input type="radio" id="normal_8" name="evalEight" value="3">
	                                            <label for="normal_8">보통이다</label>
	                                            <input type="radio" id="lower_8" name="evalEight" value="2">
	                                            <label for="lower_8">아니다</label>
	                                            <input type="radio" id="lowest_8" name="evalEight" value="1">
	                                            <label for="lowest_8">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>9번</td>
	                                          <td>강의의 구성과 내용은 해당 수업을 이해하는데 충분하였다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_9" name="evalNine" value="5">
	                                            <label for="highest_9">매우 그렇다</label>
	                                            <input type="radio" id="higher_9" name="evalNine" value="4">
	                                            <label for="higher_9">그렇다</label>
	                                            <input type="radio" id="normal_9" name="evalNine" value="3">
	                                            <label for="normal_9">보통이다</label>
	                                            <input type="radio" id="lower_9" name="evalNine" value="2">
	                                            <label for="lower_9">아니다</label>
	                                            <input type="radio" id="lowest_9" name="evalNine" value="1">
	                                            <label for="lowest_9">전혀 아니다</label>
	                                          </td>
	                                        </tr>
	                                        <tr>
	                                          <td>10번</td>
	                                          <td>나는 전반적으로 강의에 만족하고 있다.</td>
	                                        </tr>
	                                        <tr>
	                                          <td>답</td>
	                                          <td>
	                                            <input type="radio" id="highest_10" name="evalTen" value="5">
	                                            <label for="highest_10">매우 그렇다</label>
	                                            <input type="radio" id="higher_10" name="evalTen" value="4">
	                                            <label for="higher_10">그렇다</label>
	                                            <input type="radio" id="normal_10" name="evalTen" value="3">
	                                            <label for="normal_10">보통이다</label>
	                                            <input type="radio" id="lower_10" name="evalTen" value="2">
	                                            <label for="lower_10">아니다</label>
	                                            <input type="radio" id="lowest_10" name="evalTen" value="1">
	                                            <label for="lowest_10">전혀 아니다</label>
	                                          </td>
	                                        </tr>
                                        </tbody>
                                    </table>
                                    
                                    <input type="button" class="btn btn-primary btn-sm" value="제출" id="evaluationSubmit" onclick="evaluationBtn()"> 
                                    <%--                                     <button type="submit" class="btn btn-primary">제출</button>
                                    <input type="hidden" id="hidden_stdId" name="stdId" value="${ loginUser.stdId }">
                                    <input type="hidden" id="hidden_classSeq" name="classSeq" value="${ lecture.classSeq }">
                                    </form> 
                                    --%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    <c:import url="../common/logoutModal.jsp"/>
    
    <script type="text/javascript">
    function evaluationBtn()
    {
    	var stdId = ${ loginUser.stdId };
    	var classSeq = ${ lecture.classSeq };
     	var evalOne = $('input[name="evalOne"]:checked').val();
     	var evalTwo = $('input[name="evalTwo"]:checked').val();
     	var evalThree = $('input[name="evalThree"]:checked').val();
    	var evalFour = $('input[name="evalFour"]:checked').val();
    	var evalFive = $('input[name="evalFive"]:checked').val();
    	var evalSix = $('input[name="evalSix"]:checked').val();
    	var evalSeven = $('input[name="evalSeven"]:checked').val();
    	var evalEight = $('input[name="evalEight"]:checked').val();
    	var evalNine = $('input[name="evalNine"]:checked').val();
    	var evalTen = $('input[name="evalTen"]:checked').val();
    	
        if(confirm("제출하시겠습니까?"))
    	{
        	if(evalOne == null)
        	{
        		alert("첫번째 문항을 입력하세요.");
        	}
        	else if(evalTwo == null)
        	{
        		alert("두번째 문항을 입력하세요.");
        	}
        	else if(evalThree == null)
        	{
        		alert("세번째 문항을 입력하세요.");
        	}
        	else if(evalFour == null)
        	{
        		alert("네번째 문항을 입력하세요.");
        	}
        	else if(evalFive == null)
        	{
        		alert("다섯번째 문항을 입력하세요.");
        	}
        	else if(evalSix == null)
        	{
        		alert("여섯번째 문항을 입력하세요.");
        	}
        	else if(evalSeven == null)
        	{
        		alert("일곱번째 문항을 입력하세요.");
        	}
        	else if(evalEight == null)
        	{
        		alert("여덞번째 문항을 입력하세요.");
        	}
        	else if(evalNine == null)
        	{
        		alert("아홉번째 문항을 입력하세요.");
        	}
        	else if(evalTen == null)
        	{
        		alert("열번째 문항을 입력하세요.");
        	}
        	else
        	{
				$.ajax(
				{
					url:"lecture_evaluation_submit.do",
					data:{"stdId" : stdId, "classSeq" : classSeq, "evalOne" : evalOne, "evalTwo" : evalTwo, "evalThree" : evalThree, "evalFour" : evalFour, 
						"evalFive" : evalFive, "evalSix" : evalSix, "evalSeven" : evalSeven, "evalEight" : evalEight, "evalNine" : evalNine, "evalTen" : evalTen},
					type:"post",
					success:function(data)
					{
						if(data == "ok")
						{
						console.log("성공");
						location.href="lecture_evaluation_select.do";
						}
						else
						{
							alert("실패");
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
    	}
    	else
    	{
    		alert("취소되었습니다.");
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