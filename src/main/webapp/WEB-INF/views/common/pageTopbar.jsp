<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<c:set var="Seq" value="${ Seq}"/>
<c:set var="profN" value="${profN}"/>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${contextPath }/resources/css/admin/ad_class_plan.css?ver=8" type="text/css">
    <style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }
  
  
  /* Modal Content */
  .modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
  }
  
  /* The Close Button */
  .close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
  }
  
  .close:hover,
  .close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
  }
#College,#departmentCode{
	float: left;
	width: 140px;
}
#departmentCode{
	margin-left:20px;	
}
#professorCode{
	width: 300px;
}
  #total_approve{
      float: right;
  }

  a{
    cursor: pointer;
  }
  #class_detail_table thead td{
    background-color: rgb(47, 79, 79, 0.05)
}
#class_detail_table thead td p{
    text-align: center;
    margin-left: 3px;
    font-weight: bold;
    
}
#conceal_btn{
    font-size: 20px;
}
#class_plan_area  input[type=text]{
    border: none;
    background-color: whitesmoke;
    height: 100%;
}
#mclassOutLine,
#mclassTarget,
#mclassBook{
	width:100%;
	heigth:100%;
}

#lecture_btn{
	width:50px;
	margin-top: 10px;
	float:right;
	
}
    
    </style>
