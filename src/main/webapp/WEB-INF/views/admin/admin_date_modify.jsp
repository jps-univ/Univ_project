<%--
  Created by IntelliJ IDEA.
  User: moduhan
  Date: 2020-10-25
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<!DOCTYPE html>
<html lang="en">

<head>
  <title>진포상대학교</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */


        /* 사이드바 */
        .sidenav {
            background-color: #f1f1f1;
            position: fixed;
            width: 200px;
            height: 100%;
            margin-left: -20px;
            margin-top: 50px
        }

        /* 본문 */
        .page {
            margin-top: 50px;
            margin-left: 250px;
        }

        /* footer */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        .setDate th{
            color: red;
            padding : 0px;
        }

    </style>
</head>

<body>
    <c:import url="../common/adminTopbar.jsp"/>

    <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>강의 관리</h4>
            <ul class="nav nav-pills nav-stacked">
        			<li><a href="lecture_Register.do">강의 등록</a></li>
			        <li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
			        <li><a href="lecture_Approve.do">강의 신청 관리</a></li>
			        <li><a href="lecture_Rest.do">휴/보강 관리</a></li>
			        <li class="active"><a href="adminDateGo.do">수강신청 기간설정</a></li>
            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <br><br><br>
            <div class="enrollDateSet" style="border: 1px solid lightgrey;">
                <h1 style="padding-bottom: 25px;">수강신청 기간 설정</h1>
                <div class="table-responsive" style="height: 350px;">
                    <table class="table" style="height: 300px;">
                        <thead>
                        <tr>
                            <th>년도</th>
                            <th>학기</th>
                            <th>학년</th>
                            <th>시작일</th>
                            <th>시작시간</th>
                            <th>종료일</th>
                            <th>종료시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>2020</th>
                            <th>2</th>
                            <th>1</th>
                            <th>10/21</th>
                            <th>09:00</th>
                            <th>10/23</th>
                            <th>17:00</th>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><input type="text" style="width: 50px;" placeholder="2020"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1or2"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1to4"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/19"></th>
                            <th><input type="text" style="width: 50px;" placeholder="09:00"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/24"></th>
                            <th><input type="text" style="width: 50px;" placeholder="17:00"></th>
                            <th style="border: none;"><button type="button">설정</button></th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <br>
            <div class="enrollDateSet" style="border: 1px solid lightgrey;">
                <h1 style="padding-bottom: 25px;">수강정정 기간 설정</h1>
                <div class="table-responsive" style="height: 350px;">
                    <table class="table" style="height: 300px;">
                        <thead>
                        <tr>
                            <th>년도</th>
                            <th>학기</th>
                            <th>학년</th>
                            <th>시작일</th>
                            <th>시작시간</th>
                            <th>종료일</th>
                            <th>종료시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>2020</th>
                            <th>2</th>
                            <th>1</th>
                            <th>10/21</th>
                            <th>09:00</th>
                            <th>10/23</th>
                            <th>17:00</th>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><input type="text" style="width: 50px;" placeholder="2020"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1or2"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1to4"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/19"></th>
                            <th><input type="text" style="width: 50px;" placeholder="09:00"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/24"></th>
                            <th><input type="text" style="width: 50px;" placeholder="17:00"></th>
                            <th style="border: none;"><button type="button">설정</button></th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <br>
            <div class="enrollDateSet" style="border: 1px solid lightgrey;">
                <h1 style="padding-bottom: 25px;">휴학신청 기간 설정</h1>
                <div class="table-responsive" style="height: 350px;">
                    <table class="table" style="height: 300px;">
                        <thead>
                        <tr>
                            <th>년도</th>
                            <th>학기</th>
                            <th>학년</th>
                            <th>시작일</th>
                            <th>시작시간</th>
                            <th>종료일</th>
                            <th>종료시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>2020</th>
                            <th>2</th>
                            <th>1</th>
                            <th>10/21</th>
                            <th>09:00</th>
                            <th>10/23</th>
                            <th>17:00</th>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><input type="text" style="width: 50px;" placeholder="2020"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1or2"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1to4"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/19"></th>
                            <th><input type="text" style="width: 50px;" placeholder="09:00"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/24"></th>
                            <th><input type="text" style="width: 50px;" placeholder="17:00"></th>
                            <th style="border: none;"><button type="button">설정</button></th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <br>
            <div class="enrollDateSet" style="border: 1px solid lightgrey;">
                <h1 style="padding-bottom: 25px;">복학신청 기간 설정</h1>
                <div class="table-responsive" style="height: 350px;">
                    <table class="table" style="height: 300px;">
                        <thead>
                        <tr>
                            <th>년도</th>
                            <th>학기</th>
                            <th>학년</th>
                            <th>시작일</th>
                            <th>시작시간</th>
                            <th>종료일</th>
                            <th>종료시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>2020</th>
                            <th>2</th>
                            <th>1</th>
                            <th>10/21</th>
                            <th>09:00</th>
                            <th>10/23</th>
                            <th>17:00</th>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><input type="text" style="width: 50px;" placeholder="2020"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1or2"></th>
                            <th><input type="text" style="width: 50px;" placeholder="1to4"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/19"></th>
                            <th><input type="text" style="width: 50px;" placeholder="09:00"></th>
                            <th><input type="text" style="width: 50px;" placeholder="6/24"></th>
                            <th><input type="text" style="width: 50px;" placeholder="17:00"></th>
                            <th style="border: none;"><button type="button">설정</button></th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>

            <br>
            <br>
            <br>
            <br>
            <br>

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