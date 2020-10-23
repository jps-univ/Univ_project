<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>진포상대 | 등록금납부조회</title>
  <!-- Custom fonts for this template-->
  <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
  <link href="<%=request.getContextPath()%>/resources/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin.min.css" rel="stylesheet"> 
  <link href="<%=request.getContextPath()%>/resources/css/payment_detail.css" rel="stylesheet"> 
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

                    <tr id="tr_2">
                        <td>성명</td>
                        <td colspan="3" style="height: 40px;">최희진</td>
                        <td>분기</td>
                        <td>2020/2</td>
                    </tr>
                    <tr id="tr_2">
                        <td>학과</td>
                        <td style="width: 210px;">관광경영전공</td>
                        <td>생년월일</td>
                        <td>19930802</td>
                        <td>납부일</td>
                        <td>2020.08.24</td>
                    </tr>
                    <tr id="tr_2">
                        <td>학번</td>
                        <td>201257082</td>
                        <td>주소</td>
                        <td colspan="3" style="width: 545px;">경기도 화성시 동탄순환대로21길 53, 1301-1602</td>
                    </tr>

                    <tr id="tr_3">
                        <td colspan="6">등록금 납입 내역</td>
                    </tr>
   
                    
                <tbody>
                    <tr>
                        <td colspan="3"&nbsp;>&nbsp;입학금</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;수업료</td>
                        <td colspan="3" style="text-align: right">3,300,000&nbsp;</td>
                    </tr>
                    <tr>
                        <td  rowspan="4" style="text-align: center;">장학금감면액</td>
                    </tr>

                    <tr>
                        <td colspan="2" style="text-align: center">교내장학금</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">교외장학금</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">국가장학금</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>

                    <tr>
                        <td colspan="3">&nbsp;논문지도비</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>

                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;학생회비</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;동문회비</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;후배사랑장학금</td>
                        <td colspan="3" style="text-align: right">0&nbsp;</td>
                    </tr>

                    <tr style="font-size: 18px; height: 40px;">
                        <td colspan="3">납부총액</td>
                        <td colspan="3" style="border-left: hidden;text-align: right">3,300,000</td>
                    </tr>
                </tbody>

                <tbody>
                    <tr style="height: 340px;">
                        <td colspan="6">
                           <span id="span_1">위와 같이 납부하였음을 확인함.</span>

                            <br>
                            <br>
                            <br>

                            <span id="span_2">2020년 10월 3일</span>

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


            </table>
        </form>  
    </div>


</body>
</html>