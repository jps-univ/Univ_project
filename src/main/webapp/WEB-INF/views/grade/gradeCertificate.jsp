<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>진포상대학교</title>
  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
 
  <link href="css/gradeproof.css" rel="stylesheet">
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
            <a class="collapse-item" href="">학생 정보</a>
            <a class="collapse-item" href="">비밀번호 변경</a>
            <a class="collapse-item" href="">전체 시간표</a>
            <a class="collapse-item" href="">상담 관리</a>
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
            <a class="collapse-item" href="Lookup-Grade.html">학기별 성적 조회</a>
            <a class="collapse-item" href="copycertificate.html">성적 증명서</a>
            <a class="collapse-item" href="graduation-table.html">졸업 사정표</a>
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

        <p class="HStyle0"><span style='font-size:12.0pt;line-height:160%;'>[별지</span><span
          style='font-size:12.0pt;letter-spacing:20%;line-height:160%;'> 제32호서식</span><span
          style='font-size:12.0pt;line-height:160%;'>]</span></p>

  <p class="HStyle0" style='margin-left:8.0pt;text-align:center;line-height:150%;'><span
          style='font-size:24.0pt;letter-spacing:20%;font-weight:bold;line-height:150%;'>성 적 증 명 서</span></p>

  <p class="HStyle14" style='text-align:left;line-height:160%;'><span
          style='font-size:10.0pt;font-family:한양신명조,한컴돋움;font-weight:normal;line-height:160%;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  </p>

  <p class="HStyle0">
  <div style="margin: auto;">
      <table border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;border:none;'>
          <tr>
              <td rowspan="2" width="53" height="50" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>학번</p>
              </td>
              <td rowspan="2" width="149" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
              <td rowspan="2" width="66" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>성&nbsp;&nbsp; 명</p>
                  <p class="HStyle0" style='text-align:center;'><span style='letter-spacing:-3%;'>(한&nbsp; 자)</span>
                  </p>
              </td>
              <td width="136" height="26" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
              <td rowspan="2" colspan="2" width="202" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
              <td rowspan="2" width="52" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>입&nbsp; 학</p>
                  <p class="HStyle0" style='text-align:center;'>년월일</p>
              </td>
              <td rowspan="2" width="150" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
              <td rowspan="2" width="50" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>졸&nbsp; 업</p>
                  <p class="HStyle0" style='text-align:center;'>년월일</p>
              </td>
              <td rowspan="2" width="128" height="50" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td width="136" height="24" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td width="53" height="41" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>성별</p>
              </td>
              <td width="149" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>&nbsp;</p>
              </td>
              <td width="66" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>생년월일</p>
              </td>
              <td width="136" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>&nbsp;</p>
              </td>
              <td width="67" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>학과</p>
              </td>
              <td colspan="5" width="516" height="41" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="202" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">구분&nbsp;&nbsp;&nbsp; 교과목&nbsp;&nbsp;&nbsp; 학점&nbsp; 성적</p>
              </td>
              <td colspan="2" width="178" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0"><span style='letter-spacing:-4%;'>구분&nbsp;&nbsp; 교과목&nbsp;&nbsp; 학점&nbsp;
                          성적</span></p>
              </td>
          </tr>
          <tr>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0"><span style='letter-spacing:-4%;'>&nbsp;</span></p>
              </td>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:130%;'>&nbsp;</p>
              </td>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
              <td rowspan="6" colspan="2" width="202" height="382" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
              <td colspan="2" width="178" height="128" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0">&nbsp;</p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="25" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>총취득학점 : </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="24" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'><span style='letter-spacing:12%;'>평점 누계</span> : </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="21" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>총평점평균 : </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="21" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='margin-left:5.0pt;'>백&nbsp; 분&nbsp; 율 : </p>
              </td>
          </tr>
          <tr>
              <td colspan="2" width="178" height="163" valign="middle"
                  style='border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
                  <p class="HStyle0" style='text-align:center;line-height:200%;'>위의 사실을 증명합니다.</p>
                  <p class="HStyle0" style='text-align:center;line-height:200%;'>년&nbsp;&nbsp;&nbsp;
                      월&nbsp;&nbsp;&nbsp; 일</p>
                  <p class="HStyle0" style='text-align:center;'>&nbsp;</p>
                  <p class="HStyle0" style='text-align:center;'><span style='font-weight:bold;'>진포상대학교총장</span></p>
                  <p class="HStyle0" style='text-align:center;'><span style='font-weight:bold;'>&nbsp;</span></p>
              </td>
          </tr>
      </table>
      </p>

      <p class="HStyle0" style='line-height:130%;'>*성적등급 A+(95-100)4.5&nbsp; A0(94- 90)4.0&nbsp; B+(85-89)3.5&nbsp;
          B0(80-84)3.0&nbsp; C+(75-79)2.5&nbsp; C0(70-74)2.0&nbsp; D+(65-69)1.5&nbsp; D0(60-64)1.0&nbsp; F(59이하)0</p>

      <p class="HStyle0" style='line-height:130%;'>&nbsp;별도지정교과목: S(급제) U(낙제) 단, 평점은 부여하지 않음.</p>

      <p class="HStyle0"><br /></p>
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
          <a class="btn btn-primary" href="">Logout</a>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  <script>
   
  </script>
</body>
</html>