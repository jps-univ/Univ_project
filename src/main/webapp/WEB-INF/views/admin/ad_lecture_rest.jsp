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
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_rest.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
			        <li><a href="lecture_Approve.do">강의 신청 관리</a></li>
			        <li  class="active"><a href="lecture_Rest.do">휴/보강 관리</a></li>
			        <li><a href="adminDateGo.do">수강신청 기간설정</a></li>
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>휴/보강 관리</h2>
                <hr>
            </div>
            <div id="rest_table_area">
                <form method="GET">
                    <table id="rest_lecture"  class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <p>강의 코드</p>
                                </th>
                                <th>
                                    <p>교수 번호</p>
                                </th>
                                <th>
                                    <p>휴강 날짜</p>
                                </th>
                                <th>
                                    <p>보강 날짜</p>
                                </th>
                                <th>
                                    <p>보강 시간</p>
                                </th>
                                <th>
                                    <p>사유</p>
                                </th>
                                <th>
                                    <p>강의실</p>
                                </th>
                                <th>
                                    <p>승인 여부</p>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>A12</td>
                                <td>20/09/26</td>
                                <td>10/22</td>
                                <td>13:00</td>
                                <td>교수가 아파서 병원에 갔어용</td>
                                <td>A5410</td>
                                <td><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>A12</td>
                                <td>10/12</td>
                                <td>10/22</td>
                                <td>13:00</td>
                                <td>병가</td>
                                <td>A5410</td>
                                <td><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>A12</td>
                                <td>10/12</td>
                                <td>10/22</td>
                                <td>13:00</td>
                                <td>병가</td>
                                <td>A5410</td>
                                <td><input type="checkbox"></td>
                            </tr>

                        </tbody>



                    </table>
                    
            </div>
            <hr>
            <input type="submit" id="rest_lecture_btn" value="확인">
            </form>
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