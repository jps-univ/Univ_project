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
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Tables</title>

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
    </style>
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            // DB에서 데이터 뽑아와서 테이블로 출력하는 datatables 라이브러리 사용
            $('#searchBtn').click(function () {
                var table = $('#testTb').DataTable({
                    //컨트롤러에서 보내줄 때 해당 함수의 반환형은 String이어야 하고 리스트를 뽑아온다고 하면 'dataSrc' : '' 로 해줘야함.
                    'ajax': {
                        'url': 'test2.do',
                        'type': 'post',
                        'dataType': 'json',
                        'dataSrc': ''
                    },
                    // 'colunms' 옵션에는 각 data 에게 넘어오는 변수명(컬럼값)을 매칭해줘야함 꼭 .
                    // 그리고 테이블만들어줄때도 넘어오는 값이 4개라면 테이블의 th 갯수도 꼭 4개. 맞춰줘야함
                    'columns': [
                        {'data': 'no'},
                        {'data': 'name'},
                        {'data': 'email'},
                        {'data': 'phone'}
                    ],
                    'columnDefs': [{
                        'targets': 0,
                        'searchable': false,
                        'orderable': false,
                        'className': 'dt-body-center',
                        'render': function (data, type, full, meta) {
                            return '<input type="checkbox" name="id[]" value="'
                                + $('<div/>').text(data).html() + '">';
                        }
                    }],
                    'order': [1, 'asc'],
                    'searching': false,
                    'bDestroy': true
                });

                // Handle click on "Select all" control
                $('#example-select-all').on('click', function () {
                    // Check/uncheck all checkboxes in the table
                    var rows = table.rows({'search': 'applied'}).nodes();
                    $('input[type="checkbox"]', rows).prop('checked', this.checked);
                });

                // Handle click on checkbox to set state of "Select all" control
                $('#testTb tbody').on('change', 'input[type="checkbox"]', function () {
                    // If checkbox is not checked
                    if (!this.checked) {
                        var el = $('#example-select-all').get(0);
                        // If "Select all" control is checked and has 'indeterminate' property
                        if (el && el.checked && ('indeterminate' in el)) {
                            // Set visual state of "Select all" control
                            // as 'indeterminate'
                            el.indeterminate = true;
                        }
                    }
                });
            });
        });
    </script>
<%--    수강신청,장바구니 탭 클릭 시 화면 변화--%>
    <script>
        $(document).ready(function () {
            $('#enrollCard').css({
                "background-color": "lightgrey",
                "color": "white"
            });
            $('.enroll').show();
            $('.basket').hide();
            $('#basketCard').click(function () {
                $('.enroll').hide();
                $('.basket').show();
                $('#basketCard').css({
                    "background-color": "lightgrey",
                    "color": "white"
                });
                $('#enrollCard').css({
                    "background-color": "white",
                    "color": "darkgray"
                });
                $('#basketBtn').hide();
                return false;
            });
            $('#enrollCard').click(function () {
                $('#enrollCard').css({
                    "background-color": "lightgrey",
                    "color": "white"
                });
                $('#basketCard').css({
                    "background-color": "white",
                    "color": "darkgray"
                });
                $('.enroll').show();
                $('.basket').hide();
                $('#basketBtn').show();
                return false;
            });
        });
    </script>
</head>

<body id="page-top">

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
                <c:import url="../common/topbar2.jsp"/>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">수강신청</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <div id="enrollCard" class="card left active"
                                     style="float: left; height: 100%; width: 50%; text-align: center; padding-top: 10px;">수강신청
                                </div>
                                <div id="basketCard" class="card right"
                                     style="float: right; width: 50%; height: 100%;text-align: center; padding-top: 10px;">장바구니
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive basket">

                            </div>
                            <div class="table-responsive enroll">
                                <table class="search_box">
                                    <tbody>
                                    <tr id="cond01">
                                        <th>
                                            <label class="labelPadding">교과구분</label>
                                        </th>
                                        <td>
                                            <select>

                                                <option>전체</option>
                                                <option value="A">교필</option>
                                                <option value="B">교필</option>
                                                <option value="C">전필</option>
                                                <option value="D">전선</option>
                                                <option value="E">일선</option>
                                            </select>
                                        </td>
                                        <th><label for="inputSubject" class="labelPadding">입력검색</label></th>
                                        <td><input type="text" id="inputSubject" name="inputSubject" value=""
                                                   placeholder="교과목명 입력">
                                            <button id="searchBtn" type="button" class="btn btn-primary btn-sm">테스트
                                            </button>
                                        </td>
                                    </tr>
                                    <tr id="cond02">
                                        <th>
                                            <label class="labelPadding">학부(과)</label>
                                        </th>
                                        <td>
                                            <select style="width: 100px">
                                                <option value="">전체</option>
                                                <option value="">단대1</option>
                                                <option value="">단대2</option>
                                                <option value="">단대3</option>
                                                <option value="">단대4</option>
                                                <option value="">단대5</option>
                                                <option value="">단대6</option>
                                                <option value="">단대7</option>
                                            </select>
                                            <select style="width: 170px">
                                                <option>전체</option>
                                            </select>
                                        </td>
                                        <th style="padding-left: 30px;">
                                            <label class="labelPadding">전공</label>
                                        </th>
                                        <td>
                                            <select style="width: 200px">
                                                <option value="">-</option>
                                            </select>
                                        </td>
                                        <th>
                                            <label class="labelPadding">학년</label>
                                        </th>
                                        <td>
                                            <select>
                                                <option>-</option>
                                                <option value="">1</option>
                                                <option value="">2</option>
                                                <option value="">3</option>
                                                <option value="">4</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table id="testTb" class="table table-striped table-bordered table-hover"
                                       cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th><input name="select_all" value="1" id="example-select-all" type="checkbox"/>
                                        </th>

                                        <%--                                        <th>No</th>--%>
                                        <th>장바구니</th>
                                        <th>학년</th>
                                        <th>코드</th>
                                        <%--                                            <th>분반</th>--%>
                                        <%--                                            <th>교과목명</th>--%>
                                        <%--                                            <th>이수구분</th>--%>
                                        <%--                                            <th>학점</th>--%>
                                        <%--                                            <th>수업계획서</th>--%>
                                    </tr>
                                    </thead>
                                    <!-- tbody 태그 필요 없다. -->
                                </table>
                            </div>
                        </div>
                       <div class="buttonArea card-body" align="center">
                           <button id="enrollBtn" class="btn btn-success" onclick="alert('수강신청이 정상적으로 완료되었습니다.');">수강신청</button>

                           <button id="basketBtn" class="btn btn-secondary" onclick="alert('장바구니에 정상적으로 담겼습니다.')">장바구니</button>
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
