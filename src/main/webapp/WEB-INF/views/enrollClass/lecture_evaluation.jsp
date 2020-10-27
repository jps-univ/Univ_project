<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<c:import url="../common/sidebar.jsp"/>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
<c:import url="../common/topbar.jsp"/>
       
        <!-- End of Topbar -->
        <div id="content_title">
          <p>강의평가</p>
        </div>
        <hr>
        <div id="main_content">
          <div id="explanation">

            <ul>
              <li>이 설문조사는 강의내용을 충실하게 하여 수업의 질을 제고하는데 필요한 기초자료를 수집하기 위해시행됩니다.</li>
              <li>수강한 과목과 관련한 아래의 질문을 읽고 각 문항별로 본인이 동의하는 응답을 택하여 마우스로 클릭해주시기 바랍니다.</li>
              <li>해당과목의 설문을 마쳐야만 성적공시조회가 가능합니다. </li>
              <li>강의평가가 완료된 교과목은 추후 수정할 수 없으니 작성에 신중을 기하여 주시기 바랍니다.</li>
            </ul>


          </div>
          <hr>
          <div id="ev_lecture">
            <span>
              <label>학수번호 : </label>
              <input type="text">
              <label>교과목명 : </label>
              <input type="text">
            </span>
          </div>
          <div id="ev_table">
            <form method="GET">
              <table border="1">
                <thead>
                  <tr>
                    <td>번호</td>
                    <td>평가 문항</td>
                  </tr>
                </thead>
                <tr>
                  <td>1번</td>
                  <td>교수가 수업시간을 준수했습니까?</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_1" name="ev_1">
                    <label for="highest_1">매우 그렇다</label>
                    <input type="radio" id="higher_1" name="ev_1">
                    <label for="higher_1">그렇다</label>
                    <input type="radio" id="normal_1" name="ev_1">
                    <label for="normal_1">보통이다</label>
                    <input type="radio" id="lower_1" name="ev_1">
                    <label for="lower_1">아니다</label>
                    <input type="radio" id="lowest_1" name="ev_1">
                    <label for="lowest_1">전혀 아니다</label>

                  </td>
                </tr>
                <tr>
                  <td>2번</td>
                  <td>수업 목표는 구체적으로 명확하게 제시되었다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_2" name="ev_2">
                    <label for="highest_2">매우 그렇다</label>
                    <input type="radio" id="higher_2" name="ev_2">
                    <label for="higher_2">그렇다</label>
                    <input type="radio" id="normal_2" name="ev_2">
                    <label for="normal_2">보통이다</label>
                    <input type="radio" id="lower_2" name="ev_2">
                    <label for="lower_2">아니다</label>
                    <input type="radio" id="lowest_2" name="ev_2">
                    <label for="lowest_2">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>3번</td>
                  <td>수업목표, 내용, 방법에 따른 합리적인 성적평가 방법과 기준이 안내 되었다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_3" name="ev_3">
                    <label for="highest_3">매우 그렇다</label>
                    <input type="radio" id="higher_3" name="ev_3">
                    <label for="higher_3">그렇다</label>
                    <input type="radio" id="normal_3" name="ev_3">
                    <label for="normal_3">보통이다</label>
                    <input type="radio" id="lower_3" name="ev_3">
                    <label for="lower_3">아니다</label>
                    <input type="radio" id="lowest_3" name="ev_3">
                    <label for="lowest_3">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>4번</td>
                  <td>교수는 학생의 활동이나 과제에 대해 적절한 피드백을 제공하였다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_4" name="ev_4">
                    <label for="highest_4">매우 그렇다</label>
                    <input type="radio" id="higher_4" name="ev_4">
                    <label for="higher_4">그렇다</label>
                    <input type="radio" id="normal_4" name="ev_4">
                    <label for="normal_4">보통이다</label>
                    <input type="radio" id="lower_4" name="ev_4">
                    <label for="lower_4">아니다</label>
                    <input type="radio" id="lowest_4" name="ev_4">
                    <label for="lowest_4">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>5번</td>
                  <td>교수는 학생들이 흠미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_5" name="ev_5">
                    <label for="highest_5">매우 그렇다</label>
                    <input type="radio" id="higher_5" name="ev_5">
                    <label for="higher_5">그렇다</label>
                    <input type="radio" id="normal_5" name="ev_5">
                    <label for="normal_5">보통이다</label>
                    <input type="radio" id="lower_5" name="ev_5">
                    <label for="lower_5">아니다</label>
                    <input type="radio" id="lowest_5" name="ev_5">
                    <label for="lowest_5">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>6번</td>
                  <td>교수는 교과와 관련된 학문적 관심과 흥미를 이끌어냈다</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_6" name="ev_6">
                    <label for="highest_6">매우 그렇다</label>
                    <input type="radio" id="higher_6" name="ev_6">
                    <label for="higher_6">그렇다</label>
                    <input type="radio" id="normal_6" name="ev_6">
                    <label for="normal_6">보통이다</label>
                    <input type="radio" id="lower_6" name="ev_6">
                    <label for="lower_6">아니다</label>
                    <input type="radio" id="lowest_6" name="ev_6">
                    <label for="lowest_6">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>7번</td>
                  <td>교수는 학생들이 흥미를 가지고 수업에 몰입할 수 있도록 성실히 지도하였다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_7" name="ev_7">
                    <label for="highest_7">매우 그렇다</label>
                    <input type="radio" id="higher_7" name="ev_7">
                    <label for="higher_7">그렇다</label>
                    <input type="radio" id="normal_7" name="ev_7">
                    <label for="normal_7">보통이다</label>
                    <input type="radio" id="lower_7" name="ev_7">
                    <label for="lower_7">아니다</label>
                    <input type="radio" id="lowest_7" name="ev_7">
                    <label for="lowest_7">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>8번</td>
                  <td>강의는 교과와 관련된 실력 향상에 도움을 주었다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_8" name="ev_8">
                    <label for="highest_8">매우 그렇다</label>
                    <input type="radio" id="higher_8" name="ev_8">
                    <label for="higher_8">그렇다</label>
                    <input type="radio" id="normal_8" name="ev_8">
                    <label for="normal_8">보통이다</label>
                    <input type="radio" id="lower_8" name="ev_8">
                    <label for="lower_8">아니다</label>
                    <input type="radio" id="lowest_8" name="ev_8">
                    <label for="lowest_8">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>9번</td>
                  <td>강의의 구성과 내용은 해당 수업을 이해하는데 충분하였다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_9" name="ev_9">
                    <label for="highest_9">매우 그렇다</label>
                    <input type="radio" id="higher_9" name="ev_9">
                    <label for="higher_9">그렇다</label>
                    <input type="radio" id="normal_9" name="ev_9">
                    <label for="normal_9">보통이다</label>
                    <input type="radio" id="lower_9" name="ev_9">
                    <label for="lower_9">아니다</label>
                    <input type="radio" id="lowest_9" name="ev_9">
                    <label for="lowest_9">전혀 아니다</label>
                  </td>
                </tr>
                <tr>
                  <td>10번</td>
                  <td>나는 전반적으로 강의 만족하고 있다.</td>
                </tr>
                <tr>
                  <td>답</td>
                  <td>
                    <input type="radio" id="highest_10" name="ev_10">
                    <label for="highest_10">매우 그렇다</label>
                    <input type="radio" id="higher_10" name="ev_10">
                    <label for="higher_10">그렇다</label>
                    <input type="radio" id="normal_10" name="ev_10">
                    <label for="normal_10">보통이다</label>
                    <input type="radio" id="lower_10" name="ev_10">
                    <label for="lower_10">아니다</label>
                    <input type="radio" id="lowest_10" name="ev_10">
                    <label for="lowest_10">전혀 아니다</label>
                  </td>
                </tr>
              </table>
              <input type="submit" value="제출하기" id="ev_submit_btn">
            </form>
          </div>

        </div>


      </div>
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Jinposang University 2020</span>
          </div>
        </div>
      </footer>
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">로그아웃하시겠습니까?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">로그아웃후 로그인 페이지로 이동합니다.</div>
        <div class="modal-footer">
          <a class="btn btn-primary" href="">Logout</a>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
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