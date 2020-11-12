<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
        <c:import url="sidebar_professor.jsp"/>

        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <c:import url="../common/topbar_professor.jsp"/>

                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="content">
                    <!-- 퀵링크 영역 시작 -->
                    <div class="mainbox">
                        <div class="quick_link">
                            <div class="logo"><b>QUICK LINK</b></div>
                            <table class="table1">
                                <tr>
                                    <td><a link="goMainProfessor.do">진포상대학교</a></td>
                                    <td><a link="#">인터넷증명발급</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.kosaf.go.kr/ko/main.do" target="_blank">한국장학재단</a></td>
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

                    <br style="clear: both;"/>
                    <!-- 게시판 영역 시작 -->
                    <div class="notice_box">
                        <div class="notice_nav_area">
                            <div class="write">
                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                                        data-target="#myModal" id="writeBtn">작성하기
                                </button>
                            </div>
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#qaa" id="qnaBtn">Q&A</a></li>
                                <li><a data-toggle="tab" href="#faq" id="faqBtn">FAQ</a></li>
                                <li><a data-toggle="tab" href="#notice" id="noticeBtn">진포공지</a></li>
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
                                            <div class="modal-header"
                                                 style="background-color: #E6EDF2; display: inline;">
                                                <button type="button" class="close" data-dismiss="modal">&times;
                                                </button>
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
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    등록하기
                                                </button>
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
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse1">Q. 입대예정일이 등록기간 이전인데 다음 학기
                                                        등록휴학을 할 수 있나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur
                                                    adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse2">Q. 분할납부를 신청할 경우, 장학금은 어떻게
                                                        되나요? </a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur
                                                    adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse3">Q. 전공은 몇 학점을 이수하여야 하지요? 몇
                                                        년도 교과과정에 맞추어야 하나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur
                                                    adipisicing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    Ut enim ad minim veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                    commodo consequat.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 진포공지 -->
                            <div id="notice" class="tab-pane fade">
                                <ul>
                                    <li style="padding-top:20px;">
                                        <a href="#" onclick="noticePop(this);">국민권익위 사학비리·부패신고센터 운영</a>
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
                <c:import url="../common/footer.jsp"/>

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
        <c:import url="../common/logoutModal.jsp"/>

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