</head>
<body>
        <script>
            $(function(){
              $('.drop_submenu').slideUp();
              $('.drop').click(function(){
                $('.drop_submenu').slideUp();
                $(this).next('ul').toggle();
              });
            });
        </script>
                
                 <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar 로그인창 -->
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
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${userName }님 환영합니다. ${profN } + ${Seq }+${classSeq }</span>
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

        <!-- page top bar -->
        
        <div class="top_bar">
           <h1>강의게시판</h1>
        </div>
 

        <!-- second navibar -->
        <div class="sec_navi shadow">
            <ul id="sec_navibar">
                <li class="drop" style="margin-left: 10%;"><a href="selectClass.do">수강 과목 조회</a></li>
                <li class="drop" style="margin-left: 12%;"><a href="#">강의 정보</a></li>
                    <ul class="drop_submenu">
                        <li><a id="myBtn">강의 계획서</a></li> 
                        <li><a href="cNoticeList.do">공지 사항</a></li>
                    </ul>
                <li class="drop" style="margin-left: 14%;"><a href="#">학습 활동</a></li>
                    <ul class="drop_submenu">
                        <li><a href="assignmentList.do">과제</a></li>
                    </ul>
                <li class="drop" style="margin-left: 15%;"><a href="#">성적 관리</a></li>
                    <ul class="drop_submenu">
                        <li><a href="gradeObjectionList.do">성적 이의 신청</a></li>
                    </ul>                    
            </ul>
        <input type="hidden" value="${Seq }" id="classSeq" name="classSeq">
        </div>
        
        <div id="myModal" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span>강의 계획서</span>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <div id="main_con">


                        <!-- 공지사항 목록 조회  -->
                        <div id="class_plan_area">
                            <!--                    <form method="GET">         -->
                            <table id="class_info">
                                <div id="class_info_title">
                                    <div>교과목 개요</div>
                                </div>
                                <tbody>
                                    <tr>
                                        <td><div>강의명</div></td>
                                        <td><p id="mlectureName"></p></td>
                                        <td><div>담당교수</div></td>
                                        <td><p id="mProfessorName"></p></td>
                                        <td><div>강의실</div></td>
                                        <td><p id="mRoom"></p></td>
                                    </tr>
                                    <tr>
                                        <td><div>년도</div></td>
                                        <td><p id="mYear"></p></td>
                                        <td><div>학기</div></td>
                                        <td><p id="mSemester"></p></td>
                                        <td><div>학점</div></td>
                                        <td><p id="mGradeSize"></p></td>
                                    </tr>
                                    <tr>
                                        <td><div>이수구분</div></td>
                                        <td><p id="mClassStatus"></p></td>
                                        <td><div>전공영역</div></td>
                                        <td><p id="mDepartment"></p></td>
                                        <td><div>과목코드</div></td>
                                        <td><p id="mclassCode"></p></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="class_sum_title">
                                <div>교과목 개요</div>
                            </div>
                            <div id="class_sum_content">
                                <input type="text" id="mclassOutLine">
                            </div>
                            <table id="class_goal">
                                <tbody>
                                    <tr>
                                        <td><div>교육목표</div></td>
                                        <td><input type="text" id="mclassTarget"></td>
                                        <td><div>주교재</div></td>
                                        <td><input type="text" id="mclassBook"></td>
                                    </tr>
                                </tbody>
                            </table>

                            <div id="class_detail_title">
                                <div>주차별 계획</div>
                            </div>

                            <table id="class_detail_table" border="1">
                                <thead>
                                    <tr height="30px;">
                                        <td><p>주차</p></td>
                                        <td><p>주제</p></td>
                                        <td><p>세부 내용</p></td>
                                    </tr>
                                </thead>
                                <tbody>
	                                <tr>
	                                    <td class="detail_head"><div>주차</div></td>
	                                    <td class="detail_head"><div>주제</div></td>
	                                    <td class="detail_head"><div>세부 내용</div></td>
	                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="conceal_btn">확인</button>
                    <br><br>
                    <br><br>

                </div>
            </div>
        </div>
      
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        var canceal = document.getElementById("conceal_btn");

        
        	var classSeq;
        	var className;
        	var p;
        	var professorName;
        	var room;
        	var classCode;
        	var gradeSize;
        	var status;
        	var Department;
        	var classOutLine;
        	var classTarget;
        	var classBook;
        	var classYear;
        	var classSemester;
       	$(document).ready(function callclass(){
        	$.ajax({
        		url:'lecture_Modify_selectOne1.do',
        		dataType:'json',
        		data:{
        			classSeq:$('#classSeq').val()
        		},success:function(data){
        			console.log(data);
        			classSeq = data.classSeq;
        			className = data.className;
        			p = data.profId;
        			professorName = data.proName;
        			room = data.room;
        			classCode = data.classCode;
        			gradeSize = data.gradeSize;
                	status = data.classType;
                	Department = data.deptCode;
                	classOutLine = data.classOutLine;
                	classTarget = data.classTarget;
                	classBook = data.classTarget;
                	classYear = data.classYear;
                	classSemester = data.classSemester;
                	console.log(className);
        		}, async:false
        	});
        });
        
        // When the user clicks the button, open the modal 

        btn.onclick = function () {
        	document.getElementById("mlectureName").innerHTML=className;
        	document.getElementById("mProfessorName").innerHTML=professorName;
        	document.getElementById("mRoom").innerHTML=room;
        	document.getElementById("mclassCode").innerHTML=classCode;
        	document.getElementById("mGradeSize").innerHTML=gradeSize;
        	document.getElementById("mYear").innerHTML=classYear;
        	document.getElementById("mSemester").innerHTML=classSemester;
        	document.getElementById("mClassStatus").innerHTML=status;       	
        	document.getElementById("mclassOutLine").value=classOutLine;
        	document.getElementById("mclassTarget").value=classTarget;
        	document.getElementById("mclassBook").value=classBook;

        	console.log(classSeq);
        	jQuery.ajax({
        		url:"ad_classplan1.do",
        		dataType:"json",
        		data:{
        			classSeq:$("#classSeq").val()	
        		},success:function(plan){
        			$("#class_detail_table tbody").empty();
        			
        			for(var p = 0; p<plan.length; p++){
        				
        				if(plan !=null){
							var $tr = $('<tr>');
							var $week = $("<td><input type="+"text "+"name ="+"week"+"class="+"detail_head "+">");
							var $topic = $("<td><input type="+"text "+"name ="+"topic "+"class="+"detail_head "+">");
							var $weekPlan= $("<td><input type="+"text "+"name ="+"weekPlan "+"class="+"detail_head "+">");
        					$($week).children().attr('value',plan[p].week);
        					$($topic).children().attr('value',plan[p].topic);
        					$($weekPlan).children().attr('value',plan[p].weekPlan);
							$tr.append($week);
							$tr.append($topic);
							$tr.append($weekPlan);
							$("#class_detail_table tbody").append($tr);
							
        				}else{
        					alert("강의계획서가 등록 되지 않았습니다.");
        				}
        			}
        			
        		},error:function(error){
        			$("#class_detail_table tbody").empty();
        			
        		}
        			
        	})
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }
        
        canceal.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>
</html>