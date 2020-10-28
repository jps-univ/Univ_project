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
    <script>
        $(document).ready(function () {
            $('#requestRegisterCard').css({
                "background-color": "lightgrey",
                "color": "white"
            });
            $('.register').show();
            $('.delete').hide();
            $('#deleteBtn').hide();
            $('#requestDeleteCard').click(function () {
                $('.register').hide();
                $('.delete').show();
                $('#requestDeleteCard').css({
                    "background-color": "lightgrey",
                    "color": "white"
                });
                $('#requestRegisterCard').css({
                    "background-color": "white",
                    "color": "darkgray"
                });
                $('#registerBtn').hide();
                $('#addPlanBtn').hide();
                $('#deleteBtn').show();

                return false;
            });
            $('#requestRegisterCard').click(function () {
                $('#requestRegisterCard').css({
                    "background-color": "lightgrey",
                    "color": "white"
                });
                $('#requestDeleteCard').css({
                    "background-color": "white",
                    "color": "darkgray"
                });
                $('.register').show();
                $('.delete').hide();
                $('#registerBtn').show();
                $('#addPlanBtn').show();
                $('#deleteBtn').hide();
                return false;
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
                <c:import url="../common/topbar.jsp"/>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">강의등록/삭제</h1>


                    <!-- Content Row -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <div id="requestRegisterCard" class="card left active"
                                     style="float: left; height: 100%; width: 50%; text-align: center; padding-top: 10px; padding-bottom: 5px;">
                                    강의등록
                                </div>
                                <div id="requestDeleteCard" class="card right"
                                     style="float: right; width: 50%; height: 100%;text-align: center; padding-top: 10px; padding-bottom: 5px;">
                                    강의삭제
                                </div>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive register">
                                <table class="table addArea">
                                    <tr>
                                        <th>교과목명</th>
                                        <th><input type="text"></th>
                                        <th>담당교수</th>
                                        <th><input type="text"></th>
                                    </tr>

                                    <tr>
                                        <th>이수구분</th>
                                        <th>
                                            <select>
                                                <option>전체</option>
                                                <option value="A">교필</option>
                                                <option value="B">교필</option>
                                                <option value="C">전필</option>
                                                <option value="D">전선</option>
                                                <option value="E">일선</option>
                                            </select>
                                        </th>
                                        <th>학점</th>
                                        <th><input type="number"></th>
                                    </tr>
                                    <tr>
                                        <th>년도</th>
                                        <th><input type="text"></th>
                                        <th>학기</th>
                                        <th>
                                            <select>
                                                <option value="A">1</option>
                                                <option value="B">2</option>
                                            </select>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>교과목개요</th>
                                        <th><input type="text"></th>
                                        <th>교육목표</th>
                                        <th><input type="text"></th>
                                    </tr>
                                    <tr>
                                        <th>주교재</th>
                                        <th colspan="3"><input type="text"></th>
                                    </tr>
                                    <tr name="lectureTime">
                                        <th>강의시간</th>
                                        <th colspan="100">
                                            <select>
                                                <option>선택</option>
                                                <option value="월">월요일</option>
                                                <option value="화">화요일</option>
                                                <option value="수">수요일</option>
                                                <option value="목">목요일</option>
                                                <option value="금">금요일</option>
                                            </select>
                                            <input style="width: 50px;" type="number" min="1" max="9">
                                            <label for="hour">교시</label>
                                            <button name="addDays" class="btn btn-primary btn-circle btn-sm"
                                                    style="margin-left: 10px;">+</button>
                                            <script>
                                                $(document).on('click', 'button[name=addDays]', function () {
                                                    var addDays = "";
                                                    addDays += '<tr name="lectureTime">';
                                                    addDays += '<th>강의시간</th>';
                                                    addDays += '<th colspan="3">';
                                                    addDays += "<select>";
                                                    addDays += "<option>선택</option>";
                                                    addDays += "<option>월요일</option>";
                                                    addDays += "<option>화요일</option>";
                                                    addDays += "<option>수요일</option>";
                                                    addDays += "<option>목요일</option>";
                                                    addDays += "<option>금요일</option>";
                                                    addDays += "</select>";
                                                    addDays += "&nbsp";
                                                    addDays += '<input style="width: 50px;" type="number" min="1" max="9">';
                                                    addDays += "&nbsp";
                                                    addDays += '<label for="hour">교시</label>';
                                                    addDays += "<button class='btn btn-primary btn-circle btn-sm' name='delDays' style='margin-left: 13px;'>-</button>";
                                                    addDays += '</th>';
                                                    addDays += '</tr>';
                                                    var trDays = $("tr[name=lectureTime]:last");
                                                    // $('.addAtrea').append(addDays);
                                                    trDays.after(addDays);
                                                });
                                                $(document).on('click', 'button[name=delDays]', function () {

                                                    var trDays = $(this).parent().parent();
                                                    trDays.remove();
                                                });

                                            </script>
                                        </th>
                                    </tr>

                                </table>

                            </div>
                            <div class="table-responsive delete">

                            </div>
                        </div>
                        <div class="buttonArea card-body" align="center">
                            <button id="registerBtn" class="btn btn-success"
                                    onclick="alert('강의등록 요청이 완료되었습니다. 관리자 승인 후 정상 등록이 됩니다.');">강의등록 요청</button>

                            <button id="addPlanBtn" class="btn btn-secondary" onclick="alert('강의계획서 모달로 띄울자리.')">강의계획서 첨부</button>
                            <button id="deleteBtn" class="btn btn-success" onclick="alert('강의삭제 요청이 완료되었습니다. 관리자 승인 후 정상 등록이 됩니다.')">강의삭제 요청</button>
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
