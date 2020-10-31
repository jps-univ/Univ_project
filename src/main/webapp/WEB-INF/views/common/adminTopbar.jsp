<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#logout_btn,#welcome{
    position: relative;
    left: 550px;
    
}
#logout_btn a{
    cursor: pointer;
    border-left: solid 1px rgb(78, 78, 78);
}


</style>
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">진포상대학</a>
            </div>
            <ul class="nav navbar-nav">
                <li class=""><a href="#">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">학생 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="student_Register.do">학생등록</a></li>
                        <li><a href="student_Modify.do">학생 정보 조회/수정</a></li>
                      
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">교수 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="professor_Register.do">교수등록</a></li>
                        <li><a href="professor_Modify.do">교수 정보 조회/수정</a></li>
                      
                    
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">강의 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="lecture_Register.do">강의 등록</a></li>
                        <li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
                        <li><a href="lecture_Approve.do">강의 신청 관리</a></li>
                        <li><a href="lecture_Rest.do">휴/보강 관리</a></li>
                        <li><a href="adminDateGo.do">기간 설정</a></li>

                    </ul>
                </li>
                
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">학적 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ad_student_rest.do">휴학신청 관리</a></li>
                        <li><a href="ad_student_return.do">복학신청 관리</a></li>
                        <li><a href="ad_student_graduate.do">졸업신청 관리</a></li>
                    </ul>
                </li>
                
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판 관리<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="<%=path%>/adQList.do">QnA 관리</a></li>
                        <li><a href="<%=path%>/adNList.do">공지사항 관리</a></li>
                    </ul>
                </li>
                 <li id="welcome"><a>관리자님 환영합니다</a></li>
                <li id="logout_btn"><a href="studentLogout.do">로그아웃</a></li>
            </ul>
        </div>
        
    </nav>
</body>
</html>