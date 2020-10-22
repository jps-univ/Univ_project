<%--
  Created by IntelliJ IDEA.
  User: moduhan
  Date: 2020-10-16
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="user.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">진포상대학교</div>
        </a>
        <hr class="sidebar-divider my-0">

        <li class="nav-item ">
            <a class="nav-link" href="user.html">
                <span>HOME</span></a>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item ">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMypage" aria-expanded="true" aria-controls="collapseMypage">
                <span>MY PAGE</span>
            </a>
            <div id="collapseMypage" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="">학생 정보</a>
                    <a class="collapse-item" href="">비밀번호 변경</a>
                    <a class="collapse-item" href="">전체 시간표</a>
                    <a class="collapse-item" href="">상담 관리</a>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item ">
            <a class="nav-link" href="">
                <span>강의 게시판</span></a>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item ">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGrade" aria-expanded="true" aria-controls="collapseGrade">
                <span>성적</span>
            </a>
            <div id="collapseGrade" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="utilities-color.html">학기별 성적 조회</a>
                    <a class="collapse-item" href="utilities-border.html">성적 증명서</a>
                    <a class="collapse-item" href="utilities-animation.html">졸업 사정표</a>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseManagement" aria-expanded="true" aria-controls="collapseManagement">
                <span>수강 관리</span>
            </a>
            <div id="collapseManagement" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="utilities-color.html">강의 평가</a>
                    <a class="collapse-item" href="utilities-border.html">성적 이의 신청</a>
                    <a class="collapse-item" href="enrollClassPage.do">수강신청</a>

                </div>
            </div>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAcademic" aria-expanded="true" aria-controls="collapseAcademic">
                <span>학적</span>
            </a>
            <div id="collapseAcademic" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="">휴학 신청</a>
                    <a class="collapse-item" href="">복학 신청</a>
                    <a class="collapse-item" href="">졸업 신청</a>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTuition" aria-expanded="true" aria-controls="collapseTuition">
                <span>등록금</span>
            </a>
            <div id="collapseTuition" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="utilities-color.html">납부 조회</a>
                </div>
            </div>
        </li>
    </ul>
    <!-- End of Sidebar -->
</body>
</html>
