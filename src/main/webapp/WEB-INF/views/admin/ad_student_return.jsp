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
  <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_student_return.css">
</head>
<body>
     <c:import url="../common/adminTopbar.jsp" />
   

    <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>학적 관리</h4>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="ad_student_rest.do">휴학 관리</a></li>
                <li class="active"><a href="ad_student_return.do">복학 관리</a></li>
                <li><a href="ad_student_graduate.do">졸업 관리</a></li>
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>복학신청 관리</h2>
                <hr>
            </div>
            <form method="GET">
                <div id="rest_table_area">
                    <pre><select><option>----</option><option>학번</option><option>학과</option><option>이름</option>
                    </select>  <input type="search"> <button type="submit">검색</button><input type="button" id="total_approve" value="전체 승인"></pre>
                    <table id="rest_lecture" class=" table-hover">
                        <thead>
                            <tr>
                                <th><p>학번</p></th>
                                <th><p>이름</p></th>
                                <th><p>학과</p></th>
                                <th><p>이수학기</p></th>
                                <th><p>휴학 사유</p></th>
                                <th><p>휴학 기간</p></th>
                                <th><p>휴학신청일</p></th>
                                <th><p>복학신청일</p></th>
                                <th><p>승인 여부</p></th>
                            </tr>
                        </thead>
                        <tbody>
                    		 <c:forEach var ="l" items="${adReturnList}">
                            	<tr>
	                            	<td>${l.stdId }</td> 
	                                <td>${l.stdName }</td>
	                                <td>${l.departmentName }</td>
	                                <td>${l.stdSemester }</td>
	                                <td>${l.reasonsLeave }</td>
	                                <td>${l.leavePeriod }</td>
	                                <td>${l.applicationDate }</td>
	                                <td>${l.returningAsk }</td>
	                                <td>
	                                    <select class="appStatus">
	                                        <option value="1">보류</option>
	                                        <option value="2">재학</option>
	                                    </select>
	                                </td>
                            	</tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <hr>
                <input type="submit" id="approve_btn" value="수정">
            </form>
            
            <!-- 본문 끝 -->

        </div>
        <script>
        
            var totalApproveBtn = document.getElementById("total_approve");

            var approve = document.getElementsByClassName("appStatus");
            totalApproveBtn.onclick = function () {

                for (var i = 0; approve.length; i++) {
                    approve[i].value = "2";
                }

            }
        </script>
        
    <script>
        
        
        	$(function(){
        		
        		$('#approve_btn').click(function(){
        			var stdId = new Array();	//  학번을 담을 배열 추가 
        			var appStatus = document.getElementsByClassName("appStatus");
        			var app = $(".appStatus").eq(2).parent().parent().children().eq(0).text();	// 학번 뽑기 
        		
        			console.log(app);
        			console.log(appStatus.length);
        			
 	        			for(var i = 0; i<appStatus.length;i++){
	        				
	        				if(appStatus[i].value =='2'){
	        					console.log($(".appStatus").eq(i).parent().parent().children().eq(0).text());
	        					stdId.push($(".appStatus").eq(i).parent().parent().children().eq(0).text());
	        				} 
        			}  
 	        			console.log(stdId);
 	        			$.ajax({
 	        				url         :"ad_return_update.do",
 	        				traditional : true,
 	        				data :{ 
 	        						stdId :stdId
 	        				},success:function(result){
 	        					
 	        					if(result == 'ok'){
 	        						console.log("전송성공");
 	        						alert(appStatus.length+"명의 상태가 변경되었습니다.");
 	        						location.href="ad_student_return.do";
 	        						
 	        					}
 	        				},error:function(request, status, errorData){
 	        					
 	        					console.log(request.status);
 	   							console.log(request.responseText);
 	   							console.log(errorData); 
 	        					
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
    </div>
</body>
</html>