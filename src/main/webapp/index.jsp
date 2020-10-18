<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link ref="shortcut icon" type="image/x-icon" href="resources/images/sitelogo.png"/>
<style>
	*{
		box-sizing:board-box;
	}
	 
	 .video-film {
		box-shadow: rgba(0, 7, 15, 0.7) 0 0 0 9999px;
		z-index: 100;
	}
	
	.video-background {
		background: #000;
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		z-index: -99;
	}
	
	.video-foreground, .video-background iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		pointer-events: none;
	}

	@media ( min-aspect-ratio : 16/9) {
		.video-foreground {
			height: 300%;
			top: -100%;
		}
	}
	
	@media ( max-aspect-ratio : 16/9) {
		.video-foreground {
			width: 300%;
			left: -100%;
		}
	}
	
	h1 {
		color: white;
	}
	
	#visual-btn {
		z-index: 50;
		color: #fff;
		font-size: 20px;
		border: 2px solid #fff;
		padding: 12px 24px;
		border-radius: 5px;
		cursor: pointer;
		background-color: rgba(0, 0, 0, 0);
	}
	
	#visual-btn:hover {
		color: #ff6868;
		font-size: 20px;
		border: 2px solid #ff6868;
		padding: 12px 24px;
		border-radius: 5px;
		cursor: pointer;
	}
	
	#indexBtn {
		position: fixed;
		text-align: center
	}
	
	.center {
		position: absolute;
		top: 60%;
		left: 47%;
		margin: -50px 0 0 -50px;
	}
</style>
</head>
<body>
<h1 style="text-align:center; color:#fff">
		<img src="resources/images/sitelogo.png" style="height:50%; width:50%;"/>
	</h1>
	
	<p class="type_text" style="text-align:center; color:#d5d4f7; font-size:18pt"></p>
	
	<div id="indexBtn" class="center">
		<button id="visual-btn" onclick="javascript:location.href='home.do';">Visit our Site!</button>
	</div>
	
	<div class="video-background">
		<div class="video-foreground">
			<div id="muteYouTubeVideoPlayer"></div>
		</div>
	</div>
	
	<div class="video-film"></div>
	
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script async src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
		var player;
		
		function onYouTubePlayerAPIReady(){
			player = new YT.Player('muteYouTubeVideoPlayer', {
				videoId : 'Fk9EBOOAYiU',
				playerVars : {
					autoplay : 1, 		// Auto-play the video on load
					controls : 0, 		// Show pause/play buttons in player
					rel : 0,
					start : 105,
					end : 301,
					showinfo : 0,
					showinfo : 0, 		// Hide the video title
					modestbranding : 1, // Hide the Youtube Logo
					loop : 1, 			// Run the video in a loop
					playlist : 'Fk9EBOOAYiU',
					fs : 0, 			// Hide the full screen button
					cc_load_policy : 0, // Hide closed captions
					iv_load_policy : 3, // Hide the Video Annotations
					autohide : 1		// Hide video controls when playing
				},
				events:{
					onReady:function(e){
						e.target.mute();
					}
				}
			});
		}
	</script>
	
	<script type="text/javascript" src="resources/js/typeit.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var str1 = ["본 사이트는 KH 정보교육원", "수강생들을 위한 사이트로", "Spring 교육을 위한 사이트입니다."];
			var str2 = ["누구나 할 수 있는<br>_Spring Framework와<br>_쉬운 웹 개발 노하우<br>_지금 바로 함께 하세요!!"];
			var str3 = ["Hey, you!!<br>_Don't be hesitate,<br>_Right Now Start!!"];
			
			$('.type_text').typeIt({
				strings:str1,
				html:true,
				autoStart:true,
				loop:true,
				typeSpeed:100
			})
			.tiPause(1500)
			.tiDelete(130)
			.tiType(str2)
			.tiPause(1700)
			.tiDelete(130)
			.tiType(str3)
			.tiPause(1700)
			.tiEmpty(); 
		});
	</script>
</body>
</html>