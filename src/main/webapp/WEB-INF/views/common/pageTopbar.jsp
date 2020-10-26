<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<!-- pageTopbar -->
	<div class="top_bar">
		<table class="professor_info">
			<tbody>
				<tr>
					<td><div id="professor_icon">
							<img src="../img/KakaoTalk_20201013_225142652.jpg" width="100px" />
						</div></td>
					<td><div id="semi_title">유승제 교수</div></td>
					<td><div id="semi_notice">공지사항</div></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- End of Topbar -->


	<!-- secondnavibar -->
	<div class="sec_navi">
		<ul id="sec_navibar">
			<li class="drop"><a href="boardMain.do">home</a></li>
			<li class="drop"><a href="#">강의 정보</a></li>
			<ul id="drop_submenu">
				<li><a href="classPlan.do">강의 계획서</a></li>
				<li><a href="noticeList.do">공지 사항</a></li>
			</ul>
			<li class="drop"><a href="#">학습 활동</a></li>
			<ul id="drop_submenu">
				<li><a href="assignmentList.do">과제제출</a></li>
			</ul>
			<li class="drop"><a href="#">성적 관리</a></li>
			<ul id="drop_submenu">
				<li><a href="#">성적 이의 신청</a></li>
			</ul>
		</ul>
	</div>

</body>
</html>
