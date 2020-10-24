<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>진포상대학교 | 복학신청</title>
  <!-- Custom fonts for this template-->
    <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

   

  <link rel="stylesheet" href="${contextPath}/resources/css/grade_return.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <style>
     #list{ text-align: center;}
  #btn1,#btn2{ background: white; border: 0px solid white; }
  #body{ width: 100%;}
  /*.contents {
          width: 80%;
          height: 70%;
          background: rgb(231, 231, 231);
          text-align : left;
          display : none;
          margin : auto; 
          margin-bottom: 20px;
      }*/

  #bar{ background: lightblue; height: 200px; }
  #main2{ text-align: left; margin: auto; font-size: 35px; line-height: 550%;}
  #tb{
    font-size:22px;
    color: black;
    margin-left: 350px;
    /* border: solid 1px black; */
  }
  #main{ text-align: center; }
  #content_title{
margin-top: 30px;
font-size: 40px;
color: #252525;


}
#rest_table_area{
padding: 10px; 
height: 500px;
overflow: scroll;
}

#rest_lecture{
width: 100%;
border: 1px solid rgb(46, 109, 151);
border-top: 5px solid rgb(46, 109, 151);
color: #808080;


}

#rest_lecture tr{
height: 30px;
border: solid rgb(149, 149, 150) 1px;
text-align: center;

}
#rest_lecture  tbody tr:nth-child(2n-1){
background: #f8f6ff;
}

#rest_lecture thead tr th{
  text-align: center;
}
/* #rest_lecture thead tr th:first-child,
#rest_lecture thead tr th:nth-child(2){
  width: 80px;
}
#rest_lecture thead tr th:nth-child(6){
width: 300px;
} */
#rest_lecture tr p{
margin-bottom: 0;

}
#rest_lecture_btn{
float: right;

margin-right: 10px;
}
.page {
 margin-top:50px;
 margin-left: 200px;

}
#btn1{ text-align: center; width: 130px; height: 50px; margin: auto; background: #2E9AFE; font-size: 28px; border: solid 3px A9E2F3; border-radius: 10px; color: white;}
#btn{ text-align: center; }
#select{ position: absolute; right: 30px; margin-top: -40px;}
#year{ text-align: center; }
#text1,#text2{ width: 170px; }
  </style>
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="user.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">진포상대학교</div>
      </a>
      <hr class="sidebar-divider my-0">

      <li class="nav-item ">
        <a class="nav-link" href="user.html">
          <span>HOME</span></a>
      </li>
      <hr class="sidebar-divider">

      <li class="nav-item ">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMypage" aria-expanded="true" aria-controls="collapseMypage">
          <span>MY PAGE</span>
        </a>
        <div id="collapseMypage" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="mypage_student_info.html">학생 정보</a>
            <a class="collapse-item" href="mypage_student_password.html">비밀번호 변경</a>
            <a class="collapse-item" href="mypage_student_schedule.html">전체 시간표</a>
            <a class="collapse-item" href="mypage_student_consulting.html">상담 관리</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">

      <li class="nav-item ">
        <a class="nav-link" href="">
          <span>강의 게시판</span></a>
      </li>
      <hr class="sidebar-divider">
      
      <li class="nav-item ">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGrade" aria-expanded="true" aria-controls="collapseGrade">
          <span>성적</span>
        </a>
        <div id="collapseGrade" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="utilities-color.html">학기별 성적 조회</a>
            <a class="collapse-item" href="utilities-border.html">성적 증명서</a>
            <a class="collapse-item" href="utilities-animation.html">졸업 사정표</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseManagement" aria-expanded="true" aria-controls="collapseManagement">
          <span>수강 관리</span>
        </a>
        <div id="collapseManagement" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="utilities-color.html">강의 평가</a>
            <a class="collapse-item" href="utilities-border.html">성적 이의 신청</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAcademic" aria-expanded="true" aria-controls="collapseAcademic">
          <span>학적</span>
        </a>
        <div id="collapseAcademic" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="">휴학 신청</a>
            <a class="collapse-item" href="">복학 신청</a>
            <a class="collapse-item" href="">졸업 신청</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTuition" aria-expanded="true" aria-controls="collapseTuition">
          <span>등록금</span>
        </a>
        <div id="collapseTuition" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="utilities-color.html">납부 조회</a>
          </div>
        </div>
      </li>
    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님 환영합니다.</span>
              </a>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="modal" data-target="#logoutModal" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그아웃</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->
        
        <!-- Begin Page Content -->
         <div id="body">
          <div id="bar">
              <p id="main2">성적관리</p>
              
          </div>
          <br><br><br>
          <!-- <h2 id="year">2020년 2학기 성적관리</h2> -->
          <table border="0" cellspacing="0" width="700px" id="tb">
            <tr>
                <td><h4 id="code">과목코드 : </h4></td>
                <td><input type="text" id="text1" placeholder="전자 회로 2" disabled></td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <td><h4 id="code">교과목명 : </h4></td>
                <td><input type="text" id="text2" placeholder="EE1033" disabled></td>
            </tr>
        </table>
          <br>
          <div class="col-sm-9 page">
            <div id="content_title">
                <h2>2020년 2학기 성적관리</h2>
                <select style="width:140px; height: 30px; font-size: 14px;" name="select" id="select" class="box" onChange="checked();">
                  <option value="" selected>선택하세요</option>
                  <option value="중간">중간</option>
                  <option value="기말">기말</option>
              </select>
                <hr>
            </div>
            <div id="rest_table_area">
                <method method="GET">
                    <table id="rest_lecture"  class=" table-hover">
                        <thead>
                            <tr>
                                <th>
                                    <pre>               </pre>
                                </th>
                                <th><pre>  A+  </pre></th>
                                <th><pre>  A  </pre></th>
                                <th><pre>  A-  </pre></th>
                                <th><pre>  B+  </pre></th>
                                <th><pre>  B  </pre></th>
                                <th><pre>  B-  </pre></th>
                                <th><pre>  C+  </pre></th>
                                <th><pre>  C  </pre></th>
                                <th><pre>  C-  </pre></th>
                                <th><pre>  D+  </pre></th>
                                <th><pre>  D  </pre></th>
                                <th><pre>  D-  </pre></th>
                                <th><pre>  F  </pre></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>김아무개</td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                            </tr>
                            

                        </tbody>



                    </table>
                </method>
            </method>
        </div>
        <br><br>
        <div id="btn">
        <input type="button" id="btn1" value="완료" onclick="location.href='../index.html'">
        </div>
        <br><br><br>
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
          <a class="btn btn-primary" href="">확인</a>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>

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