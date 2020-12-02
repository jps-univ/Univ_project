<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<c:set var="Seq" value="${ Seq}"/>
<c:set var="profN" value="${profN}"/>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
                
                 <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar 로그인창 -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${userName }님 환영합니다. ${profN } + ${Seq }+${classSeq }</span>
              </a>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="modal" data-target="#logoutModal" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그아웃</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->

        <!-- page top bar -->
        
        <div class="top_bar">
           <h1>강의게시판</h1>
        </div>
 

        <!-- second navibar -->
        <div class="sec_navi shadow">
            <ul id="sec_navibar">
                <li class="drop" style="margin-left: 10%;"><a href="selectClass.do">수강 과목 조회</a></li>
                <li class="drop" style="margin-left: 12%;"><a class="alertWarn" href="#">강의 정보</a></li>
                    <ul class="drop_submenu">
                        <li><a href="classPlan.do">강의 계획서</a></li> 
                        <li><a href="cNoticeList.do">공지 사항</a></li>
                    </ul>
                <li class="drop" style="margin-left: 14%;"><a class="alertWarn" href="#">학습 활동</a></li>
                    <ul class="drop_submenu">
                        <li><a href="assignmentList.do">과제</a></li>
                    </ul>
                <li class="drop" style="margin-left: 15%;"><a class="alertWarn" href="#">성적 관리</a></li>
                    <ul class="drop_submenu">
                        <li><a href="gradeObjectionList.do">성적 이의 신청</a></li>
                    </ul>                    
            </ul>
        </div>

        <script>
        
        	$('.alertWarn').on('click',function alert1(){
        		alert("과목을 먼저 선택하세요.");
        		location.href = "selectClass.do";
        	});
        
            $(function(){
              $('.drop_submenu').slideUp();
              $('.drop').click(function(){
                $('.drop_submenu').slideUp();
                $(this).next('ul').toggle();
              });
            });
        </script>
</body>
</html>