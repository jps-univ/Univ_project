<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>진포상대학교 | 포탈</title>
    <!-- Custom fonts for this template-->

    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <c:import url="../common/sidebar_professor.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <c:import url="../common/topbar_professor.jsp"/>
                <!-- End of Topbar -->
                <div class="container-fluid">
                    <h2 class="h3 mb-2 text-gray-800">강의평가 조회</h2>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

                            <h6 class="m-0 font-weight-bold text-primary">학생이름 : <%-- ${ student.stdName } --%></h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%"
                                    cellspacing="0">
                                    <tr>
                                        <td>1번</td>
                                        <td>교수가 수업시간을 준수했습니까?</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>2번</td>
                                        <td>수업 목표는 구체적으로 명확하게 제시되었다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>3번</td>
                                        <td>수업목표, 내용, 방법에 따른 합리적인 성적평가 방법과 기준이 안내 되었다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>4번</td>
                                        <td>교수는 학생의 활동이나 과제에 대해 적절한 피드백을 제공하였다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>5번</td>
                                        <td>교수는 학생들이 흠미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>6번</td>
                                        <td>교수는 교과와 관련된 학문적 관심과 흥미를 이끌어냈다</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>7번</td>
                                        <td>교수는 학생들이 흥미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>8번</td>
                                        <td>강의는 교과와 관련된 실력 향상에 도움을 주었다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>9번</td>
                                        <td>강의의 구성과 내용은 해당 수업을 이해하는데 충분하였다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>
                                    <tr>
                                        <td>10번</td>
                                        <td>나는 전반적으로 강의 만족하고 있다.</td>
                                        <td class="font-weight-bold">매우 그렇다</td>
                                    </tr>

                                </table>
                               
                            </div>
                            <a href="lecture_evaluation_check.do" id="back_btn" class="btn btn-light btn-icon-split">
                                <span class="icon text-gray-600">
                                  <i class="fas fa-arrow-right"></i>
                                </span>
                                <span class="text">목록</span>
                              </a>
                            
                        </div>


                    </div>
                  
                </div>



            </div>
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

    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/demo/chart-pie-demo.js"></script>
</body>
</html>