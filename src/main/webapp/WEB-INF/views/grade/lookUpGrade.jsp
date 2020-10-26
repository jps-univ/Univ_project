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
  <link href="css/lookup-grade.css" rel="stylesheet">
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <c:import url="../common/sidebar.jsp" />

    
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <c:import url="../common/topbar.jsp" />

         
        <!-- End of Topbar -->
        <!-- 전체 학점 및 성적-->
        <div  style="margin: auto;">
            
            <p class="top-Text" >학기별 성적 조회</p>

        </div>
        
        <!-- 개인의 전체 학점 및 신청/ 취득학점 부분 (성적증명서 출력 버튼 포함)-->
        <div class="total" style="height: 80px;">
            <button onclick="popup();" class="grade-print">성적 증명서 출력</button>
            <!-- 총 신청 학점 나오는부분 가로로 1행 8열 테이블처리해서 가로로 뺐음-->
            <table id="grade-top" class="grade-top">
                <thead>
                    <tr>
                       <th>
                         <p>전체 학점 및 성적</p>
                       </th>    
                                     
                    </tr>
                   
                </thead>  
                <tbody>                  
                      <td>총 신청 학점 </td>
                      <td>130</td>                
                      <td>총 취득 학점 </td>
                      <td>140</td>                  
                      <td>백분위 성적</td>
                      <td>99.9</td> 
                      <td>총 평점 평균</td>
                      <td>3.5</td>    
                </tbody>                      
            </table>            
        </div>
        <!-- 중간부분 전공, 교양 기타로 나누어져 성적 나오는 부분-->
        <div id="grade">
            <div id="gradeL">
              <p id="middle-text">전공</p>
            <table class="grade-middle-L">
                <th>
                    <tr>
                        <td>구분</td>
                        <td>신청학점</td>
                        <td>취득학점</td>
                    </tr>
                    <tr>
                        <td>전공</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                    <tr>
                        <td>합계</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                </th>

            </table>
        </div>

        <div id="gradeM" >
          <p id="middle-text">교양</p>
            <table class="grade-middle-M">
                <th>
                    <tr>
                        <td>구분</td>
                        <td>신청학점</td>
                        <td>취득학점</td>
                    </tr>
                    <tr>
                        <td>교양 필수</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                    <tr>
                        <td>균형 교양</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                    <tr>
                        <td>합계</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                </th>

            </table>
        </div>
            <div id="gradeR">
              <p id="middle-text">기타</p>
                <table class="grade-middle-R">
                <th>
                    <tr>
                        <td>구분</td>
                        <td>신청 학점</td>
                        <td>취득 학점</td>
                    </tr>
                    <tr>
                        <td>자유 선택</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                    <tr>
                        <td>합계</td>
                        <td>점수</td>
                        <td>점수</td>
                    </tr>
                    
                </th>

                </table>
            </div>
        </div>
        <!-- 학년/ 학기별 성적 조회하기 위하여 년도 및 학기 선택하는곳-->
        <div class="searchpart">
            <select name="year" id="">
                <option value="">2020년도</option>
                <option value="">2019년도</option>
                <option value="">2018년도</option>
                <option value="">2017년도</option>
            </select>
            <select name="half-year" id="">
                <option value="">1학기</option>
                <option value="">2학기</option>
                
            </select>
            <button onclick="search();">조회</button>
             
            <table class="garde-bottom">
                <th>
                    <tr>
                        <td>2020년도 - 2학기</td>
                        <td>신청/취득학점</td>
                        <td>평점 / 점수</td>
                        <td>석차</td>
                        <td><button>펼치기</button></td>
                    </tr>
                </th>
            </table>

        </div> 

      <!-- Footer -->
      <c:import url="../common/footer.jsp" />
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
 <c:import url="../common/logoutModal.jsp" />
  <!-- 성적 증명서 출력 부분 script-->
  <script>
    function popup(){
     var url ="gradeproof.html";
     var name = "print popup";
     var option="width=1000px, height=1000px, location=no";
      window.open(url,name,option);
    }
    
  </script>
  <!-- 밑에 search , 펼치기 부분 script-->
 

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