<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>진포상대학교</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_register.css?ver=3" type="text/css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
<script>

$(function(){
	$("#College").change(function(){
		$.ajax({
			url:"admin_Lecture_Department.do",
			dataType:"json",
			data:{
				CollegeCode:$(this).val()
			},success:function(data){
				var deptChoose = "<option>학과를 선택해주세요</option>";
				$("#professorCode").empty();
				$("#professorCode").append(deptChoose);
				
				$("#departmentCode").empty();
				$("#departmentCode").append(deptChoose)
				for(var index =0;index<data.length;index++){
					var department = $("<option value="+ data[index].departmentCode+ ">" + data[index].departmentName +"</option>");
					$("#departmentCode").append(department);
				}
				$("#departmentCode").change(function(){
					$.ajax({
						url:"admin_Lecture_Professor.do",
						dataType:"json",
						data:{
							departmentCode:$(this).val()
						},success:function(prof){
							console.log(prof);
							var professorCode = $("#professorCode");
							professorCode.empty();
							professorCode.append("<option>교수를선택해주세요</option>");
							for(var p=0; p<prof.length;p++){
								var professorName = $("<option value="+prof[p].professorId+">"+prof[p].professorName+"</option>");
								professorCode.append(professorName);
								console.log(professorCode);
							}
							
							
							
						},error:function(){
							console.log("교수이름 전송실패");
						}
					})
				});
				
			},error:function(){
				console.log("전송실패");
			}
		});
	});
	
});

</script>

