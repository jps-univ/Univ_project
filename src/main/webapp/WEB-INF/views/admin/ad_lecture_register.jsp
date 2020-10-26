<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_lecture_register.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<c:import url="../common/adminTopbar.jsp" />

 <div class="container-fluid">

    <!-- 사이드바 -->
    <nav class="col-sm-3 sidenav">
      <h4>강의 관리</h4>
      <ul class="nav nav-pills nav-stacked">
      	
        <li class="active"><a href="lecture_Register.do">강의 등록</a></li>
        <li><a href="lecture_Modify.do">강의 정보 조회/수정</a></li>
        <li><a href="lecture_Rest.do">휴/보강 관리</a></li>
        <li><a href="adminDateGo.do">수강신청 기간설정</a></li>
      
      </ul>
    </nav>
    <!-- 사이드바 끝 -->

    <!-- 본문 -->
    <div class="col-sm-9 page">
      <div id="content_title">
        <h2>강의 등록</h2>
        <hr>
      </div>
      <div id="reg_table_area">
        <form method="GET">
          <table id="reg_lecture">
            <tr>
              <td>
                <p>강의명</p>
              </td>
              <td>
                <input type="text">
              </td>
              <td>
                <p>교수명</p>
              </td>
              <td>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <p>이수 구분</p>
              </td>
              <td>
                <select name="" id="">
                  <option value="">-----</option>
                  <option value="">P/F</option>
                </select>
              </td>
              <td>
                <p>개설 학과</p>
              </td>
              <td>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <p>강의시간</p>
              </td>
              <td>
                <input type="text">
              </td>
              <td>
                <p>강의실</p>
              </td>
              <td>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <p>강의 코드</p>
              </td>
              <td>
                <input type="text">
              </td>
              <td>
                <p>학점</p>
              </td>
              <td>
                <select name="" id="">
                  <option value="">-----</option>
                  <option value="">P/F</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <p>강의 계획서</p>
              </td>
              <td colspan="3">
                <a data-toggle="modal" target="#mymodal">작성하러가기</a>
              </td>
            </tr>

          </table>
      </div>
      <input type="submit" id="reg_lecture_btn" value="등록하기">
      </form>
      <div class="modal fade"id="#mymodal" role="dialog">
        <div class="modal-content">asd</div>
        <table>
          <tr><td>asdasd</td></tr>
        </table>
      </div>
    </div>
    <!-- 본문 끝 -->
  
  </table>
  </div>
  <script>
    function classPlath(){
      //  window.open("./ad_rest_lecture.html","width=400,height=200,location=no");
       window.showModalDialog("./ad_rest_lecture.html");
    }
  </script>
  

  <!-- footer -->
  <footer class="container-fluid navbar-fixed-bottom">
    <p>진포상대학</p>
  </footer>
  <!-- footer 끝 -->
</body>
</html>