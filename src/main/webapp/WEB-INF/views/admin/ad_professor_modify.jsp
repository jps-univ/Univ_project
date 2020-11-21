<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="${contextPath}/resources/css/admin/ad_professor_modify.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<c:import url="../common/adminTopbar.jsp" />

 <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>교수관리</h4>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="professor_Register.do">교수 등록</a></li>
                <li  class="active"><a href="professor_Modify.do">교수 조회/수정</a></li>
                
             
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>교수 정보 수정</h2>
                <hr>
            </div>
            <div id="pro_info_table_area">
                <form method="post" action="professor_Modify_Update.do">
                    <table id="pro_info_table">
                        <tr>
                            <td rowspan="5" id="img_area"><img src="#" alt="preview" id="pro_img"></td>
                            <td class="stdtext">
                                <p>교번</p>
                            </td>
                            <td><input type="text" id="profId" name="profId"></td>
                            <td class="stdtext">
                                <p>성명</p>
                            </td>
                            <td><input type="text" id="profName" name="profName"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>주민번호</p>
                            </td>
                            <td><input type="text" id="profBirth" name="profBirth"></td>
                            <td class="stdtext">
                                <p>단과대학</p>
                            </td>
                            <td>
                            	<select id="collegeCode" name="collegeCode">
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
                            	<select id="profDepartment" name="profDepartment">
                            		<option><학과를 선택해주세요></option>
                            	</select>
                            </td>
                            <td class="stdtext">
                                <p>연구실</p>
                            </td>
                            <td><input type="text" id="lab" name="lab"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>주소</p>
                            </td>
                            <td><input type="text" id="profAddress" name="profAddress"></td>
                            <td class="stdtext">
                                <p>핸드폰</p>
                            </td>
                            <td><input type="text" id="profPhone" name="profPhone"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>상세주소</p>
                            </td>
                            <td><input type="text" id="profAddressDetail" name="profAddressDetail"></td>
                            <td class="stdtext"></td>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                    </table>
                    <input type="file" value="a" onchange="previewImg()" id="preview_std_img">
            
                    <script>
                                
                        function previewImg() {
                            var preview = document.getElementById("pro_img");
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
            <div id="pro_card_table_area">
                <table id="pro_card_table">
                  
                    <tr>
                        <td class="stdtext">
                            <p>이메일</p>
                        </td>
                        <td><input type="text" id="profEmail" name="profEmail"></td>
                        <td class="stdtext">
                            <p>은행명</p>
                        </td>
                        <td><input type="text" id="profBank" name="profBank"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>예금주</p>
                        </td>
                        <td><input type="text" id="profAccountHolder" name="profAccountHolder"></td>
                        <td class="stdtext">
                            <p>계좌번호</p>
                        </td>
                        <td><input type="text" id="profAccount" name="profAccount"></td>
                    </tr>
                   
			
            </div>

            </table>
            <input type="submit" value="수정" id="modify_btn">
            </form>
            
            <h2>교수조회</h2>
            <hr>
            <pre>대학 : <select name="" id="">
                <option value="">------</option>
                <option value="">----s--</option>
            </select> 학과 : <select name="" id="">
                <option value="">------</option>
                <option value="">----s--</option>
            </select>  <input type="button" value="검색"></pre>
                
            
            <div id="total_std_area">
                
                <table id="total_std" class=" table-hover" >
                    <thead>
                        <tr>
                            <th><p>교번</p></th>
                            <th><p>성명</p></th>
                            <th><p>핸드폰</p></th>
                            <th><p>대학</p></th>
                            <th><p>담당학과</p></th>
                            <th><p>연구실</p></th>
                           
                        </tr>
                    </thead>
                    <tbody>
						<c:forEach var="p" items="${adProfessorList }">
							<tr>
								<td>${p.profId }</td>
								<td>${p.profName }</td>
								<td>${p.profPhone}</td>
								<td>${p.collegeName }</td>
								<td>${p.departmentName }</td>
								<td>${p.lab }</td>
							</tr>
						</c:forEach>

                    </tbody>



                </table>
            </div>
            <br><br><br><br><br><br><br><br>
        </div>
        </div>
        <!-- 본문 끝 -->

    </div>
    <script>
    
    $(function(){
        $("#total_std tbody td").click(function(){
        	$.ajax({
        		url:"professor_Modify_one.do",
        		dataType:"json",
        		data:{
        			profId :$(this).parent().children().eq(0).text()
        		},success:function(data){
        			console.log(data);
        			$("#profId").val(data.profId);
        			$("#profName").val(data.profName);
        			$("#profBirth").val(data.profBirth);
        			$("#collegeCode").val(data.collegeCode);
        			$.ajax({
        				url:"professor_Modify_DeptCheck.do",
            			dataType:"json",
            			data:{
            				collegeCode:$("#collegeCode").val()
            			},success:function(dept){
            				console.log(dept);
            				$('#profDepartment').empty();
            				$('#profDepartment').append("<option><학과를 선택해주세요></option>");
             				for(var index =0; index < dept.length;index++){
            					var department = $("<option value="+ dept[index].departmentCode+ ">" + dept[index].departmentName +"</option>");
            					$('#profDepartment').append(department);
            				}
             				$("#profDepartment").val(data.profDepartment);
            			}
        				
        			});
        			
        			$("#lab").val(data.lab);
        			$("#profAddress").val(data.profAddress);
        			$("#profPhone").val(data.profPhone);
        			$("#profAddressDetail").val(data.profAddressDetail);
        			$("#profEmail").val(data.profEmail);
        			$("#profBank").val(data.profBank);
        			$("#profAccount").val(data.profAccount);
        			$("#profAccountHolder").val(data.profAccountHolder);
        		},error:function(request,error,errorCode){
        			console.log(request.error);
        			console.log(request);
        			console.log(request.errorCode);
        		}
        		
        	});
        });
    });
    
    
    $(function deptSelect(){
    	$("#collegeCode").change(function(){
    		
    		$.ajax({
    			url:"student_Modify_DeptCheck.do",
    			dataType:"json",
    			data:{
    				collegeCode:$(this).val()
    			},success:function(data){
    				console.log(data[1].departmentCode);
    				$('#profDepartment').empty();
    				$('#profDepartment').append("<option><학과를 선택해주세요></option>");
     				for(var index =0; index < data.length;index++){
    					var department = $("<option value="+ data[index].departmentCode+ ">" + data[index].departmentName +"</option>");
    					$('#profDepartment').append(department);
    				}
    				
    			},error:function(){
    				console.log("fail");
    			}
    			
    		});
    	});
    });
    </script>

    <!-- footer -->
    <footer class="container-fluid navbar-fixed-bottom">
        <p>진포상대학</p>
    </footer>
    <!-- footer 끝 -->


</body>
</html>