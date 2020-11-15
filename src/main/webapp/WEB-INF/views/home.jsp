<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<%-- 		<c:set var="userId" value=${'#userID'}/>
		<c:set var="subId" value="${ fn:substring(userId, 0, 1) }"/>
		<c:choose>
			<c:when test="${ subId eq 9 }"><form class="login" action="professorLogin.do" method="post"></c:when>
		</c:choose> --%>
        <form class="login" action="studentLogin.do" method="post">
            <div class="loginbox">
                <div class="login-wrapper">
                    <span>
                        <div class="userId">
                            <label for="userID" style="left: 0px; right: auto; position: absolute;">아이디</label>
                            <input class="userID" maxlength="10" name="stdId" required="required" id="userID" type="text" onblur="changeLable(this)">
                            <i class="fas fa-user"></i>
                        </div>
                    </span>
                </div>
                <div class="login-wrapper">
                    <span>
                        <div class="userPwd">
                            <label for="userPWD" style="left: 0px; right: auto; position: absolute;">비밀번호</label>
                            <input class="userPWD" maxlength="10" name="stdPwd" required="required" id="userPWD" type="password" onblur="changeLable(this)">
                            <i class="fas fa-lock"></i>
                        </div>
                    </span>
                </div>
                <div class="findArea">
                    <button type="button" id="findTdBtn" class="btn-default" data-toggle="modal" data-target="#myModal">아이디찾기</button>
                    <button type="button" id="findTdPwdBtn" class="btn-default" data-toggle="modal" data-target="#myModal2">비밀번호찾기</button>
                </div>
                <div class="submit">
                    <button type="submit" class="btn btn-primary" id="loginBtn">로그인</button>
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
                    <div class="number" id="idNumberArea">
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
                    <div id="findIdInfoArea">
                        <div class="login-wrapper">
                            <span>
                                <div class="userId">
                                    <label for="stdName" style="left: 0px; right: auto; position: absolute;">성명</label>
                                    <input maxlength="10" class="userID" required="required" id="stdName" type="text" onblur="changeLable(this)" style="border:none">
                                </div>
                            </span>
                        </div>
                        <div class="login-wrapper">
                            <span>
                                <div class="userPwd">
                                    <label for="stdEmail" style="left: 0px; right: auto; position: absolute;">이메일</label>
                                    <input class="userPWD" required="required" id="stdEmail" type="text" onblur="changeLable(this)" style="border:none">
                                </div>
                            </span>
                        </div>
                    </div>
                    <div id="findIdArea" style="text-align:center;">
                    </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-default" id="findIdBtn">확인</button>
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
                    <div class="number" id="pwdNumberArea">
                        <div>
                            <div class="circle">
                                <span class="number1">1</span>
                            </div>
                            <span>정보입력</span>
                        </div>
                            <div style="width: 25%;">
                                <hr>
                            </div>
                        <div>    
                            <div class="circle circle_gray">
                                <span class="number2">2</span>
                            </div>
                            <span style="color: rgba(0,0,0,.38);">인증번호전송</span>
                        </div>
                            <div style="width: 25%;">
                                <hr>
                            </div>
                        <div>    
                            <div class="circle circle_gray">
                                <span class="number3">3</span>
                            </div>
                            <span style="color: rgba(0,0,0,.38);">완료</span>
                        </div>
                            
                        </div>
                        <hr>
                        <div id="findPwdInfoArea">
                            <div class="login-wrapper">
                                <span>
                                    <div class="userId">
                                        <label for="userID" style="left: 0px; right: auto; position: absolute;">아이디</label>
                                        <input class="userID" required="required" id="pwdfindID" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                </span>
                            </div>
                            <div class="login-wrapper">
                                <span>
                                    <div class="userPwd">
                                        <label for="userPWD" style="left: 0px; right: auto; position: absolute;">성명</label>
                                        <input class="userID" maxlength="10" required="required" id="pwdfindName" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                </span>
                            </div>
                            <div class="login-wrapper">
                                <span>
                                    <div class="userPwd" style="margin-bottom: 0;">
                                        <label for="userPWD" style="left: 0px; right: auto; position: absolute;">이메일</label>
                                        <input class="userID" required="required" id="pwdfindEmail" type="text" onblur="changeLable(this)" style="border:none;">
                                    </div>
                                    <div style="margin-top: 9px; margin-bottom: 25px; font-size: 10pt;">등록하신 메일로 인증번호가 발송됩니다.</div>
                                </span>
                            </div>
                        </div>
                        <div id="findPwdArea" style="text-align:center;">
                    	</div>
                    </div>

                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-default"  id="findPwdBtn">확인</button>
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
		
        $(".userID, .userPWD").on('click, focus',function(){
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
        
        // 아이디 찾기
        $('#findIdBtn').on('click',function(){
        	
        	if ($("#findIdArea").css("display") == "none") {
        	
	        	$.ajax({
	        		type:"post",
	        		url:"findId.do",
	        		data : {
	          			stdName : $("#stdName").val(),
	        			stdEmail : $("#stdEmail").val()
	        		},
	        		success : function(data) {
	        			console.log(data);
	        			if (data.result == "OK") {
	        				$("#findIdInfoArea").hide();
	            			$("#findIdArea").show();
	            			$("#findIdArea").html($("<div>").text("당신의 아이디는 " + data.stdID  + " 입니다."));
	            			$("#idNumberArea .number2").parent().attr("class","circle");
	            			$("#idNumberArea .number1").parent().attr("class","circle circle_gray");
	        			} else {
	        				alert("입력하신 정보가 올바르지 않습니다.");
	        			}
	        			
	        		},
	        		error : function (error) {
	        			alert("오류발생");
	        		}
	        		
	        	});
        	} else {
        		$(this).prev().click();
        	}
        });
        
     	// 비밀번호 찾기
        $('#findPwdBtn').on('click',function(){
        	
        	if ($("#findPwdArea").css("display") == "none") {
        	
	        	$("#findPwdInfoArea").hide();
				$("#findPwdArea").show();
				$("#findPwdArea").html($("<div>").text("등록된 메일로 임시 비밀번호를 전송중입니다."));
				$("#pwdNumberArea [class^=number]").parent().attr("class","circle circle_gray");
				$("#pwdNumberArea .number2").parent().attr("class","circle");
				
	        	$.ajax({
	        		type:"post",
	        		url:"findPwd.do",
	        		data : {
	        			stdId : $("#pwdfindID").val(),
	        			stdName : $("#pwdfindName").val(),
	        			stdEmail : $("#pwdfindEmail").val()
	        		},
	        		success : function(data) {
	        			console.log(data);
	        			if (data.result == "OK") {
	        				$("#pwdNumberArea [class^=number]").parent().attr("class","circle circle_gray");
	            			$("#pwdNumberArea .number3").parent().attr("class","circle");
	            			$("#findPwdArea").html($("<div>").html("<div>등록된 메일로 임시 비밀번호를 전송하였습니다. <br/> 임시 비밀번호로 로그인 후, <br/> 마이페이지에서 비밀번호를 변경해주세요.</div>"));
	        			} else {
	        				alert(data.msg);
	        			}
	        			
	        		},
	        		error : function (error) {
	        			alert("오류발생");
	        		}
	        		
	        	});
        	} else {
        		$(this).prev().click();
        	}
        });
        
        $("#findTdBtn").on("click",function(){
        	$("#idNumberArea [class^=number]").parent().attr("class","circle circle_gray");
			$("#idNumberArea .number1").parent().attr("class","circle");
        	$("#findIdArea").hide();
        	$("#findIdInfoArea").show();
        	$("#findIdInfoArea input").val("");
        });
        
        $("#findTdPwdBtn").on("click",function(){
        	$("#pwdNumberArea [class^=number]").parent().attr("class","circle circle_gray");
			$("#pwdNumberArea .number1").parent().attr("class","circle");
        	$("#findPwdArea").hide();
        	$("#findPwdInfoArea").show();
        	$("#findPwdInfoArea input").val("");
        });
        
    </script>
    
</body>
</html>