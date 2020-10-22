<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>진포상대학교 | 포탈</title>
    <!-- Custom fonts for this template-->

    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/main_page.css">

<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>

</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMypage" aria-expanded="true"
                   aria-controls="collapseMypage">
                    <span>MY PAGE</span>
                </a>
                <div id="collapseMypage" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="student_info.do">개인 정보</a>
                        <a class="collapse-item" href="mypage_student_password.html">비밀번호 변경</a>
                        <a class="collapse-item" href="mypage_student_schedule.html">전체 시간표</a>
                        <a class="collapse-item" href="mypage_student_consulting.html">상담 관리</a>
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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGrade" aria-expanded="true"
                   aria-controls="collapseGrade">
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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseManagement"
                   aria-expanded="true" aria-controls="collapseManagement">
                    <span>수강 관리</span>
                </a>
                <div id="collapseManagement" class="collapse" aria-labelledby="headingUtilities"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">강의 평가</a>
                        <a class="collapse-item" href="utilities-border.html">성적 이의 신청</a>
                    </div>
                </div>
            </li>
            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAcademic"
                   aria-expanded="true" aria-controls="collapseAcademic">
                    <span>학적</span>
                </a>
                <div id="collapseAcademic" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="leave.do">휴학 신청</a>
                        <a class="collapse-item" href="">복학 신청</a>
                        <a class="collapse-item" href="">졸업 신청</a>
                    </div>
                </div>
            </li>
            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTuition"
                   aria-expanded="true" aria-controls="collapseTuition">
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

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                 aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                               aria-label="Search" aria-describedby="basic-addon2">
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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님 환영합니다.</span>
                            </a>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="modal"
                               data-target="#logoutModal" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그아웃</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="content">
                    <!-- 퀵링크 영역 시작 -->
                    <div class="mainbox">
                        <div class="quick_link">
                            <div class="logo"><b>QUICK LINK</b></div>
                            <table class="table1">
                                <tr>
                                    <td><a link="#">진포상대학교</a></td>
                                    <td><a link="#">인터넷증명발급</a></td>
                                </tr>
                                <tr>
                                    <td><a link="#">한국장학재단</a></td>
                                    <td><a link="#">시간표조회</a></td>
                                </tr>
                                <tr>
                                    <td><a link="#">중앙도서관</a></td>
                                    <td><a link="#">통합게시판</a></td>
                                </tr>
                                <tr>
                                    <td><a link="#">대학혁신</a></td>
                                    <td><a link="#">Q & A</a></td>
                                </tr>
                            </table>
                        </div>

                        <!-- 퀵링크 영역 끝 -->

                        <!-- 시간표 영역 시작 -->
                        <div class="timetable">
                            <p style="text-align: center; font-size: 30pt;">시간표 들어갈 영역</p>
                        </div>
                        <!-- 시간표 영역 끝 -->
                    </div>

                    <br style="clear: both;" />
                    <!-- 게시판 영역 시작 -->
                    <div class="notice_box">
                        <div class="notice_nav_area">
                            <div class="write"><button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                                                       data-target="#myModal">작성하기</button></div>
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#qaa">Q&A</a></li>
                                <li><a data-toggle="tab" href="#faq">FAQ</a></li>
                                <li><a data-toggle="tab" href="#notice">진포공지</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <!-- Q&A -->
                            <div id="qaa" class="tab-pane fade in active">
                                <ul>
                                    <li style="padding-top:20px;">
                                        <a>DIY 자기설계 융합전공 관련 질문입니다.</a>
                                        <span class="date">10.02</span>
                                    </li>
                                    <li>
                                        <a>졸업요건 문의</a>
                                        <span class="date">09.27</span>
                                    </li>
                                    <li>
                                        <a>재적증명서 관련 질문드립니다.</a>
                                        <span class="date">09.20</span>
                                    </li>
                                    <li>
                                        <a>재적증명서 관련 질문드립니다.</a>
                                        <span class="date">09.20</span>
                                    </li>
                                    <li>
                                        <a>재적증명서 관련 질문드립니다.</a>
                                        <span class="date">09.20</span>
                                    </li>
                                </ul>
                                <!-- 작성하기 버튼 -->

                                <!-- Modal -->
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header" style="background-color: #E6EDF2; display: inline;">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">질문 등록</h4>
                                            </div>
                                            <div class="modal-body">
                                                <span>제목 : </span>
                                                <input type="text" style="width: 100%;">
                                                <hr>
                                                <p>내용 : </p>
                                                <textarea style="width: 100%;" rows="20"></textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">등록하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- FAQ -->
                            <div id="faq" class="tab-pane fade">
                                <div class="container">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Q. 입대예정일이 등록기간 이전인데 다음 학기
                                                        등록휴학을 할 수 있나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Q. 분할납부를 신청할 경우, 장학금은 어떻게
                                                        되나요? </a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Q. 전공은 몇 학점을 이수하여야 하지요? 몇
                                                        년도 교과과정에 맞추어야 하나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 진포공지 -->
                            <div id="notice" class="tab-pane fade">
                                <ul>
                                    <li style="padding-top:20px;">
                                        <a href="#" onclick="location.href='noticeDetail.do';">국민권익위 사학비리·부패신고센터 운영</a>
                                        <span class="date">09.22</span>
                                    </li>
                                    <li>
                                        <a>2020학년도 KH문화상 공모 안내</a>
                                        <span class="date">08.18</span>
                                    </li>
                                    <li>
                                        <a>2020년 제 1회 전국 대학생 미디어 콘텐츠 공모전</a>
                                        <span class="date">07.28</span>
                                    </li>
                                    <li>
                                        <a>2020년 제 1회 전국 대학생 미디어 콘텐츠 공모전</a>
                                        <span class="date">07.28</span>
                                    </li>
                                    <li>
                                        <a>2020년 제 1회 전국 대학생 미디어 콘텐츠 공모전</a>
                                        <span class="date">07.28</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- 페이징 -->
                    <div class="container1">
                        <ul class="pagination">
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                        </ul>
                    </div>
                    <!-- 게시판 영역 끝 -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Jinposang University 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">로그아웃하시겠습니까?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">로그아웃후 로그인 페이지로 이동합니다.</div>
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="">확인</a>
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/main_page.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugins -->
    <script src="${contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/demo/chart-pie-demo.js"></script>

</body>

</html>