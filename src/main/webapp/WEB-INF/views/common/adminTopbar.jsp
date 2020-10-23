<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">진포상대학</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">학생 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="./ad_student_register.html">학생등록</a></li>
                        <li><a href="./ad_student_modify.html">학생 정보 조회/수정</a></li>
                      
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">교수 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">교수등록</a></li>
                        <li><a href="#">교수 정보 조회/수정</a></li>
                        <li><a href="#">교수 수업 조회</a></li>
                    
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">강의 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="./ad_lecture_register.html">강의 등록</a></li>
                        <li><a href="./ad_lecture_UD.html">강의 정보 조회/수정</a></li>
                
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">공지사항 관리</a></li>
                        <li><a href="#">QnA 관리</a></li>
                        <li><a href="#">semi-option3</a></li>
                        <li><a href="#">semi-option4</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        
    </nav>
</body>
</html>