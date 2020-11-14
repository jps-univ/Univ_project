<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/css/notice_detail.css">
    <title>진포상대학교</title>
</head>
<body>
<div class="content">
        <div class="header">
            <table class="table">
              <thead id="table1">
                <div>
                  <hr style="border: solid; color: #E6EDF2; margin-bottom: 14px;">
                </div>
                <tr>
                  <th style="font-size: 17pt;"><b>${board.bTitle}</b></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                      <span>작성자 | ${board.stdName}</span>
                  </td>
                  <td>
                      <span>조회수 | ${board.bCount}</span>
                  </td>
                  <td>
                      <span>날짜 | ${board.bDate} </span>
                  </td>
                </tr>
              </tbody>
            </table>
            <div style="margin-top: -20px;">
              <hr>
            </div>
          </div>

          <!-- 게시글 내용 영역 -->
          <div class="contents">${board.bContents}</div>
    </div>
</body>
</html>