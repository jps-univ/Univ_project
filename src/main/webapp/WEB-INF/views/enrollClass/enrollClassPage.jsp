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
    <script>

        function changeCollege() {
            var college = $('#selectCollege').val();
            $.ajax({
                url: "checkCollege.do",
                data: {
                    collegeCode: college
                },
                dataType: "json",
                success: function (data) {
                    $('#selectDepartment').empty();
                    $('#selectDepartment').append("<option>전체</option>");
                    $('#selectMajor').empty();
                    $('#selectMajor').append("<option>전체</option>");
                    for (var i in data) {
                        var option = $("<option>" + data[i].deptCode + "</option>");
                        $('#selectDepartment').append(option);
                    }
                }, error: function () {
                    alert("에러발생")
                }

            });
        }

        // 과 선택시 (onchange) 전공과목을 디비에서 ajax를 통해 가져온다
        function changeDept() {
            var dept = $('#selectDepartment').val();
            $.ajax({
                url: "checkDept.do",
                data: {
                    deptName: dept
                },
                dataType: "json",
                success: function (data) {
                    $('#selectMajor').empty();
                    $('#selectMajor').append("<option>전체</option>");
                    for (var i in data) {
                        var option = $("<option>" + data[i].className + "</option>");
                        $('#selectMajor').append(option);
                    }
                }, error: function () {
                    alert("데이터가 안갔습니다.")
                }
            });
        }
    </script>

    <script>
        function callRegisterTable() {
            table = $('#registerTable').DataTable({
                //컨트롤러에서 보내줄 때 해당 함수의 반환형은 String이어야 하고 리스트를 뽑아온다고 하면 'dataSrc' : '' 로 해줘야함.
                'ajax': {
                    'url': 'getLectureList.do',
                    'type': 'post',
                    'data': {
                        'classType': $('#selectClassType').val(),
                        'inputClassName': $('#inputSubject').val(),
                        'classLevel': $('#selectClassLevel').val(),
                        'collegeCode': $('#selectCollege').val(),
                        'departmentName': $("#selectDepartment").val(),
                        'className': $('#selectMajor').val()

                    },
                    'dataType': 'json',
                    'dataSrc': ''
                },
                // 'colunms' 옵션에는 각 data 에게 넘어오는 변수명(컬럼값)을 매칭해줘야함 꼭 .
                // 그리고 테이블만들어줄때도 넘어오는 값이 4개라면 테이블의 th 갯수도 꼭 4개. 맞춰줘야함
                'columns': [
                    {'data': 'classSeq'},
                    {'data': 'className'},
                    {'data': 'deptCode'},
                    {'data': 'profName'},
                    {'data': 'lectureTime'},
                    {'data': 'room'},
                    {'data': 'classType'},
                    {'data': 'gradeSize'},
                    {'data': 'classLevel'}
                ],
                'columnDefs': [
                    {
                        'targets': 0,
                        'visible': false
                    },

                    {
                        'targets': [2, 4],
                        'width': '15%'
                    },
                    {
                        'targets': [3, 5, 6],
                        'width': '10%'
                    }, {
                        'targets': [7, 8],
                        'width': '8%'
                    }
                ],
                'searching': false,
                'paging': true,
                // 'bDestroy': true,
                'destroy': true,
                'scrollX': false,
                'language': lang_kor,
                "lengthMenu": [ 10, 25, 50, 75 ]
            });


            // 행 클릭시 클래스시퀀스 들고 컨트롤러로 감. 수강신청테이블에 등록
            // off(click) 안써주면 중복클릭? 비슷히게 오류남
            $('#registerTable').off('click').on('click', 'tbody tr', function () {
                // $('#registerTable tbody tr').css({
                //     'color': 'red'
                // });
                var selectedIndex = table.row(this).data();
                console.log(selectedIndex);

                var seq = selectedIndex.classSeq;
                $.ajax({
                    url: 'registerClass.do',
                    type: 'post',
                    data: {
                        classSeq: seq
                    }
                    , dataType: 'text'
                    , success: function (data) {
                        alert(data);
                        myTable.ajax.reload();
                    }, error: function (error) {
                        console.log(error);
                        alert("에러발생");
                    }
                });

            });
        }
    </script>
    <script>
        // 나의 수강목록을 불러오는 함수. 위에 callMyTable을 통해서 불러옴
        function callMyTable() {
            myTable = $('#myRegisterTable').DataTable({
                'ajax': {
                    'url': 'getMyLectureList.do',
                    'type': 'post',
                    'dataType': 'json',
                    'dataSrc': ''
                }, 'columns': [
                    {'data': 'classSeq'},
                    {'data': 'className'},
                    {'data': 'deptCode'},
                    {'data': 'profName'},
                    {'data': 'lectureTime'},
                    {'data': 'room'},
                    {'data': 'classType'},
                    {'data': 'gradeSize'},
                    {'data': 'classLevel'}
                ],
                'columnDefs': [
                    {
                        'targets': 0,
                        'visible': false,
                        'className': 'classSeq'
                    },

                    {
                        'targets': [2, 4],
                        'width': '15%'
                    },
                    {
                        'targets': [3, 5, 6],
                        'width': '10%'
                    }, {
                        'targets': [7, 8],
                        'width': '8%'
                    }
                ],
                'searching': false,
                'paging': false,
                'ordering': false,
                'info': false,
                'bDestroy': true,
                'scrollX': false,
                'language': lang_kor2
            });
            $('#myRegisterTable').off('click').on('click', 'tbody tr', function () {
                var mySelectedIndex = myTable.row(this).data();
                var seq = mySelectedIndex.classSeq;
                var con = confirm("정말 해당과목을 취소하시겠습니까?");
                if (con == true) {
                    console.log(mySelectedIndex);
                    $.ajax({
                        url: 'deleteMyClass.do',
                        type: 'post',
                        data: {
                            classSeq: seq
                        }, dataType: 'text'
                        , success: function (data) {
                            alert(data);
                            myTable.ajax.reload();
                        }, error: function (error) {
                            console.log(error);
                            alert("에러발생");
                        }
                    });
                } else if (con == false) {
                    return;
                }
            });
        }
    </script>
    <script>
        function callMyBasketTable() {
            myBasketTable = $('#myBasketTable').DataTable({
                'ajax': {
                    'url': 'getMyBasketList.do',
                    'type': 'post',
                    'dataType': 'json',
                    'dataSrc': ''
                }, 'columns': [
                    {'data': 'classSeq'},
                    {'data': 'className'},
                    {'data': 'deptCode'},
                    {'data': 'profName'},
                    {'data': 'lectureTime'},
                    {'data': 'room'},
                    {'data': 'classType'},
                    {'data': 'gradeSize'},
                    {'data': 'classLevel'}
                ],
                'columnDefs': [
                    {
                        'targets': 0,
                        'visible': false,
                        'className': 'classSeq'
                    },

                    {
                        'targets': [2, 4],
                        'width': '15%'
                    },
                    {
                        'targets': [3, 5, 6],
                        'width': '10%'
                    }, {
                        'targets': [7, 8],
                        'width': '8%'
                    }
                ],
                'searching': false,
                'paging': false,
                'ordering': false,
                'info': false,
                'bDestroy': true,
                'scrollX': false,
                'language': lang_kor3
            });
            $('#myBasketTable').off('click').on('click', 'tbody tr', function () {
                var selectedIndex = myBasketTable.row(this).data();
                console.log(selectedIndex);

                var seq = selectedIndex.classSeq;
                $.ajax({
                    url: 'registerClass.do',
                    type: 'post',
                    data: {
                        classSeq: seq
                    }
                    , dataType: 'text'
                    , success: function (data) {
                        alert(data);
                        myTable.ajax.reload();
                    }, error: function (error) {
                        console.log(error);
                        alert("에러발생");
                    }
                });

            });
        }
    </script>
    <script>
        var lang_kor = {
            "decimal": "",
            "emptyTable": "해당 과목이 없습니다.",
            "info": "_START_ - _END_ (총 _TOTAL_ 개)",
            "infoEmpty": "",
            "infoFiltered": "(전체 _MAX_ 명 중 검색결과)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "_MENU_ 개씩 보기",
            "loadingRecords": "로딩중...",
            "processing": "처리중...",
            "search": "검색 : ",
            "zeroRecords": "해당 과목이 없습니다.",
            "paginate": {
                "first": "첫 페이지",
                "last": "마지막 페이지",
                "next": "다음",
                "previous": "이전"
            },
            "aria": {
                "sortAscending": " :  오름차순 정렬",
                "sortDescending": " :  내림차순 정렬"
            }
        };
        var lang_kor2 = {
            "decimal": "",
            "emptyTable": "수강신청한 과목이 없습니다.",
            "info": "_START_ - _END_ (총 _TOTAL_ 명)",
            "infoEmpty": "0명",
            "infoFiltered": "(전체 _MAX_ 명 중 검색결과)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "_MENU_ 개씩 보기",
            "loadingRecords": "로딩중...",
            "processing": "처리중...",
            "search": "검색 : ",
            "zeroRecords": "수강신청한 과목이 없습니다.",
            "paginate": {
                "first": "첫 페이지",
                "last": "마지막 페이지",
                "next": "다음",
                "previous": "이전"
            },
            "aria": {
                "sortAscending": " :  오름차순 정렬",
                "sortDescending": " :  내림차순 정렬"
            }
        };
        var lang_kor3 = {
            "decimal": "",
            "emptyTable": "장바구니에 담은 과목이 없습니다.",
            "info": "_START_ - _END_ (총 _TOTAL_ 명)",
            "infoEmpty": "0명",
            "infoFiltered": "(전체 _MAX_ 명 중 검색결과)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "_MENU_ 개씩 보기",
            "loadingRecords": "로딩중...",
            "processing": "처리중...",
            "search": "검색 : ",
            "zeroRecords": "장바구니에 담은 과목이 없습니다.",
            "paginate": {
                "first": "첫 페이지",
                "last": "마지막 페이지",
                "next": "다음",
                "previous": "이전"
            },
            "aria": {
                "sortAscending": " :  오름차순 정렬",
                "sortDescending": " :  내림차순 정렬"
            }
        };


    </script>
    <script>
        $(document).ready(function () {
            callMyTable();
            // callMyBasketTable();
            // DB에서 데이터 뽑아와서 테이블로 출력하는 datatables 라이브러리 사용
            $('#searchBtn').on('click', function () {
                callRegisterTable();
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
                callMyBasketTable();
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
                <c:import url="../common/topbar.jsp"/>
                <!-- End of Topbar -->
                <div class="top">
                    <h1>수강신청</h1>
                </div>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <%--                    <h1 class="top h3 mb-2 text-gray-800">수강신청</h1>--%>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <div id="enrollCard" class="card left active"
                                     style="float: left; height: 100%; width: 50%; text-align: center; padding-top: 10px; padding-bottom: 5px;">
                                    수강신청
                                </div>
                                <div id="basketCard" class="card right"
                                     style="float: right; width: 50%; height: 100%;text-align: center; padding-top: 10px; padding-bottom: 5px;">
                                    장바구니
                                </div>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive enroll">
                                <table class="search_box">
                                    <tbody>
                                    <tr id="cond01">
                                        <th>
                                            <label class="labelPadding">교과구분</label>
                                        </th>
                                        <td>
                                            <select id="selectClassType">

                                                <option>전체</option>
                                                <option value="전필">전필</option>
                                                <option value="전선">전선</option>
                                                <option value="교양">교양</option>
                                            </select>
                                        </td>
                                        <th><label for="inputSubject" class="labelPadding">입력검색</label></th>
                                        <td><input type="text" id="inputSubject" name="inputSubject" value=""
                                                   placeholder="교과목명 입력">
                                            <button id="searchBtn" type="button" class="btn btn-primary btn-sm">검색
                                            </button>
                                        </td>
                                    </tr>
                                    <tr id="cond02">
                                        <th>
                                            <label class="labelPadding">학부(과)</label>
                                        </th>
                                        <td>
                                            <select id="selectCollege" style="width: 100px"
                                                    onchange="changeCollege();">
                                                <option value="c0">전체</option>
                                                <option value="c1">인문대학</option>
                                                <option value="c2">사회과학대학</option>
                                                <option value="c3">자연과학대학</option>
                                                <option value="c4">공과대학</option>
                                                <option value="c5">IT대학</option>
                                                <option value="c6">예술체육대학</option>
                                            </select>
                                            <select id="selectDepartment" style="width: 170px" onchange="changeDept();">
                                                <option>전체</option>
                                            </select>
                                        </td>
                                        <th style="padding-left: 30px;">
                                            <label class="labelPadding">전공</label>
                                        </th>
                                        <td>
                                            <select id="selectMajor" style="width: 200px">
                                                <option>전체</option>
                                            </select>
                                        </td>
                                        <th>
                                            <label class="labelPadding">학년</label>
                                        </th>
                                        <td>
                                            <select id="selectClassLevel">
                                                <option value="0">전체</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table id="registerTable" class="table table-striped table-bordered table-hover"
                                       cellspacing="0" style="width: 97%;">
                                    <thead>
                                    <tr>
                                        <%--                                        <th style="text-align: center;"><input name="select_all" value="1" id="example-select-all" type="checkbox" ></th>--%>


                                        <th style="display:none">강의시퀀스</th>
                                        <th>강의명</th>
                                        <th style="width: 15%">학과명</th>
                                        <th style="width: 10%">교수명</th>
                                        <th style="width: 15%">강의시간</th>
                                        <th style="width: 10%">강의실</th>
                                        <th style="width: 10%">이수구분</th>
                                        <th style="width: 8%">학점</th>
                                        <th style="width: 8%">학년</th>
                                    </tr>
                                    </thead>
                                    <!-- tbody 태그 필요 없다. -->
                                </table>
                            </div>

                            <div class="basket">
                                <h4>내 장바구니목록</h4>
                                <table id="myBasketTable" class="table table-striped table-bordered table-hover"
                                       cellspacing="0" style="width: 97%;">
                                    <thead>
                                    <tr>
                                        <th style="display:none">강의시퀀스</th>
                                        <th>강의명</th>
                                        <th style="width: 15%">학과명</th>
                                        <th style="width: 10%">교수명</th>
                                        <th style="width: 15%">강의시간</th>
                                        <th style="width: 10%">강의실</th>
                                        <th style="width: 10%">이수구분</th>
                                        <th style="width: 8%">학점</th>
                                        <th style="width: 8%">학년</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                        <div class="card-body">
                            <h4>내 수강목록</h4>
                            <table id="myRegisterTable" class="table table-striped table-bordered table-hover"
                                   cellspacing="0" style="width: 97%;">
                                <thead>
                                <tr>
                                    <th style="display:none">강의시퀀스</th>
                                    <th>강의명</th>
                                    <th style="width: 15%">학과명</th>
                                    <th style="width: 10%">교수명</th>
                                    <th style="width: 15%">강의시간</th>
                                    <th style="width: 10%">강의실</th>
                                    <th style="width: 10%">이수구분</th>
                                    <th style="width: 8%">학점</th>
                                    <th style="width: 8%">학년</th>
                                </tr>
                                </thead>
                            </table>
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
