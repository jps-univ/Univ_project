<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<html lang="ko">
  <style>
  #list{ text-align: center;}
  #btn1,#btn2{ background: white; border: 0px solid white; }
  #body{ width: 100%;}
  /*.contents {
          width: 80%;
          height: 70%;
          background: rgb(231, 231, 231);
          text-align : left;
          display : none;
          margin : auto; 
          margin-bottom: 20px;
      }*/

  #bar{ background-color: #edf1fc;
    border-bottom: solid #4e73df;
    height: 100px;
    padding: 40px;
    position: relative;
    bottom: 25px;
    white-space: nowrap;
    color: #4e73df;
    font-size: 35px; }
  /* #main2{ text-align: left; margin: auto; font-size: 35px; line-height: 550%;} */
  #tb{
    font-size:22px;
    color: black;
    margin-left: 350px;
  }
  #main{ text-align: center; }
  #content_title{
margin-top: 30px;
font-size: 40px;
color: #252525;


}
#rest_table_area{
padding: 10px; 
height: 500px;
overflow: scroll;
}

#rest_lecture{
width: 100%;
border: 1px solid rgb(46, 109, 151);
border-top: 5px solid rgb(46, 109, 151);
color: #808080;


}

#rest_lecture tr{
height: 30px;
border: solid rgb(149, 149, 150) 1px;
text-align: center;

}
#rest_lecture  tbody tr:nth-child(2n-1){
background: #f8f6ff;
}

#rest_lecture thead tr th{
  text-align: center;
}
/* #rest_lecture thead tr th:first-child,
#rest_lecture thead tr th:nth-child(2){
  width: 80px;
}
#rest_lecture thead tr th:nth-child(6){
width: 300px;
} */
#rest_lecture tr p{
margin-bottom: 0;

}
#rest_lecture_btn{
float: right;

margin-right: 10px;
}
.page {
 margin-top:50px;
 margin-left: 200px;

}
#btn1{ text-align: center; width: 130px; height: 50px; margin: auto; background: #2E9AFE; font-size: 28px; border: solid 3px A9E2F3; border-radius: 10px; color: white;}
#btn{ text-align: center; }
#year{ text-align: center; }
#text1,#text2{ width: 170px; }
  </style>
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
		<c:import url="../common/sidebar_professor.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<c:import url="../common/topbar_professor.jsp" />
				<!-- End of Topbar -->
				
				<!-- 여기서부터 내용  -->
				<!-- Begin Page Content -->
 <div id="body">
          <div id="bar">
              <p id="main2">출석관리</p>
          </div>
          <br><br><br>
          <!-- <h2 id="year">2020년 2학기 출결관리</h2> -->
          <table border="0" cellspacing="0" width="700px" id="tb">
           <c:forEach var="std" items="${ list }" end="0">
            <tr>
                <td><h4 id="code">과목번호 : </h4></td>
                <td><input type="text" id="text1" name="classSeq" class="classSeq" placeholder="${ std.classSeq }" disabled value="${ std.classSeq }"></td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <td><h4 id="code">교과목명 : </h4></td>
                <td><input type="text" id="text2" name="className" class="className" placeholder="${ std.className }" disabled value="${ std.className }"></td>
            </tr>
            <tr>
        		<td><input type="hidden" id="text1" name="classId" class="classId" disabled value="${ std.classId }" placeholder="${ std.classId }"></td>
        	</tr>
            </c:forEach>
          </table>
          <br>
          <div class="col-sm-9 page">
            <div id="content_title">
                <h2>2020년 2학기 출석관리</h2>
                <hr>
            </div>
            <div id="rest_table_area">
                <method method="GET">
                    <table id="rest_lecture"  class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <pre>               </pre>
                                </th>
                                <%-- <% for(int i=1; i<16; i++) { %> --%>
                                <th><pre>       1회차            </pre></th>
                                <%-- <%} %> --%>
                                <th><pre>       2회차            </pre></th>
                                <th><pre>       3회차            </pre></th>
                                <th><pre>       4회차            </pre></th>
                                <th><pre>       5회차            </pre></th>
                                <th><pre>       6회차            </pre></th>
                                <th><pre>       7회차            </pre></th>
                                <th><pre>       8회차            </pre></th>
                                <th><pre>       9회차            </pre></th>
                                <th><pre>       10회차          </pre></th>
                                <th><pre>       11회차          </pre></th>
                                <th><pre>       12회차          </pre></th>
                                <th><pre>       13회차          </pre></th>
                                <th><pre>       14회차          </pre></th>
                                <th><pre>       15회차          </pre></th>
                            </tr>
                        </thead>
                        <tbody>
                         <c:forEach var="std" items="${ list }">
                            <tr>
                                <td><p  id=${ std.stdId } class="stdId">${ std.stdId }</p></td>
                                <%-- <% for(int i=1; i<16; i++) { %> --%>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="1회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="1회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="1회차결석">결석
                                </td>
                                <%-- <%} %> --%>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="2회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="2회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="2회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="3회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="3회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="3회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="4회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="4회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="4회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="5회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="5회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="5회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="6회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="6회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="6회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="7회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="7회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="7회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="8회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="8회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="8회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="9회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="9회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="9회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="10회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="10회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="10회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="11회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="11회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="11회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="12회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="12회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="12회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="13회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="13회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="13회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="14회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="14회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="14회차결석">결석
                                </td>
                                <td>
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="15회차출석">출석
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="15회차지각">지각
                                <input type="radio" name="${ std.stdId }" class="attStatus" value="15회차결석">결석
                                </td>
                               
                            </tr>
                            </c:forEach>
                        </tbody>



                    </table>
                </method>
            </method>
        </div>
        <br><br>
        <div id="btn">
        <button onclick="Btn();" id="btn1">완료</button>
        </div>
        <br><br><br>
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


	<script type="text/javascript">
		function Btn()
		{
 		    var classId = $(".classId").val();   //->x */
			var dataArry = new Array();
			var dataLength =$("#rest_lecture tbody tr");  	// 들어온 데이터의 갯수
			var checked = dataLength.eq(1).children().eq(45).children().is(':checked');

			console.log(dataLength.eq(1).children().eq(0).children().text());
			if(confirm("변경하시겠습니까?"))
			{
 		 		for(var i = 0 ; i<dataLength.length; i++){
					 for(var j =1;j<16;j++){
						for(var k=1; k<4; k++){ 
						 if(dataLength.eq(i).children().eq(j).children().eq(k).is(':checked')){
							 
							 console.log(i+"번쨰 학번" + dataLength.eq(i).children().eq(0).children().text());
							 console.log(i+"번째 데이터 값"+dataLength.eq(i).children().eq(j).children().eq(k).val());
							 dataArry.push(dataLength.eq(i).children().eq(0).children().text());
							 dataArry.push(dataLength.eq(i).children().eq(j).children().eq(k).val());
							 
						 
						 }else{
							 console.log(i+"번쨰 줄에 선택된 값이 없습니다.");
						  } 
						 
						 }
					 }
				} 
				$.ajax(
				{
					url:"attinsert.do",
					data:{attArry:dataArry, classId : classId},
					traditional: true,
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
	</script>
</body>
</html>