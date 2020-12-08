<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>" />
<c:set var="n" value="${ noticeDetail }"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>진포상대학교</title>
  <!-- Custom fonts for this template-->
  <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<%--   <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css">   --%>     
  <link rel="stylesheet" href="${contextPath}/resources/css/board_noticeDetail.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
  


.table-bordered {
    border: 5px solid #ddd;
}

    footer {
        background-color: #555;
        color: black;
        padding: 15px;
    }
    
    .question-table th {
    	text-align:center;
    }
    
    #main_con{
    width:95%}
    
   #write_title {
   	margin:auto;
   } 
   
   
  	#div1{
    margin: auto;
    width: 83%;
  	}

  	#table1{
  		font-size:14px;
  		background:white;
  	}
  	
  	#table1 p{
  		margin:auto;
  	}
  	
    #main_con {
    overflow-y: hidden;
    width: 85%;
    height: 770px;
    margin: auto;
}

#main_sidebar {
    height: 1100px;
}

#rest_table_area{	
	margin-top:40px;
}
</style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <div id="main_sidebar">
         <c:import url="../common/sidebar.jsp" />
    </div>
    
    <!-- End of Sidebar -->
    
    <!-- 전체 페이지 Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

                       <!-- pagetopbar -->
                
                <c:import url="../common/pageTopbar.jsp" />

                <!-- End of pageTopbar -->
        

      <div id="main_con">
        <div id="write_title"><p> 공 지 사 항 </p></div>

          <form id="write_assignment1">
		    <div id="div1" class="page mb-4">
		        <div id="container">
		              <div id="rest_table_area">
		                <table id="table1" class="table table-bordered">
		                <colgroup>
		                   <col style="width:8%;">
		                   <col style="width:*">
		                </colgroup>
		                    <tbody>
		                        <tr >
		                            <th style="text-align:center">
		                                <p>제목</p>
		                            </th>
		                            <td style="font-weight:bold;">
		                               <p>${noticeDetail.nTitle }</p>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td style="text-align:center; font-weight:bold; height:300px;">
		                                <p>내용</p>
		                            </td>
		                            <td>
		                               <div><p>${n.nContent }</p></div>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td style="text-align:center; font-weight:bold;">
		                                <p>첨부파일</p>
		                            </td>
		                            <td >
		                           <c:if test="${ !empty n.originalFileName }">
		                              <a href="${contextPath }/resources/uploadFiles/${n.renameFileName}" 
		                              download="${n.originalFileName }"> ${ n.originalFileName }</a>
		                           </c:if>
		                            </td>
		                        </tr>
		                    </tbody>
		                </table>
		              </div>               
		            </div>
		          </div>
              </form>


          </div>
          <!-- end of main content -->

             <!-- Footer -->
             <c:import url="../common/footer.jsp"/> 
            <!-- End of Footer -->
       

      </div>


    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->   




   <!-- Scroll to Top Button-->
   <a class="scroll-to-top rounded" href="#page-top"> <i
      class="fas fa-angle-up"></i>
   </a>

   <!-- Logout Modal-->
   <c:import url="../common/logoutModal.jsp" />

   <!-- Bootstrap core JavaScript-->
   <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
   <script
      src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Core plugin JavaScript-->
   <script
      src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

   <!-- Custom scripts for all pages-->
   <script src="${contextPath}/resources/js/sb-admin-2.min.js"></script>

   <!-- Page level plugins -->
   <script
      src="${contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
   <script
      src="${contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

   <!-- Page level custom scripts -->
   <script src="${contextPath}/resources/js/demo/datatables-demo.js"></script>

</body>

</html>