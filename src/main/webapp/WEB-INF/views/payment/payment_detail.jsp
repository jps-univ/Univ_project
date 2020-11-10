<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>진포상대 | 등록금납부조회상세</title>
  <!-- Custom fonts for this template-->
  <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
  <link href="<%=request.getContextPath()%>/resources/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin.min.css" rel="stylesheet"> 
  <link href="<%=request.getContextPath()%>/resources/css/payment_detail_1.css" rel="stylesheet"> 
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>

<body>

    <div class="wrapper">
        <form method="GET">
            <table>

                     <tr id="tr_1">
                        <td colspan="6">
                           <b>등록금 납부 확인서</b>
                        </td>
                    </tr>

                    <c:forEach var="p" items="${ list }">
                    <tr id="tr_2">
                        <td>성명</td>
                        <td colspan="2" style="height: 35px;">${ p.stdName }</td>
                        <td>생년월일</td>
                        <td>${ p.stdBirth }</td>
                    </tr>
                    <tr id="tr_2">
                        <td>학과</td>
                        <td colspan="2" style="width: 210px; height: 35px;">${ p.stdCollege }</td>
                        <td>납부일</td>
                        <td colspan="2">${ p.dueDate }</td>
                    </tr>
                    <tr id="tr_2">
                        <td>학번</td>
                        <td>${ p.stdId }</td>
                        <td>주소</td>
                        <td colspan="3" style="width: 300px;">${ p.stdAddress }</td>
                    </tr>

                    <tr id="tr_3">
                        <td colspan="6">등록금 납입 내역</td>
                    </tr>
   
                    
                <tbody>
                    <tr>
                        <td colspan="3"&nbsp;>&nbsp;입학금</td>
                        <td colspan="3" style="text-align: right">${ p.entranceFee }&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;수업료</td>
                        <td colspan="3" style="text-align: right">${ p.schoolFee }&nbsp;</td>
                    </tr>
                    <tr>
                        <td  rowspan="4" style="text-align: center;">장학금감면액</td>
                    </tr>

                    <tr>
                        <td colspan="2" style="text-align: center">교내장학금</td>
                        <td colspan="3" style="text-align: right">${ p.campusScholarship }&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">교외장학금</td>
                        <td colspan="3" style="text-align: right">${ p.suburbanScholartship }&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">국가장학금</td>
                        <td colspan="3" style="text-align: right">${ p.nationalScholarship }&nbsp;</td>
                    </tr>

                    <tr>
                        <td colspan="3">&nbsp;논문지도비</td>
                        <td colspan="3" style="text-align: right">${ p.paperGuidanceFee }&nbsp;</td>

                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;학생회비</td>
                        <td colspan="3" style="text-align: right">${ p.studentFees }&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;동문회비</td>
                        <td colspan="3" style="text-align: right">${ p.alumniFee }&nbsp;</td>
                    </tr>
                    <tr style="font-size: 18px; height: 40px;">
                        <td colspan="3">납부총액</td>
                        <td colspan="3" style="border-left: hidden;text-align: right">${ p.totalPayments }</td>
                    </tr>
                </tbody>

                <tbody>
                    <tr style="height: 340px;">
                        <td colspan="6">
                           <span id="span_1">위와 같이 납부하였음을 확인함.</span>

                            <br>
                            <br>
                            <br>

                            <span id="span_2">${ p.makePaymentDate }</span>
                            
                            

                            <span id="span_3">
                            <i class="fab fa-linkedin"></i>
                            </span>

                            <span id="span_4">진포상대학교 총무처장</span>
                        </td>
                    </tr>
                </tbody>

                    <tr>
                        <td colspan="6">
                            ※ 유의사항<br>
                            1. 본 확인서는 발급일 현재 유효합니다.<br>
                            2. 본 확인서는 등록금 납부 당시의 납부액을 확인하는 문서로,<br>
                               &nbsp;&nbsp;&nbsp;등록금 납부일 이후 의 내용(예 : 사후 지급 장학금 반영 등)은 포함되지 않습니다.<br>
                            3. 본 확인서는 연말정산 용도로 사용할 수 없습니다.
                            
                        </td>
                    </tr>
                    </c:forEach>

            </table>
            
        </form>  
    </div>


</body>
</html>