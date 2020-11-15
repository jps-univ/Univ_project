<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>진포상대학교</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath}/resources/css/admin/ad_student_modify.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<c:import url="../common/adminTopbar.jsp" />

    <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>학생관리</h4>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="student_Register.do">학생 등록</a></li>
                <li class="active"><a href="student_Modify.do">학생 조회/수정</a></li>
                

            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>학생 정보 수정</h2>
                <hr>
            </div>
            <div id="std_info_table_area">
                <form method="post" action="student_Modify_Update.do" id="stdForm">
                    <table id="std_info_table">
                        <tr>
                            <td rowspan="5" id="img_area"><img src="#" alt="preview" id="std_img"></td>
                            <td class="stdtext">
                                <p>학번</p>
                            </td>
                            <td><input id="stdId" name="stdId" type="text"></td>
                            <td class="stdtext">
                                <p>성명</p>
                            </td>
                            <td><input id="stdName" name="stdName" type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>생년월일(성별)</p>
                            </td>
                            <td><input id="stdBirth"name="stdBirth" type="text"></td>
                            <td class="stdtext">
                                <p>대학</p>
                            </td>
                            <td>
                            	<select id="stdCollege"name="stdCollege">
                            		<option>---</option>
	                            	<c:forEach var="d" items="${adDept }">
	                            		<option value="${d.collegeCode }">${d.collegeName }</option>
	                            	</c:forEach>
                            	</select>
                            </td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>학부(과)</p>
                            </td>
                            <td>
                            	<select id="stdDepartment" name="stdDepartment" form="stdForm">
                            		<option><학과를 선택해주세요></option>
                            	</select>
                            </td>
                            <td class="stdtext">
                                <p>과정구분</p>
                            </td>
                            <td><input id="stdCourse" name="stdCourse"type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>학년</p>
                            </td>
                            <td><input id="stdSemester"name="stdSemester" type="text"></td>
                            <td class="stdtext">
                                <p>학적상태</p>
                            </td>
                            <td><input id="stdSchoolReg" name="stdSchoolReg"type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>입학구분</p>
                            </td>
                            <td><input id="stdEnterDiv"name="stdEnterDiv" type="text"></td>
                            <td class="stdtext"></td>
                            <td><input type="text"></td>
                        </tr>
                    </table>
                    <input type="file" value="a" onchange="previewImg()" id="preview_std_img">
            
                    <script>
                                
                        function previewImg() {
                            var preview = document.getElementById("std_img");
                            var file = document.getElementById("preview_std_img").files[0];
                            var reader = new FileReader();

                            reader.onloadend = function () {
                                preview.src = reader.result;

                            }
                            if (file) {
                                reader.readAsDataURL(file);

                            } else {
                                preview.src = "";
                            }
                        }
                    </script>


                    
            </div>
            <div id="std_card_table_area">
                <table id="std_card_table">
                    <tr>
                        <td class="stdtext">
                            <p>전화번호</p>
                        </td>
                        <td><input id="stdPhone"name="stdPhone" type="text"></td>
                        <td class="stdtext">
                            <p>핸드폰</p>
                        </td>
                        <td><input id="stdTel"name="stdTel" type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>이메일</p>
                        </td>
                        <td><input id="stdEmail"name="stdEmail" type="text"></td>
                        <td class="stdtext">
                            <p>은행명</p>
                        </td>
                        <td><input id="stdBank"name="stdBank" type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>학생주소</p>
                        </td>
                        <td><input id="stdAddress"name="stdAddress" type="text"></td>
                        <td class="stdtext">
                            <p>계좌번호</p>
                        </td>
                        <td><input id="stdAccount" name="stdAccount"type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>상세주소</p>
                        </td>
                        <td><input id="stdAddressDetail"name="stdAddressDetail" type="text"></td>
                        <td class="stdtext">
                            <p>예금주</p>
                        </td>
                        <td><input id="stdAccountHolder" name="stdAccountHolder"type="text"></td>
                    </tr>

            </div>

            </table>
            <input type="submit" value="수정" id="modify_btn">
            </form>
            
            <h2>학생조회</h2>
            <hr>
            <pre>대학 : <select name="searchCollege" id="searchCollege">
            		<option>---</option>
              <c:forEach var="d" items="${adDept }">
	               <option value="${d.collegeCode }">${d.collegeName }</option>
	          </c:forEach>
            </select> 학과 : <select name="searchDepartment" id="searchDepartment">
                <option value="0">------</option>
            </select> 학년 : <select name="searchSemester" id="searchSemester">
                <option value="0">------</option>
            </select> <input type="button" value="검색"></pre>
                
            
            <div id="total_std_area">
                
                <table id="total_std" class=" table-hover" >
                    <thead>
                        <tr>
                            <th onclick="a();">
                                <p>학번</p>
                            </th>
                            <th>
                                <p>성명</p>
                            </th>
                            <th>
                                <p>생년월일</p>
                            </th>
                            <th>
                                <p>대학</p>
                            </th>
                            <th>
                                <p>학과</p>
                            </th>
                            <th>
                                <p>과정구분</p>
                            </th>
                            <th>
                                <p>학년</p>
                            </th>
                            <th>
                                <p>학적상태</p>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="s" items="${ adStudentList }">
                        <tr>
                        <fmt:parseNumber var="Semester" value="${(s.stdSemester +1) div 2}" integerOnly="true"/>
                            <td>${s.stdId}</td> 
                            <td>${s.stdName}</td>
                            <td>${s.stdBirth}</td>
                            <td>${s.department.departmentName}</td>
                            <td>${s.department.college.collegeName}</td>
                            <td>${s.stdCourse}</td>
                            <td>${Semester}</td>
                            <td>
                          	<c:if test="${empty s.register.stdStatus }">
                          	재학
                          	</c:if>
                          	<c:if test="${!empty s.register.stdStatus }">
                          	${s.register.stdStatus} 
                          	</c:if>
                          	
                          	</td>
                          
                        </tr>
                      

					</c:forEach>
                    </tbody>
                </table>
                <script>
                
                $(function(){
                    $("#total_std tbody td").click(function(){
                    	$.ajax({
                    		url:"student_Modify_one.do",
                    		dataType:"json",
                    		data:{
                    			stdId :$(this).parent().children().eq(0).text()
                    		},success:function(data){
                    			console.log(data);
                    			$("#stdId").val(data.stdId);
                    			$("#stdName").val(data.stdName);
                    			$("#stdBirth").val(data.stdBirth);
                    			$("#stdCollege").val(data.department.collegeCode);
                    			$.ajax({
                    				url:"student_Modify_DeptCheck.do",
                        			dataType:"json",
                        			data:{
                        				collegeCode:$("#stdCollege").val()
                        			},success:function(dept){
                        				
                        				$('#stdDepartment').empty();
                        				$('#stdDepartment').append("<option><학과를 선택해주세요></option>");
                         				for(var index =0; index < dept.length;index++){
                        					var department = $("<option value="+ dept[index].departmentCode+ ">" + dept[index].departmentName +"</option>");
                        					$('#stdDepartment').append(department);
                        				}
                         				$("#stdDepartment").val(data.stdDepartment);
                        			}
                    				
                    			});
                    			
                    			$("#stdCourse").val(data.stdCourse);
                    			$("#stdSemester").val(data.stdSemester);
                    			$("#stdSchoolReg").val(data.register.stdStatus);
                    			$("#stdEnterDiv").val(data.stdEnterDiv);
                    			$("#stdPhone").val(data.stdPhone);
                    			$("#stdTel").val(data.stdTel);
                    			$("#stdEmail").val(data.stdEmail);
                    			$("#stdBank").val(data.stdBank);
                    			$("#stdAddress").val(data.stdAddress);
                    			$("#stdAddressDetail").val(data.stdAddressDetail);
                    			$("#stdAccount").val(data.stdAccount);
                    			$("#stdAccountHolder").val(data.stdAccountHolder); 
                    		},error:function(request,error,errorCode){
                    			console.log(request.error);
                    			console.log(request);
                    			console.log(request.errorCode);
                    		}
                    		
                    	});
                    });
                });
                
             
                
       
                
                $(function deptSelect(){
                	$("#stdCollege").change(function(){
                		
                		$.ajax({
                			url:"student_Modify_DeptCheck.do",
                			dataType:"json",
                			data:{
                				collegeCode:$(this).val()
                			},success:function(data){
                				console.log(data[1].departmentCode);
                				$('#stdDepartment').empty();
                				$('#stdDepartment').append("<option><학과를 선택해주세요></option>");
                 				for(var index =0; index < data.length;index++){
                					var department = $("<option value="+ data[index].departmentCode+ ">" + data[index].departmentName +"</option>");
                					$('#stdDepartment').append(department);
                				}
                				
                			},error:function(){
                				console.log("fail");
                			}
                			
                		});
                	});
                });
                
                $(function searchCollege(){
                	$("#searchCollege").change(function(){
                		$.ajax({
                			url:"student_Modify_Search.do",
                			dataType:"json",
                			data:{
                				searchCollege : $(this).val()
                			},success:function(data){
                				
                			},error:function(){
                				console.log("fail");
                			}
                		})
                		
                	});
                	
                });
                
/*                 $(function search(){
                	$("#searchCollege").change(function(){
                		
                		$.ajax({
                			url:"student_Modify_DeptCheck.do",
                			dataType:"json",
                			data:{
                				collegeCode:$(this).val(),
                				departmentCode:$("#searchDepartment").val(),
                				searchSemester:$("#searchSemester").val()
                				
                			},success:function(data){
                				
                				$('#searchDepartment').empty();
                				$('#searchDepartment').append("<option value="+"0"+"><학과를 선택해주세요></option>");
                 				for(var index =0; index < data.length;index++){
                					var department = $("<option value="+ data[index].departmentCode+ ">" + data[index].departmentName +"</option>");
                					$('#searchDepartment').append(department);
                				}
                				
                			},error:function(){
                				console.log("fail");
                			}
                			
                		})
                	});
                });  */

                
                </script>
            </div>
            <br><br><br><br><br><br><br><br>
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