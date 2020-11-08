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
	<c:if test="${ empty sessionScope.loginUser }">
		 <c:redirect url="/home.do" /> 
	</c:if>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <c:import url="../common/sidebar.jsp"/>

        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <c:import url="../common/topbar.jsp"/>

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
                                    	<!-- FAQ 1 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse1">Q. 전공은 몇 학점을 이수하여야 하지요? 몇 년도 교과과정에 맞추어야 하는지?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                	조기졸업은 3학년 1학기 개시 전 정해진 기간에 신청을 하여야 하며, 신청당시 학업성적의 열람용
                                                	평점평균이 4.00(A-) 이상이어야 합니다.<br/>또한 조기졸업 신청자에 한하여 6~7학기 이내에 모든 졸업요건을
                                                	충족하고 열람용 평점평균이 4.00(A-) 이상이면 조기졸업 됩니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 2 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse2">Q. 성적의 평점 계산 방법은?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	한 학기 학점의 평점평균은 당해학기 성적평점의 누계(과목당 평점평균*학점수의 합)를 수강신청
                                                	학점수로 나누어 계산하며, 전체 평점평균은 총 성적평점 누계를 총 취득학점수로 나누어 계산합니다.
                                                	<br/>
                                                	<br/>
                                                	※ 매학기 15학점(4학년은 12학점) 미만을 취득한 학생은 성적을 기준으로 선발하는 각종 장학금 및 표창대상에서 제외합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 3 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse3">Q. 성적이의 신청은?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	성적에 이의가 있는 학생은 정해진 기간에 담당교수에게 이의신청 할 수 있습니다.<br/>
                                                	단, 성적이의 신청은 교과목 담당교수의 평가 오류일 때에만 가능합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 4 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse4">Q. 복학생의 졸업사정 기준은 어떻게 되나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	본인 소속 학과(부)의 교과과정을 기준으로 하며, 졸업에 필요한 이수학점은 입학년도 또는 졸업년도를 기준으로 합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 5 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse5">Q. 증명서의 종류에는 어떤 것이 있나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	재학증명서 : 현재 재학 중인 학생에게 발급되는 증명서입니다.(등록금 납부 이후 발급 가능)
                                                	<br/><br/>
                                                	휴학증명서 : 현재 휴학 중인 학생에게 발급되는 증명서입니다.
                                                	<br/><br/>
                                                	재적증명서 : 입학 후 졸업 또는 제적 전까지 학적보유기간을 알려주는 증명서입니다.
                                                	<br/><br/>
                                                	성적증명서 : 지금까지 취득한 성적에 대한 증명서입니다.
                                                	<br/><br/>
                                                	수료증명서 : 지금까지 수료한 최종 학년에 대한 증명서입니다.
                                                	<br/><br/>
                                                	학적부사본 : 학생기록부의 역할을 하는 학적부에 기재된 내용에 대한 증명서입니다.
                                                	<br/><br/>
                                                	졸업증명서 : 졸업생에게 발급되는 증명서입니다.
                                                	<br/><br/>
                                                	졸업예정증명서 : 최종학기 졸업예정자에게 발급되는 증명서입니다. (매학기 수강신청 취소기간 이후 발급 가능)
                                                	<br/><br/>
                                                	복학예정증명서 : 휴학 중인 학생의 휴학기간 및 복학예정학기를 알려주는 증명서입니다.
                                                	<br/>
                                                	<br/>
                                                	위 증명서 중 영문 발급이 가능한 증명서는 재학, 휴학, 재적, 성적, 수료, 졸업, 졸업예정증명서 등 총 7종입니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 6 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse6">Q. 4학년 1학기 학생인데 졸업예정증명서는 언제 발급받을 수 있나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	졸업예정증명서는 최종학기(4학년 2학기) 개강 후 3주 뒤부터 발급 가능합니다.<br/>
                                                	4학년 1학기 이전까지는 졸업예정증명서가 발급되지 않습니다.<br/>
                                                	만약 취업 등을 위해 요구하는 회사 또는 기관이 있을 경우 우리 대학의 발급 기준을 설명하고,<br/>
                                                	필요 시 우리 대학에서 발급 가능한 증명서 중 대체 제출할 수 있는 종류로 발급 받아 제출하기 바랍니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 7 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse7">Q. 강의실 장비(마이크, 프로젝터)의 사용법을 알고 싶어요.</a>
                                                </h4>
                                            </div>
                                            <div id="collapse7" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	강의실에 있는 마이크와 프로젝터의 사용 방법 및 문제 해결 방법은<br/>
													홈페이지의 교육ㆍ연구 > 교육지원 > 교육매체지원 > 강의실 장비 사용 안내에서 동영상으로 확인할 수 있습니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 8 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse8">Q. 교내 학생이 소수 포함된 외부단체 행사를 교내 강의실을 빌려 진행할 수 있나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse8" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	교내 시설물 보호와 면학분위기 조성을 위해 교내 수업, 
                                                	교내 동아리 활동(타학교 연합동아리 제외), 
                                                	교내 학부생 주최 행사 이외에 외부 단체가 연합된 행사 등 (교내 학생들이 포함되었더라도)<br/> 
                                                	외부 대관 업무는 가급적 하지 않고 있습니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 9 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse9">Q. 강의만족도조사 작성 내용은 익명이 보장되나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse9" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	응답해주신 내용은 담당부서, 교수자, 대학 등 누구에게 출력되든 익명으로 랜덤 정렬되기 때문에 작성자를 파악할 수 없습니다.<br/> 
                                                	학번 순, 출석 순, 성명 순으로 정렬되어 작성자를 파악할 수 있다는 것은 잘못된 소문이며,<br/> 
                                                	교수자는 성적입력기간 종료 후 조사결과 조회가 가능하기 때문에 성적에 불이익을 줄 수 없습니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 10 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse10">Q. 강의만족도조사 결과는 어떻게 활용되나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse10" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	1. 교수들에게 학생들의 만족도와 의견을 확인할 수 있게 하여 수업이 개선될 수 있도록 합니다.
                                                	<br/><br/>
                                                	2. 교원업적평가, 우수교원포상, 우수강의사례개발, 강사임용 등에 근거자료로 활용합니다.
                                                	<br/><br/>
                                                	3. 수업환경, 교육시설 개선과 보완 자료로 활용합니다.
                                                	<br/><br/>
                                                	4. 강의만족도조사 결과 일정 점수 미만 교수는 교수법 컨설팅 및 교육을 통해 교수법을 향상할 수 있도록 합니다.
                                                	<br/><br/>
                                                	5. 평가결과를 공개하여 학생 수강신청 등을 위한 참고자료로 활용합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 11 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse11">Q. 보건결석계는 무엇인가요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse11" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	여학생들의 생리통으로 인한 결석(사유:보건공결, 생리통 등)으로  진포상포털의 "학사관리"에서 신청할 수 있으며,<br/>
                                                	자세한 신청방법은 붙임자료를 참고하시기 바랍니다.<br/><br/>
                                                	1. 한 학기에 최대 3회 (22일 이상 간격), 1회 1일 사용 가능<br/><br/>
                                                	2. 결석일로부터 7일 이내 신청 및 결석 신청 승인일로부터 10일 이내 출력하여 담당교수께 제출<br/><br/>
                                                	3. 문의처: 학생처 고객서비스팀 ☎(02)123-0068~9
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 12 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse12">Q. 지도교수를 바꾸고 싶은데 어떻게 하나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse12" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	지도교수 배정 및 변경은 학과(부)장의 고유 권한으로 학생은 교체 할 수 없습니다.<br/>
                                                	꼭 교체가 필요한 경우라면 본인이 직접 학과(부)장과 협의하여 지도교수 변경을 진행하여야 합니다.<br/>
                                                	단, 기존에 배정된 지도교수와 진로지도 상담을 이미 진행한 경우에는 시스템적으로 변경이 불가합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 13 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse13">Q. 교내장학금을 수혜하려면 반드시 국가장학금을 신청해야 하나요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse13" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	예, 본교 교내장학금을 수혜하려는 모든 장학생은 반드시 한국장학재단 국가장학금을 신청하고,서류제출 및 가구원동의까지 완료해야 합니다.<br/>
                                                	(단, 국가장학금을 신청할 수 없는 외국국적의 학생 예외)
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 14 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse14">Q. 한국장학재단 이중지원이 무엇인가요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse14" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	이중지원은 한국장학재단에서 동일학기에 한 학생이 학자금 대출 또는 장학금을 등록금액 범위를 초과하여 중복으로지원받는 경우을 방지하는 제도입니다.<br/>
                                                	예를 들어, A학생의 등록금이 400만원인데, 한국장학재단 학자금대출로 300만원, 국가장학금 100만원,<br/>
                                                	교내장학금으로 100만원을 받았다면, A학생은 등록금 400만원보다 장학금이 500만원으로<br/>
                                                	100만원을 초과하여 학자금지원을 받은 것으로 인정됩니다.<br/><br/>
                                                	따라서, 장학금 100만원으로 학자금대출 100만원을 상환해서 학자금 지원금액 합계가 400만원이 넘지 않도록 해야 합니다.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- FAQ 15 -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapse15">Q. 학기 중 일반휴학은 언제까지 가능한가요?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse15" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                	1. 학기 중 일반휴학은 수업일수의 1/2기간까지 가능합니다.<br/>
                                                	이 경우 등록휴학으로 처리되며, 등록금은 복학하는 학기로 대체되므로 복학 시에는 등록금을 납부하지 않아도 됩니다.<br/><br/>
                                                	2. 수업일수의 1/2기간 이후부터 기말고사 전까지의 기간에도 서류제출 후 일반휴학신청이 가능하지만 해당학기 등록금 및 성적은 모두 무효처리 됩니다.<br/>
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