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
  <title>진포상대 | 월급명세서상세</title>
  <!-- Custom fonts for this template-->
  <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
  <link href="<%=request.getContextPath()%>/resources/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin.min.css" rel="stylesheet"> 
  <link href="<%=request.getContextPath()%>/resources/css/salary_detail_1.css" rel="stylesheet"> 
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>

<body>

     <div class="wrapper">
        <form method="GET">
            <table>

                    <tr id="tr_1">
                        <th colspan="6">
                            급여 지급 명세서
                        </th>
                    </tr>

                    <tr id="tr_2">
                        <td>성명</td>
                        <td colspan="2">최희진</td>
                        <td>교번</td>
                        <td colspan="2">201257082</td>
                    </tr>
                    <tr id="tr_2">
                        <td>소속</td>
                        <td colspan="2">진포상대학교</td>
                        <td>생년월일</td>
                        <td colspan="2">19930802</td>
                    </tr>
                    <tr id="tr_2">
                        <td>지급은행</td>
                        <td>기업은행</td>
                        <td>지급계좌</td>
                        <td>990-009078-02-010</td>
                        <td>지급일</td>
                        <td>2020.10</td>
                    </tr>


                    <tr id="tr_3">
                        <td colspan="3">지급 내역</td>
                        <td colspan="3">공제 내역</td>
                    </tr>
   

                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;기본급여</td>
                        <td colspan="2" style="text-align: right">9,000,000&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;소득세</td>
                        <td colspan="2" style="text-align: right">700,000&nbsp;</td>
                    </tr>
                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;시간외수당</td>
                        <td colspan="2" style="text-align: right">1,000,000&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;기본소득세</td>
                        <td colspan="2" style="text-align: right">330,000&nbsp;</td>
                    </tr>
                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;상여금</td>
                        <td colspan="2" style="text-align: right">0&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;국민연금</td>
                        <td colspan="2" style="text-align: right">200,000&nbsp;</td>
                    </tr>
                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;성과급</td>
                        <td colspan="2" style="text-align: right">500,000&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;건강보험</td>
                        <td colspan="2" style="text-align: right">300,000&nbsp;</td>
                    </tr>
                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;식대</td>
                        <td colspan="2" style="text-align: right">1,000,000&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;장기요양보험</td>
                        <td colspan="2" style="text-align: right">200,000&nbsp;</td>
                    </tr>
                    <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;교육지원</td>
                        <td colspan="2" style="text-align: right">0&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;고용보험</td>
                        <td colspan="2" style="text-align: right">0&nbsp;</td>
                        
                    </tr>
                    <!-- <tr id="tr_4">
                        <td style="border-right: hidden;">&nbsp;</td>
                        <td style="text-align: right">&nbsp;</td>
                        <td style="border-right: hidden;">&nbsp;기타</td>
                        <td style="text-align: right">0&nbsp;</td>
                    </tr> -->

                    <tr style="font-size: 18px; height: 40px;">
                        <td colspan="3">급여총액</td>
                        <td colspan="3" style="border-left: hidden; text-align: right">9,777,000</td>
                    </tr>



                <tbody>
                    <tr style="height: 440px;">
                        <td colspan="6">
                            <span id="span_1">위와 같이 지급받았음을 확인함.</span>

                            <br>
                            <br>
                            <br>

                            <span id="span_2">2020년 10월 3일</span>
                        
                            <sapn id="span_3">
                                <i class="fab fa-linkedin"></i>
                            </sapn>

                            <span id="span_4">진포상대학교 총무처장</span>
                        </td>
                    </tr>
                </tbody>    
                    <tr>
                        <td colspan="6">
                            ※ 유의사항<br>  
                            1. 급여 산정기간은 매월 16일부터 익월 15일입니다.<br>
                            2. 문의사항은 종합서비스센터(010-5132-4190)로 연락바랍니다.
                        </td>
                    </tr>
                

            </table>
        </form>  
    </div>


</body>
</html>