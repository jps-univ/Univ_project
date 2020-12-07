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

        span.guide, span.tguide {
            display: none;
            font-size: 12px;
            top: 12px;
            right: 10px;
        }

        span.ok, span.tok {
            color: green;
        }

        span.error1, span.terror1 {
            color: red;
        }

        .addArea th {
            width: 200px;
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

    <%--    다음버튼 클릭시 변화--%>
    <script>
        $(document).ready(function () {
            $('#requestRegisterCard').css({
                "background-color": "lightgrey",
                "color": "white"
            });
            $('.addPlan').hide();
            $('#buttonArea2').hide();
            $('#explain2').hide();
        });
        $(document).on("click, change", "input[name*='hourInput']", function () {
            dayHour = $(this).prev().val() + $(this).val();
            var classYear = $('#classYear').val();
            var classSemester = $('#classSemester').val();
            console.log(dayHour);
            $.ajax({
                url: 'timeDupCheck.do',
                data: {
                    classYear:classYear,
                    classSemester:classSemester,
                    dayHour: dayHour
                }, success: function (data) {
                    if (data == "ok") {
                        $(".terror1").hide();
                        $(".tok").show();
                        $("#timeDupCheck").val(1);
                    } else {
                        $(".terror1").show();
                        $(".tok").hide();
                        $("#timeDupCheck").val(0);
                    }
                }, error: function (request, status, errorData) {
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
                    <h1>강의등록</h1>
                </div>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800"></h1>


                    <!-- Content Row -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="height: 75px;">
                            <div>
                                <p id="explain1">강의등록요청 페이지입니다. 정보 입력후 다음을 누르시면 강의계획서 입력 페이지로 이동합니다. </p>
                                <%--                                <div id="requestRegisterCard" class="card active" align="center"--%>
                                <%--                                     style="height: 100%; text-align: center; padding-top: 10px; padding-bottom: 5px;">--%>
                                <%--                                    강의등록--%>
                                <%--                                </div>--%>
                                <p id="explain2">강의계획서 입력 페이지입니다. 다음에 저장을 누르시면 추후에 변경이 가능합니다.</p>
                            </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive register">
                                <table class="table addArea">
                                    <tr>
                                        <th>교과목명</th>
                                        <th><input id="className" type="text"></th>
                                        <th>과목코드</th>
                                        <th><input id="classCode" type="text"
                                                   style="width: 100px; margin-right: 10px"><span
                                                class="guide ok">사용가능</span><span class="guide error1">사용 불가능</span>
                                            <input type="hidden"
                                                   name="codeDuplicateCheck"
                                                   id="codeDuplicateCheck"
                                                   value="0"/></th>
                                    </tr>
                                    <tr>
                                        <th>이수구분</th>
                                        <th>
                                            <select id="classType">
                                                <option>전필</option>
                                                <option>전선</option>
                                                <option>교양</option>
                                            </select>
                                        </th>
                                        <th>학점</th>
                                        <th><input id="gradeSize" type="number" min="1" max="3"></th>
                                    </tr>
                                    <tr>
                                        <th>년도</th>
                                        <th><input id="classYear" type="number"></th>
                                        <th>학기</th>
                                        <th>
                                            <select id="classSemester">
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>강의실</th>
                                        <th><input type="text" id="room"></th>
                                        <th>학년</th>
                                        <th>
                                            <select id="classLevel">
                                                <option>선택</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </th>

                                    </tr>

                                    <tr name="lectureTime">
                                        <th>강의시간</th>
                                        <th colspan="3">
                                            <select name="daySelect">
                                                <option value="">선택</option>
                                                <option value="월">월요일</option>
                                                <option value="화">화요일</option>
                                                <option value="수">수요일</option>
                                                <option value="목">목요일</option>
                                                <option value="금">금요일</option>
                                            </select>
                                            <input name="hourInput" style="width: 50px;" type="number" min="1" max="9">
                                            <label>교시</label>
                                            <button name="addDays" class="btn btn-primary btn-circle btn-sm"
                                                    style="margin-left: 10px;">+
                                            </button>
                                            <script>
                                                $(document).on('click', 'button[name=addDays]', function () {
                                                    if ($("#timeDupCheck").val()==1 && !(dayHour.includes('undefined'))){
                                                    var addDays = "";
                                                    addDays += '<tr name="lectureTime">';
                                                    addDays += '<th>강의시간</th>';
                                                    addDays += '<th colspan="3">';
                                                    addDays += "<select name='daySelect'>";
                                                    addDays += "<option>선택</option>";
                                                    addDays += "<option value='월'>월요일</option>";
                                                    addDays += "<option value='화'>화요일</option>";
                                                    addDays += "<option value='수'>수요일</option>";
                                                    addDays += "<option value='목'>목요일</option>";
                                                    addDays += "<option value='금'>금요일</option>";
                                                    addDays += "</select>";
                                                    addDays += "&nbsp";
                                                    addDays += '<input name="hourInput" style="width: 50px;" type="number" min="1" max="9">';
                                                    addDays += "&nbsp";
                                                    addDays += '<label for="hour">교시</label>';
                                                    addDays += "<button class='btn btn-primary btn-circle btn-sm' name='delDays' style='margin-left: 13px;'>-</button>";
                                                    addDays += '</th>';
                                                    addDays += '</tr>';
                                                    var trDays = $("tr[name=lectureTime]:last");
                                                    // $('.addAtrea').append(addDays);
                                                    trDays.after(addDays);
                                                    $("#timeDupCheck").val(0);
                                                    }else return false;
                                                });
                                                $(document).on('click', 'button[name=delDays]', function () {
                                                    $(".terror1").hide();
                                                    $(".tok").show();
                                                    $("#timeDupCheck").val(1);
                                                    var trDays = $(this).parent().parent();
                                                    trDays.remove();
                                                });

                                            </script>
                                            <span class="tguide tok">사용가능 시간</span><span class="tguide terror1">중복된 시간표 존재</span>
                                            <input type="hidden"
                                                   name="timeDupCheck"
                                                   id="timeDupCheck"
                                                   value="0"/>
                                        </th>
                                    </tr>

                                </table>

                            </div>
                            <div class="table-responsive addPlan">
                                <table id="addPlanTb" class="table">

                                    <tr>
                                        <th>교육목표</th>
                                        <th><textarea id="classTarget" style="resize: none; width: 100%"></textarea>
                                        </th>
                                        <th>주교재</th>
                                        <th><input id="classBook" type="text"></th>
                                    </tr>
                                    <tr>
                                        <th>교과목 개요</th>
                                        <th colspan="3"><textarea id="classOutline"
                                                                  style="resize: none; height:150px; width: 80%;"></textarea>
                                        <th>
                                    </tr>
                                </table>
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th colspan="3">주차별 계획</th>
                                    </tr>
                                    <tr>
                                        <th>주차</th>
                                        <th>주제</th>
                                        <th colspan="2">세부 내용</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>2주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>3주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>4주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>5주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>6주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>7주차</td>
                                        <td><input type="text" style="width: 75% " name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>8주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>9주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>10주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>11주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>12주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>13주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>14주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>15주차</td>
                                        <td><input type="text" style="width: 75%" name="topic"></td>
                                        <td><textarea style="resize: none; height:75px; width: 100%;"
                                                      name="weekPlan"></textarea></td>
                                    </tr>

                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <div id="buttonArea1" class=" card-body" align="center">
                            <button id="registerBtn" class="btn btn-success"
                                    onclick="checkRegister();">다음
                            </button>
                            <script>
                                var ajaxResult = "";
                                var dayList = [];
                                var hourList = [];

                                function registerClass() {
                                    $.ajax({
                                        url: "requestRegisterClass.do",
                                        data: {
                                            classCode: $('#classCode').val(),
                                            className: $('#className').val(),
                                            room: $('#room').val(),
                                            gradeSize: $('#gradeSize').val(),
                                            classSemester: $('#classSemester').val(),
                                            classYear: $('#classYear').val(),
                                            classLevel: $('#classLevel').val(),
                                            classType: $('#classType').val()
                                        }, dataType: 'text',
                                        async: false,
                                        success: function (data) {
                                            console.log(data);
                                            ajaxResult = data;
                                        }, error: function (data) {
                                            ajaxResult = "fail"
                                        }
                                    });
                                }


                                function checkClassTime() {
                                    for (var i = 0; i < $("select[name*='daySelect']").length; i++) {
                                        dayList.push($("select[name*='daySelect']").eq(i).val());
                                        // dayList += $("select[name*='daySelect']").eq(i).val();
                                        // dayList += ',';
                                    }
                                    for (var i = 0; i < $("input[name*='hourInput']").length; i++) {
                                        hourList.push($("input[name*='hourInput']").eq(i).val());
                                        // hourList += $("input[name*='hourInput']").eq(i).val();
                                        // hourList += ',';
                                    }
                                }

                                function registerClassTime() {
                                    $.ajax({
                                        url: "requestRegisterTime.do",
                                        data: {
                                            classCode: $('#classCode').val(),
                                            dayList: dayList,
                                            hourList: hourList
                                        }, dataType: 'text',
                                        success: function (data) {
                                            console.log(data)
                                        }, error: function () {
                                            console.log("classTime등록 에러")
                                        }
                                    });
                                }


                                function checkRegister() {
                                    if ($("#codeDuplicateCheck").val() == 0) {
                                        alert("사용가능한 과목코드를 입력해주세요 ");
                                        $("#codeDuplicateCheck").focus();
                                        return false;

                                    } else if ($("#timeDupCheck").val() == 0){
                                        alert("시간표를 확인해주세요.");
                                        return false;
                                    } else {
                                        if (confirm("확인을 누르시면 등록 요청 후 강의계획서 입력창으로 이동합니다.") === true) {

                                            registerClass();

                                            console.log(ajaxResult);
                                            if (ajaxResult === "ok") {
                                                checkClassTime();
                                                registerClassTime();
                                                $('.register').hide();
                                                $('.addPlan').show();
                                                $('#buttonArea1').hide();
                                                $('#buttonArea2').show();
                                                $('#explain1').hide();
                                                $('#explain2').show();
                                            } else {
                                                alert("빈칸을 정확하게 기입해주세요.")
                                            }
                                        } else return false;
                                    }
                                }

                                $(function () {

                                    $('#classCode').on('keyup', function () {
                                        var checkClassCode = $(this).val();
                                        if (checkClassCode.length < 4) {
                                            $(".guide").hide();
                                            $("#codeDuplicateCheck").val(0);
                                            return;
                                        }
                                        $.ajax({
                                            url: 'classCodeCheck.do',
                                            data: {
                                                classCode: checkClassCode
                                            }, success: function (data) {
                                                if (data == "ok") {
                                                    $(".error1").hide();
                                                    $(".ok").show();
                                                    $("#codeDuplicateCheck").val(1);
                                                } else {
                                                    $(".error1").show();
                                                    $(".ok").hide();
                                                    $("#codeDuplicateCheck").val(0);
                                                }
                                            }, error: function (request, status, errorData) {
                                            }
                                        });
                                    });
                                });

                            </script>
                        </div>
                        <div id="buttonArea2" class="buttonArea card-body" align="center">
                            <button id="addNext" class="btn btn-secondary" onclick="requestRegisterPlan();">다음에 저장
                            </button>
                            <button id="addPlanBtn" class="btn btn-success" onclick="requestRegisterPlan();">강의계획서 첨부
                            </button>
                            <script>

                                function requestRegisterPlan() {
                                    addThreeItem();
                                    addWeekPlan();

                                }

                                function addThreeItem() {
                                    $.ajax({
                                        url: "addThreeItem.do",
                                        data: {
                                            classCode: $('#classCode').val(),
                                            classTarget: $("#classTarget").val(),
                                            classOutline: $("#classOutline").val(),
                                            classBook: $("#classBook").val()
                                        }, dataType: 'text',
                                        success: function (data) {
                                            console.log(data)
                                        }, error: function () {
                                            alert("3아이템 중 에러")
                                        }
                                    })
                                }

                                function addWeekPlan() {
                                    var weekPlanArray = [];
                                    var topicArray = [];
                                    for (var i = 0; i < 15; i++) {
                                        weekPlanArray.push(document.getElementsByName("weekPlan")[i].value);
                                        topicArray.push(document.getElementsByName("topic")[i].value);
                                    }
                                    console.log(weekPlanArray);
                                    console.log(topicArray);

                                    $.ajax({
                                        url: "addWeekPlan.do",
                                        data: {
                                            //JSON 문자열로 바꿔준다.
                                            classCode: $('#classCode').val(),
                                            weekPlanArray: weekPlanArray,
                                            topicArray: topicArray
                                        }, dataType: 'text',
                                        success: function (data) {
                                            location.reload();
                                        }, error: function () {
                                            alert("계획서 등록 중 에러")
                                        }
                                    });
                                }
                            </script>
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
