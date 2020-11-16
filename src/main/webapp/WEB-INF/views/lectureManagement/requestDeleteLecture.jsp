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

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">강의삭제</h1>


                    <!-- Content Row -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <p id="explain1">강의 삭제 요청 페이지입니다.</p>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive delete">
                                <table id="testTb" class="table table-striped table-bordered table-hover"
                                       cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th><input name="select_all" value="1" id="example-select-all" type="checkbox"/>
                                        </th>

                                        <%--                                          <th>No</th>--%>
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
                        <div id="buttonArea1" class=" card-body" align="center">
                            <button id="deleteBtn" class="btn btn-success"
                                    onclick="">삭제요청
                            </button>
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
