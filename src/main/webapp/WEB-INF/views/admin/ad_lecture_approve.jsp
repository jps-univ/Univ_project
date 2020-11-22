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
  <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_approve.css">
  <link rel="stylesheet" href="${contextPath }/resources/css/class_plan.css">
</head>
<body>
    
<c:import url="../common/adminTopbar.jsp" />
    <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>강의 관리</h4>
            <ul class="nav nav-pills nav-stacked">
        			<li><a href="lecture_Register.do">강의 등록</a></li>
			        <li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
			        <li class="active"><a href="lecture_Approve.do">강의 신청 관리</a></li>
			        <li><a href="lecture_Rest.do">휴/보강 관리</a></li>
			        <li><a href="adminDateGo.do">수강신청 기간설정</a></li>
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>강의 신청 관리</h2>
                <hr>
            </div>
            <form method="GET">
                <div id="rest_table_area">
                    <pre><select><option>----</option><option>강의명</option><option>교수명</option><option>개설학과</option>
                    </select>  <input type="search"> <button type="submit">검색</button><input type="button" id="total_approve" value="전체 승인"></pre>
                    <table id="rest_lecture" class=" table-hover">
                        <thead>
                            <tr>
                            	<th><p>수업번호</p></th>
                                <th><p>강의명</p></th>
                                <th><p>교수명</p></th>
                                <th><p>개설 학과</p></th>
                                <th><p>강의 시간</p></th>
                                <th><p>강의실</p></th>
                                <th><p>학점</p></th>
                                <th><p>강의 계획서 조회</p></th>
                                <th><p>승인 여부</p></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="l" items="${lectureApprove }">
							<tr>
								<td>${l.classSeq}</td>
								<td>${l.className}</td>
								<td>${l.proName}</td>
								<td>${l.deptCode}</td>
								<td>${l.total}</td>
								<td>${l.room}</td>
								<td>${l.gradeSize}</td>
								<td><a id="myBtn">조회하기</a></td>
								<td>
                                    <select class="appStatus">
                                        <option value="1">보류</option>
                                        <option value="2">재검토</option>
                                        <option value="3">승인</option>
                                    </select>
                                </td>

								
							</tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <hr>
                <input type="submit" id="approve_btn" value="등록">
            </form>
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
                                            <td><div></div></td>
                                            <td><div>담당교수</div></td>
                                            <td><div></div></td>
                                            <td><div>이메일</div></td>
                                            <td><div></div></td>
                                        </tr>
                                        <tr>
                                            <td><div>년도</div></td>
                                            <td><div></div></td>
                                            <td><div>학기</div></td>
                                            <td><div></div></td>
                                            <td><div>학점</div></td>
                                            <td><div></div></td>
                                        </tr>
                                        <tr>
                                            <td><div>이수구분</div></td>
                                            <td><div></div></td>
                                            <td><div>전공영역</div></td>
                                            <td><div></div></td>
                                            <td><div>과목코드</div></td>
                                            <td><div></div></td>
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
                                            <td><div></div></td>
                                            <td><div>주교재</div></td>
                                            <td><div></div></td>
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
        <script>
            var totalApproveBtn = document.getElementById("total_approve");

            var approve = document.getElementsByClassName("appStatus");
            totalApproveBtn.onclick = function () {

                for (var i = 0; approve.length; i++) {
                    approve[i].value = "3";
                }

            }
        </script>


        <!-- footer -->
        <footer class="container-fluid navbar-fixed-bottom">
            <p>진포상대학</p>
        </footer>
        <!-- footer 끝 -->
    </div>
</body>
</html>