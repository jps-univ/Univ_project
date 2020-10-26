<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_modify.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<c:import url="../common/adminTopbar.jsp" />

 <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>Lecture</h4>
            <ul class="nav nav-pills nav-stacked">
                 	<li><a href="#section2">수강신청 기간설정</a></li>
                <li><a href="lecture_Register.do">강의 등록</a></li>
                <li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
                <li class="active"><a href="lecture_Rest.do">휴/보강 관리</a></li>
                
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
                <form method="GET">
                    
                    <table id="rest_lecture" class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <p>강의 코드</p>
                                </th>
                                <th>
                                    <p>강의명</p>
                                </th>
                                <th>
                                    <p>교수명</p>
                                </th>
                                <th>
                                    <p>이수구분</p>
                                </th>
                                <th>
                                    <p>개설 학과</p>
                                </th>
                                <th>
                                    <p>강의실</p>
                                </th>
                                <th>
                                    <p>강의 시간</p>
                                </th>
                                <th>
                                    <p>학점</p>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>JAVA</td>
                                <td>김주호</td>
                                <td>전공필수</td>
                                <td>컴퓨터공학과</td>
                                <td>A5410</td>
                                <td>13:00~14:00</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>JAVA</td>
                                <td>김주호</td>
                                <td>전공필수</td>
                                <td>컴퓨터공학과</td>
                                <td>A5410</td>
                                <td>13:00~14:00</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>JAVA</td>
                                <td>김주호</td>
                                <td>전공필수</td>
                                <td>컴퓨터공학과</td>
                                <td>A5410</td>
                                <td>13:00~14:00</td>
                                <td>3</td>
                            </tr>


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
                <input type="search">
                <input type="button" value="검색">
            </div>
            </form>
            
            <div id="ad_lecture_UD">
                <table id="UD_lecture">
                    <tr>
                        <td>
                            <p>강의명</p>
                        </td>
                        <td>
                            <input type="hidden" id="lecture_code">
                            <input type="text">
                        </td>
                        <td>
                            <p>교수명</p>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>이수 구분</p>
                        </td>
                        <td>
                            <select name="" id="">
                                <option value="">-----</option>
                                <option value="">P/F</option>
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                        </td>
                        <td>
                            <p>개설 학과</p>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>강의시간</p>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                        <td>
                            <p>강의실</p>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>강의 코드</p>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                        <td>
                            <p>학점</p>
                        </td>
                        <td>
                            <select name="" id="">
                                <option value="">-----</option>
                                <option value="">P/F</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>강의 계획서</p>
                        </td>
                        <td colspan="3">
                            <a id="write">작성하러가기</a>
                        </td>
                    </tr>

                </table>
            </div>
            <input type="button" value="수정">
            <br><br><br><br><br><br><br>
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