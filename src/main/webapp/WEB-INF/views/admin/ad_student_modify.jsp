<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>진포상대학교</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath}/resources/css/admin/ad_student_modify.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<c:import url="../common/adminTopbar.jsp" />

    <div class="container-fluid">

        <!-- 사이드바 -->
        <nav class="col-sm-3 sidenav">
            <h4>학생관리</h4>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="student_Register.do">학생 등록</a></li>
                <li class="active"><a href="student_Modify.do">학생 조회/수정</a></li>
                

            </ul>
        </nav>
        <!-- 사이드바 끝 -->

        <!-- 본문 -->
        <div class="col-sm-9 page">
            <div id="content_title">
                <h2>학생 정보 수정</h2>
                <hr>
            </div>
            <div id="std_info_table_area">
                <form method="GET">
                    <table id="std_info_table">
                        <tr>
                            <td rowspan="5" id="img_area"><img src="#" alt="preview" id="std_img"></td>
                            <td class="stdtext">
                                <p>학번</p>
                            </td>
                            <td><input type="text"></td>
                            <td class="stdtext">
                                <p>성명</p>
                            </td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>생년월일(성별)</p>
                            </td>
                            <td><input type="text"></td>
                            <td class="stdtext">
                                <p>대학</p>
                            </td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>학부(과)</p>
                            </td>
                            <td><input type="text"></td>
                            <td class="stdtext">
                                <p>과정구분</p>
                            </td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>학년</p>
                            </td>
                            <td><input type="text"></td>
                            <td class="stdtext">
                                <p>학적상태</p>
                            </td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="stdtext">
                                <p>입학구분</p>
                            </td>
                            <td><input type="text"></td>
                            <td class="stdtext"></td>
                            <td><input type="text"></td>
                        </tr>
                    </table>
                    <input type="file" value="a" onchange="previewImg()" id="preview_std_img">
            
                    <script>
                                
                        function previewImg() {
                            var preview = document.getElementById("std_img");
                            var file = document.getElementById("preview_std_img").files[0];
                            var reader = new FileReader();

                            reader.onloadend = function () {
                                preview.src = reader.result;

                            }
                            if (file) {
                                reader.readAsDataURL(file);

                            } else {
                                preview.src = "";
                            }
                        }
                    </script>


                    
            </div>
            <div id="std_card_table_area">
                <table id="std_card_table">
                    <tr>
                        <td class="stdtext">
                            <p>전화번호</p>
                        </td>
                        <td class=""><input type="text"></td>
                        <td class="stdtext">
                            <p>핸드폰</p>
                        </td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>이메일</p>
                        </td>
                        <td><input type="text"></td>
                        <td class="stdtext">
                            <p>은행명</p>
                        </td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>학생주소</p>
                        </td>
                        <td><input type="text"></td>
                        <td class="stdtext">
                            <p>계좌번호</p>
                        </td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td class="stdtext">
                            <p>상세주소</p>
                        </td>
                        <td><input type="text"></td>
                        <td class="stdtext">
                            <p>예금주</p>
                        </td>
                        <td><input type="text"></td>
                    </tr>

            </div>

            </table>
            <input type="submit" value="수정" id="modify_btn">
            </form>
            
            <h2>학생조회</h2>
            <hr>
            <pre>대학 : <select name="" id="">
                <option value="">------</option>
                <option value="">----s--</option>
            </select> 학과 : <select name="" id="">
                <option value="">------</option>
                <option value="">----s--</option>
            </select> 학년 : <select name="" id="">
                <option value="">------</option>
            </select> <input type="button" value="검색"></pre>
                
            
            <div id="total_std_area">
                
                <table id="total_std" class=" table-hover" >
                    <thead>
                        <tr>
                            <th>
                                <p>학번</p>
                            </th>
                            <th>
                                <p>성명</p>
                            </th>
                            <th>
                                <p>생년월일</p>
                            </th>
                            <th>
                                <p>대학</p>
                            </th>
                            <th>
                                <p>학과</p>
                            </th>
                            <th>
                                <p>과정구분</p>
                            </th>
                            <th>
                                <p>학년</p>
                            </th>
                            <th>
                                <p>학적상태</p>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>A12</td>
                            <td>20/09/26</td>
                            <td>10/22</td>
                            <td>13:00</td>
                            <td>교</td>
                            <td>A5410</td>
                            <td>A5410</td>
                            
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>A12</td>
                            <td>10/12</td>
                            <td>10/22</td>
                            <td>13:00</td>
                            <td>병가</td>
                            <td>A5410</td>
                            <td>A5410</td>
                            
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>A12</td>
                            <td>10/12</td>
                            <td>10/22</td>
                            <td>13:00</td>
                            <td>병가</td>
                            <td>A5410</td>
                            <td>a</td>
                        </tr>

                    </tbody>



                </table>
            </div>
            <br><br><br><br><br><br><br><br>
        </div>
        <!-- 본문 끝 -->

    </div>
    

    <!-- footer -->
    <footer class="container-fluid navbar-fixed-bottom">
        <p>진포상대학</p>
    </footer>
    <!-- footer 끝 -->


</body>
</html>