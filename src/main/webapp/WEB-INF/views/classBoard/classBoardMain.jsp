<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>" />
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
  <%-- <link rel="stylesheet" href="${contextPath}/resources/css/lecBoard_base.css">   --%>     
  <link rel="stylesheet" href="${contextPath}/resources/css/board_classBoardMain.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <style>
  #rest_lecture{
	margin-top: 3%;
    width: 97%;
    margin-bottom: 2%;
    }
    
#main_con {
    overflow-y: hidden;
    width: 100%;
    height: 87%;
    margin: auto;
}

   #rest_table_area {
    width: 80%;
    margin: auto;}
    
   #rest_lecture tbody tr td div {
    font-size: 10px;
    text-align: initial;
    margin-left: 5%;
} 

#main_sidebar {
    height: 2600px;
}

#content-wrapper{
    overflow-y: hidden;
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

        <!-- Topbar -->
  		  		
  	  	    <%@include file="../common/pageTopbar.jsp" %>
        
        <div id="main_con">  
          <p id="select_title">주차별 활동</p>
            <div class="mb-4">	       
              <div id="weekPlan">
           		 <div id="rest_table_area" >
                   <c:forEach var="cp" items="${ cPlan }" varStatus="status">
                    	<table id="rest_lecture"  class="shadow table-hover">
                       	 <thead>
                       	     <tr>
                       	         <th>
                       	             <div>${ status.count }주차 활동계획</div>
                       	         </th>
                       	     </tr>
                       	 </thead>
                       	 <tbody>
                       	     <tr>
                       	         <td style="height: 55px;">
                    	           <div style="height: 15px; font-size: 12px; font-weight: bold; margin-top: 1px;">${cp.topic }</div>
                	               <div style="height: 40px; margin-top: 4px; "><p>${cp.weekPlan }</p></div>
            	                 </td>
        	                  </tr>
    	                    </tbody>
  	                  </table>
                    </c:forEach>
           		 </div>
           	  </div>
          </div>
          
          
        </div>
       
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
