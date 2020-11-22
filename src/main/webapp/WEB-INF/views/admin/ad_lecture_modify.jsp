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
   
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_modify.css?ver=3" type="text/css">
      <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_class_plan.css?ver=1" type="text/css">
</head>
<body>
<script>
	$(function(){
		$("#rest_lecture tbody td").click(function(){
			$.ajax({
				url:"lecture_Modify_selectOne.do",
				dataType:"json",
				data:{
					classSeq:$(this).parent().children().eq(0).text()
				},success:function(lecture){
					$("#classSeq").val(lecture.classSeq);
					$("#LectureName").val(lecture.className);
					$("#classCode").val(lecture.classCode);
					$("#status").val(lecture.classType);
					$("#College").val(lecture.collegeCode);
					$.ajax({
						url:"student_Modify_DeptCheck.do",
            			dataType:"json",
            			data:{
            				collegeCode:$("#College").val()
            			},success:function(dept){
            				$("#departmentCode").empty();
            				$('#departmentCode').append("<option><학과를 선택해주세요></option>");
             				for(var index =0; index < dept.length;index++){
            					var department = $("<option value="+ dept[index].departmentCode+ ">" + dept[index].departmentName +"</option>");
            					$('#departmentCode').append(department);
            				}
             				$("#departmentCode").val(lecture.deptCode);
            				$.ajax({
            					url:"admin_Lecture_Professor.do",
            					dataType:"json",
            					data:{
            						departmentCode :$("#departmentCode").val()
            					},success:function(prof){
            						var professorCode=$("#professorCode");
            						professorCode.empty();
        							professorCode.append("<option>교수를선택해주세요</option>");
        							for(var p=0; p<prof.length;p++){
        								var professorName = $("<option value="+prof[p].professorId+">"+prof[p].professorName+"</option>");
        								professorCode.append(professorName);
        							}
        							$("#professorCode").val(lecture.profId);
            					}
            				})
            			},error:function(){
            				console.log("전송 실패");
            			}
            			
					});
					
					$("#classTime").val(lecture.total);
					$("#room").val(lecture.room);
					$("#gradeSize").val(lecture.gradeSize);
					$("#classYear").val(lecture.classYear);
					$("#classSemester").val(lecture.classSemester);
					$("#classLevel").val(lecture.classLevel);
					
					
				},error:function(){
					console.log("전송실패");
				}
			});
		});
	});
	
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
        			<li><a href="lecture_Register.do">강의 등록</a></li>
			        <li class="active"><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
			        <li><a href="lecture_Approve.do">강의 신청 관리</a></li>
			        <li><a href="lecture_Rest.do">휴/보강 관리</a></li>
			        <li><a href="adminDateGo.do">수강신청 기간설정</a></li>
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>강의 정보 조회/수정</h2>
                <hr>
            </div>
            <div id="rest_table_area">


                <table id="rest_lecture" class=" table-hover">
                    <thead>
                        <tr>
                            <th><p>강의 번호</p></th>
                            <th><p>강의명</p></th>
                            <th><p>교수명</p></th>
							<th><p>이수구분</p></th>
                            <th><p>개설 학과</p></th>
                            <th><p>강의실</p></th>
                            <th><p>강의 시간</p></th>
                            <th><p>학점</p></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="l" items="${selectAdLectureList}">
                        <tr>
							<td>${l.classSeq }</td>
							<td>${l.className}</td>
							<td>${l.proName }</td>
							<td>${l.classType }</td>
							<td>${l.deptCode}</td>
							<td>${l.room }</td>
							<td>${l.total }</td>
							<td>${l.gradeSize}</td>
                        </tr>
					</c:forEach>


                    </tbody>
                </table>

            </div>
            <hr>

            <div id="search_area">
                <select>
                    <option>---</option>
                    <option>강의명</option>
                    <option>교수명</option>
                    <option>개설학과</option>
                </select>
                <input type ="hidden" value="0" id="classSeq">
                <input type="search">
                <input type="button" value="검색">
            </div>


            <div id="ad_lecture_UD">
                <form>
                    <table id="UD_lecture">
			            <tr>
			              <td><p>강의명</p></td>
			              <td><input type="text" id="LectureName" class="LectureData" name="className"></td>
						  <td><p>강의 코드</p></td>
			              <td><input type="text"  class="LectureData" name="classCode" id="classCode"></td>
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
				              <td><input type="text" placeholder="ex) 월1/월2/화3"  class="LectureData" name="classTime" id="classTime"></td>
				            </tr>
				            
				            <tr>
							  <td><p>강의실</p></td>
				              <td><input type="text"  class="LectureData" name="room" id="room"></td>
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
			              		<td><select  class="LectureData" name="classYear" form="lectureForm" id="classYear">
			             				<option value="0">선택</option >
			             				<option value="2019">2019년</option>
			             				<option value="2020">2020년</option>	
			             				<option value="2021">2021년</option>	
			             	  		</select>
			             			<select  class="LectureData" name="classSemester" form="lectureForm" id="classSemester">
					             		<option value="0">선택</option>
					             		<option value="1">1</option>
					             		<option value="2">2</option>
			             			</select>
			             		</td>
			              		<td><p>수강학년</p></td>
			              		<td><select  class="LectureData" name="classLevel" form="lectureForm" id="classLevel">
			              				<option value="0">선택</option>
			              				<option value="1">1</option>
			              				<option value="2">2</option>
			              				<option value="3">3</option>
			              				<option value="4">4</option>
			               	  		</select></td>
			           		 </tr>
			           		 <tr>
                            	<td><p>강의 계획서</p></td>	
                            	<td colspan="3"><a id="myBtn">작성하러가기</a></td>
                       		 </tr>

                    </table>
                </form>
            </div>

            <input type="button" value="수정">
            <br><br><br><br><br><br><br>

        </div>
        <div id="myModal" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span>강의 계획서</span>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <div id="main_con">


                        <!-- 공지사항 목록 조회  -->
                        <div id="class_plan_area">
                            <!--                    <form method="GET">         -->
                            <table id="class_info">
                                <div id="class_info_title">
                                    <div>교과목 개요</div>
                                </div>
                                <tbody>
                                    <tr>
                                        <td><div>강의명</div></td>
                                        <td><p id="mlectureName"></p></td>
                                        <td><div>담당교수</div></td>
                                        <td><p id="mProfessorName"></p></td>
                                        <td><div>강의실</div></td>
                                        <td><p id="mRoom"></p></td>
                                    </tr>
                                    <tr>
                                        <td><div>년도</div></td>
                                        <td><p id="mYear"></p></td>
                                        <td><div>학기</div></td>
                                        <td><p id="mSemester"></p></td>
                                        <td><div>학점</div></td>
                                        <td><p id="mGradeSize"></p></td>
                                    </tr>
                                    <tr>
                                        <td><div>이수구분</div></td>
                                        <td><p id="mClassStatus"></p></td>
                                        <td><div>전공영역</div></td>
                                        <td><p id="mDepartment"></p></td>
                                        <td><div>과목코드</div></td>
                                        <td><p id="mclassCode"></p></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="class_sum_title">
                                <div>교과목 개요</div>
                            </div>
                            <div id="class_sum_content">
                                <div>내용</div>
                            </div>
                            <table id="class_goal">
                                <tbody>
                                    <tr>
                                        <td><div>교육목표</div></td>
                                        <td><p id="mclassCode"></p></td>
                                        <td><div>주교재</div></td>
                                        <td><p id="mclassCode"></p></td>
                                    </tr>
                                </tbody>
                            </table>

                            <div id="class_detail_title">
                                <div>주차별 계획</div>
                            </div>

                            <table id="class_detail_table" border="1">
                                <thead>
                                    <tr height="30px;">
                                        <td><p>주차</p></td>
                                        <td><p>주제</p></td>
                                        <td><p>세부 내용</p></td>
                                    </tr>
                                </thead>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td class="detail_head"><div>주차</div></td>
                                    <td class="detail_head"><div>주제</div></td>
                                    <td class="detail_head"><div>세부 내용</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                <tr>
                                    <td><div>1</div></td>
                                    <td><div>html</div></td>
                                    <td><div>알아서 만들기</div></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="conceal_btn">확인</button>
                    <br><br>
                    <br><br>

                </div>
            </div>
        </div>
        <!-- 본문 끝 -->


    </div>
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        var canceal = document.getElementById("conceal_btn");

        // When the user clicks the button, open the modal 
        btn.onclick = function () {
        	var classSeq = document.getElementById("classSeq").value;
        	var className = document.getElementById("LectureName").value;
        	
        	var p = document.getElementById("professorCode");
        	var professorName = p.options[p.selectedIndex].text;
        	
        	var room = document.getElementById("room").value;
        	var classCode = document.getElementById("classCode").value;
        	
        	var Department = document.getElementById("departmentCode");
        	var DepartmentName = Department.options[Department.selectedIndex].text;
        	
        	var grade = document.getElementById("gradeSize");
        	var gradeSize = grade.options[grade.selectedIndex].text;
        	
        	var Year = document.getElementById("classYear");
        	var classYear = Year.options[Year.selectedIndex].text;
        	
        	var semester = document.getElementById("classSemester");
        	var classSemester = semester.options[semester.selectedIndex].text; 
        	
        	var status = document.getElementById("status").value;
        	

        	document.getElementById("mlectureName").innerHTML=className;
        	document.getElementById("mProfessorName").innerHTML=professorName;	
        	document.getElementById("mRoom").innerHTML=room;
        	document.getElementById("mclassCode").innerHTML=classCode;
        	document.getElementById("mDepartment").innerHTML=DepartmentName;
        	document.getElementById("mGradeSize").innerHTML=gradeSize;
        	document.getElementById("mYear").innerHTML=classYear;
        	document.getElementById("mSemester").innerHTML=classSemester;
        	document.getElementById("mClassStatus").innerHTML=status;
        	
        	
        	console.log(classSeq);
        	$.ajax({
        		url:"",
        		type:"",
        		data:{
        			
        		},success:function(plan){
        			$("#mlectureName").val($("#LectureName").val());
        		},error:function(error){
        			console.log("전송 실패");
        		}
        			
        	})
            modal.style.display = "block";
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
    </script>


    <!-- footer -->
    <footer class="container-fluid navbar-fixed-bottom">
        <p>진포상대학</p>
    </footer>
    <!-- footer 끝 -->

</body>
</html>