<c:import url="../common/adminTopbar.jsp" />

 <div class="container-fluid">

    <!-- 사이드바 -->
    <nav class="col-sm-3 sidenav">
      <h4>강의 관리</h4>
      <ul class="nav nav-pills nav-stacked">
      	
  		<li class="active"><a href="lecture_Register.do">강의 등록</a></li>
		<li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
		<li><a href="lecture_Approve.do">강의 신청 관리</a></li>
		<li><a href="lecture_Rest.do">휴/보강 관리</a></li>
		<li><a href="adminDateGo.do">수강신청 기간설정</a></li>
      
      </ul>
    </nav>
    <!-- 사이드바 끝 -->

    <!-- 본문 -->
    <div class="col-sm-9 page">
      <div id="content_title">
        <h2>강의 등록</h2>
        <hr>
      </div>
        <form method="post" id="lectureForm" action="admin_Lecture_insert.do">
      <div id="reg_table_area">
          <table id="reg_lecture">
            <tr>
              <td><p>강의명</p></td>
              <td><input type="text" id="LectureName" class="LectureData" name="className"></td>
			  <td><p>강의 코드</p></td>
              <td><input type="text"  class="LectureData" name="classCode"></td>
            </tr>
            
            <tr>
              <td><p>이수 구분</p></td>
              <td><select name="classType" id="status"  class="LectureData"  form ="lectureForm">
                  <option>-----</option>
                  <option>전필</option>
                  <option>전선</option>
                  <option>교필</option>
                  <option>교선</option>
                </select>
              </td>
              <td><p>개설 학과</p></td>
              <td><select id="College">
               		<option>단과대학</option>
                	<c:forEach var="a" items="${adCollege}">
                		<option value="${a.collegeCode }">${a.collegeName }</option>
                	</c:forEach>
                  </select>
                  <select id="departmentCode"  class="LectureData" name="deptCode" form="lectureForm">
                	<option>단과대학을 먼저 선택해주세요</option>
                  </select>
              </td>
            </tr>
            
            <tr>
 				<td><p>교수명</p></td>
              <td>
              	<select id="professorCode"  class="LectureData" name="profId" form="lectureForm">
               		<option>학과를 먼저 선택해주세요..</option>
                </select>
              </td>
 				<td><p>강의시간</p></td>
              <td><input type="text" placeholder="ex) 월1/월2/화3"  class="LectureData" name="classTime"></td>
            </tr>
            
            <tr>
			  <td><p>강의실</p></td>
              <td><input type="text"  class="LectureData" name="room"></td>
              <td><p>학점</p></td>
              <td><select name="gradeSize" id="gradeSize"  class="LectureData"  form="lectureForm">
	                  <option value="0">-----</option>
	                  <option value="1">1</option>
	                  <option value="2">2</option>
	                  <option value="3">3</option>
                </select></td>
            </tr>
            
            <tr>
              <td><p>수강년도/학기</p></td>
              <td><select  class="LectureData" name="classYear" form="lectureForm">
             		<option value="0">선택</option >
             		<option value="2019">2019년</option>
             		<option value="2020">2020년</option>	
             		<option value="2021">2021년</option>	
             	  </select>
             	<select  class="LectureData" name="classSemester" form="lectureForm">
             		<option value="0">선택</option>
             		<option value="1">1</option>
             		<option value="2">2</option>
             	</select>
             </td>
             
              <td><p>수강학년</p></td>
              <td><select  class="LectureData" name="classLevel" form="lecureForm">
              		<option value="0">선택</option>
              		<option value="1">1</option>
              		<option value="2">2</option>
              		<option value="3">3</option>
              		<option value="4">4</option>
               	  </select>
              </td>
            </tr>

          </table>
      </div>
      <input type="submit" id="reg_lecture_btn" value="등록하기">
      </form>
      <!-- <div id="myModal" class="modal">
      	<div class="modal-content">
      		<div class="modal-header">
      		<p id="modal_title">강의 등록 상세 내용</p>
      			<span class="close">&times;</span>
      		</div>
      		<div class="modal-body">
      			<form>
      				<table id="modal_table" border="1">
      					<tr>
      						<td height="40px" width="90px">강의명</td>
      						<td width="160px"><p id="mLectureName" class="mLectureData"></p></td>
      						<td height="40px" width="80px">강의 코드</td>
      						<td width="180px"><p  class="mLectureData"></p></td>
      					</tr>
      					<tr>
      						<td height="40px" width="80px">이수구분</td>
      						<td width="100px"><p  class="mLectureData"></p></td>
      						<td height="40px" width="80px">개설학과코드</td>
      						<td width="100px"><p  class="mLectureData"></p></td>
      					</tr>
      					<tr>
      						<td height="40px" width="80px">교수코드</td>
      						<td width="100px"><p  class="mLectureData"></p></td>
      						<td height="40px" width="80px">강의시간</td>
      						<td width="100px"><p  class="mLectureData"></p></td>
      					</tr>
      					<tr>
      						<td height="40px" width="80px">강의실</td>
      						<td width="100px"><p class="mLectureData"></p></td>
      						<td height="40px" width="80px">학점</td>
      						<td width="100px"><p class="mLectureData"></p></td>
      					</tr>
      					<tr>
      						<td height="40px" width="80px">수강년도/학기</td>
      						<td width="150px"><p class="mLectureData p"></p><p class="p">년도</p><p class="mLectureData p"></p><p class="p">학기</p>
      						</td>
      						<td height="40px" width="80px">수강학년</td>
      						<td width="100px"><p class="mLectureData"></p></td>
      					</tr>

      				</table>
      			</form>
      		
      		</div>
      		<div class="modal-footer">
      		<p>강의계획서를 작성하시겠습니까?</p>
      			<button id="conceal_btn">나중에 작성하기</button>
      			<button id="conceal_btn">지금 작성하기</button>
      		</div>
      		
      	</div>
      </div> -->
         <!--  <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("reg_lecture_btn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        var canceal = document.getElementById("conceal_btn");
        
      
        // When the user clicks the button, open the modal 
        btn.onclick = function () {
            modal.style.display = "block";
            // 모달 안에 데이터 넣기
            var data = document.getElementsByClassName("LectureData");
            var mData = document.getElementsByClassName("mLectureData");
 			for(var i=0;i<data.length;i++){
 				mData[i].innerHTML = data[i].value;
 			}

            
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }
        canceal.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script> -->
    <script>
    var submitButton = document.getElementsById("reg_lecture_btn");
    
    submitButton.onclick = function(){
    	alert("강의가 등록되었습니다.");
    }
    </script>

    </div>
    <!-- 본문 끝 -->
  
 
  </div>

  

  <!-- footer -->
  <footer class="container-fluid navbar-fixed-bottom">
    <p>진포상대학</p>
  </footer>
  <!-- footer 끝 -->
</body>
</html>