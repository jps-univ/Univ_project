<%--
  Created by IntelliJ IDEA.
  User: moduhan
  Date: 2020-10-16
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>진포상대학교 | 포탈</title>

    <!-- Custom fonts for this template -->
    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <%--    <link type="text/css" href="//gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />--%>
    <style>
        .labelPadding {
            padding-top: 10px;
        }

        td.dt-body-center {
            text-align: center;
        }
        .top {
            background-color: #edf1fc;
            border-bottom: solid #4e73df;
            height: 100px;
            padding: 40px;
            position: relative;
            bottom: 25px;
            white-space: nowrap;
            color: #4e73df;
        }
    </style>
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <%--    수강신청,장바구니 탭 클릭 시 화면 변화--%>
    <script>
        $(document).ready(function () {
            var table = $('#alterTable').DataTable({
                'ajax': {
                    'url': 'getDeleteTable.do',
                    'type': 'post',
                    'dataType': 'json',
                    'dataSrc': ''
                },
                'columns': [
                    {'data': 'classSeq'},
                    {'data': 'classCode'},
                    {'data': 'className'},
                    {'data': 'room'},
                    {'data': 'classType'},
                    {'data': 'classYear'},
                    {'data': 'classSemester'},
                    {
                        'data': 'classApprove',
                        'render': function (data, type, row) {
                            if (row.classApprove === 'Y') {
                                return '<p style="margin: 0%">승인</p>'
                            }else if (row.classApprove === 'YW') {
                                return '<p style="margin: 0%">승인대기</p>'
                            }
                        }
                    }
                ],
                'columnDefs': [
                    {
                        'targets': 0,
                        'visible': false,
                        'className': 'classSeq'
                    }
                ]
            });
            $('#alterTable').off('click').on('click', 'tbody tr', function () {
                var mySelectedIndex = table.row(this).data();
                var seq = mySelectedIndex.classSeq;
                var con = confirm("정말 해당과목을 삭제요청하시겠습니까?");

                // $('#myRegisterTable tbody tr ').css({
                //     'color' : 'red'
                // });
                // var selectedIndex = table.row(this).data();
                if (con == true) {
                    console.log(mySelectedIndex);
                    $.ajax({
                        url: 'requestDeleteClass.do',
                        type: 'post',
                        data: {
                            classSeq: seq
                        }, dataType: 'text'
                        , success: function (data) {
                            alert(data);
                            table.ajax.reload();
                        }, error: function (error) {
                            console.log(error);
                            alert("에러발생");
                        }
                    });
                } else if (con == false) {
                    return;
                }

            });
        });
    </script>
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
                <div class="top">
                    <h1>강의수정</h1>
                </div>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800"></h1>


                    <!-- Content Row -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <p id="explain1">강의 수정 페이지입니다.</p>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive alter">
                                <table id="alterTable" class="table table-striped table-bordered table-hover"
                                       cellspacing="0" style="width: 97%">
                                    <thead>
                                    <tr>
                                        <th style="display: none">강의시퀀스</th>
                                        <th>과목코드</th>
                                        <th>과목이름</th>
                                        <th>강의실</th>
                                        <th>이수구분</th>
                                        <th>년도</th>
                                        <th>학기</th>
                                        <th>상태</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                        <div id="buttonArea1" class=" card-body" align="center">

                        </div>

                    </div>

                </div>
                <!-- /.container-fluid -->

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

    <!-- Bootstrap core JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${contextPath}/resources/js/demo/datatables-demo.js"></script>

</body>

</html>
