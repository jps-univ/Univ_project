<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<%=path%>/resources/css/login.css">
	<title>진포상대학교</title>
</head>
<body>
<%-- 	<c:if test="${ !empty sessionScope.loginUser }">
		 <c:redirect url="/goMain.do" /> 
		
	</c:if> --%>
	
	
	<c:choose>
	<c:when test="${!empty sessionScope.loginUser && sessionScope.loginUser.stdName ne '관리자' }">
		<c:redirect url="/goMain.do" /> 
	</c:when> 
	<c:when test="${sessionScope.loginUser.stdName eq '관리자' }">
	<c:redirect url="/student_Register.do" /> 
	</c:when>
	</c:choose>
	
	
    <div class="content">
        <!-- 로고 -->
            <div class="logo">
                <p style="margin: auto;"><b>진포상대학교&nbsp;&nbsp;|&nbsp;&nbsp;포탈</b></p>
                <p style="font-size: 12pt; margin-top: auto;">JINPOSANG UNIVERSITY</p>
            </div>
        <!-- 로그인 박스 -->
<%--        action 위에걸로하면 맥에서 경로를 못찾는것같음. 404뜸.(인텔리제이라서 못찾는것일수도있음)--%>
<%--        <form class="login" action="/univ/studentLogin.do" method="post"> --%>
        <form class="login" action="studentLogin.do" method="post">
            <div class="loginbox">
                <div class="login-wrapper">
                    <span>
                        <div class="userId">
                            <label for="userID" style="left: 0px; right: auto; position: absolute;">아이디</label>
                            <input maxlength="10" name="stdId" required="required" id="userID" type="text" onblur="changeLable(this)">
                            <i class="fas fa-user"></i>
                        </div>
                    </span>
                </div>
                <div class="login-wrapper">
                    <span>
                        <div class="userPwd">
                            <label for="userPWD" style="left: 0px; right: auto; position: absolute;">비밀번호</label>
                            <input maxlength="10" name="stdPwd" required="required" id="userPWD" type="password" onblur="changeLable(this)">
                            <i class="fas fa-lock"></i>
                        </div>
                    </span>
                </div>
                <div class="findArea">
                    <button type="button" class="btn-default" data-toggle="modal" data-target="#myModal">아이디찾기</button>
                    <button type="button" class="btn-default" data-toggle="modal" data-target="#myModal2">비밀번호찾기</button>
                </div>
                <div class="submit">
                    <button type="submit" class="btn btn-primary" id="loginBtn">로그인</button><a href="loginProfessor.do">@</a>
                </div>  
            </div>
             
        </form>
        
        <!-- 아이디 찾기 모달 영역 -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">아이디 찾기</h4>
                </div>
                <div class="modal-body">
                    <div class="number">
                    <div>
                        <div class="circle">
                            <span class="number1">1</span>
                        </div>
                        <span>정보입력</span>
                    </div>
                        <div style="width: 80%;">
                            <hr>
                        </div>
                    <div>    
                        <div class="circle circle_gray">
                            <span class="number2">2</span>
                        </div>
                        <span style="color: rgba(0,0,0,.38);">ID확인</span>
                    </div>    
                    </div>
                    <hr>
                    <div>
                        <div class="login-wrapper">
                            <span>
                                <div class="userId">
                                    <label for="userID" style="left: 0px; right: auto; position: absolute;">성명</label>
                                    <input maxlength="10" required="required" id="userID" type="text" onblur="changeLable(this)" style="border:none">
                                </div>
                            </span>
                        </div>
                        <div class="login-wrapper">
                            <span>
                                <div class="userPwd">
                                    <label for="userPWD" style="left: 0px; right: auto; position: absolute;">생년월일</label>
                                    <input maxlength="10" required="required" id="userPWD" type="text" onblur="changeLable(this)" style="border:none">
                                </div>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
                </div>
            </div>
            </div>
        </div>
        <!-- 아이디 찾기 모달 영역 끝 -->

        <!-- 비밀번호 찾기 모달 영역 -->
        <div class="modal fade" id="myModal2" role="dialog">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">비밀번호 찾기</h4>
                </div>
                <div class="modal-body">
                    <div class="number">
                        <div>
                            <div class="circle">
                                <span class="number1">1</span>
                            </div>
                            <span>정보입력</span>
                        </div>
                            <div style="width: 16%;">
                                <hr>
                            </div>
                        <div>    
                            <div class="circle circle_gray">
                                <span class="number2">2</span>
                            </div>
                            <span style="color: rgba(0,0,0,.38);">인증번호확인</span>
                        </div>
                            <div style="width: 16%;">
                                <hr>
                            </div>
                        <div>    
                            <div class="circle circle_gray">
                                <span class="number2">3</span>
                            </div>
                            <span style="color: rgba(0,0,0,.38);">비밀번호변경</span>
                        </div>
                            <div style="width: 19%;">
                                <hr>
                            </div>
                        <div>    
                            <div class="circle circle_gray">
                                <span class="number2">4</span>
                            </div>
                            <span style="color: rgba(0,0,0,.38);">완료</span>
                        </div>
                            
                        </div>
                        <hr>
                        <div>
                            <div class="login-wrapper">
                                <span>
                                    <div class="userId">
                                        <label for="userID" style="left: 0px; right: auto; position: absolute;">아이디</label>
                                        <input maxlength="10" required="required" id="userID" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                </span>
                            </div>
                            <div class="login-wrapper">
                                <span>
                                    <div class="userPwd">
                                        <label for="userPWD" style="left: 0px; right: auto; position: absolute;">성명</label>
                                        <input maxlength="10" required="required" id="userPWD" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                </span>
                            </div>
                            <div class="login-wrapper">
                                <span>
                                    <div class="userPwd" style="margin-bottom: 0;">
                                        <label for="userPWD" style="left: 0px; right: auto; position: absolute;">이메일</label>
                                        <input maxlength="10" required="required" id="userPWD" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                    <div style="margin-top: 9px; margin-bottom: 25px; font-size: 10pt;">등록하신 메일로 인증번호가 발송됩니다.</div>
                                </span>
                            </div>
                        </div>
                    </div>

                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
                </div>
            </div>
            </div>
        </div>
        <!-- 비밀번호 찾기 모달 영역 끝 -->
        
        <!-- Copyright -->
            <div class="mini-footer">
                <p>ⓒ 2020 Jinposang University. All Rights Reserved.</p>
            </div>
    </div>

    <!-- 입력창 -->
    <script>

        $("#userID, #userPWD").on('click',function(){
            $(this).prev().css({"font-size":"15px","bottom":"26px"});
        });

        function changeLable(elm){
            if($(elm).val() == ""){
                $(elm).prev().css({"font-size":"","bottom":""});
            }
        }
    	
        $(function(){
        	$("#loginBtn").on('click',function(){
        		location.href = "login.do";

        	});
        });
        
        
    </script>
    
</body>
</html>