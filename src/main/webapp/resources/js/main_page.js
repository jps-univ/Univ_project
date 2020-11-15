$(function(){
	
    $(".nav-tabs li").click(function(){
        $(this).attr("class","active");
        $(this).siblings('li').attr("class","");
    });
    
    $('#qnaBtn').click(function(){
        $("#writeBtn").show();
        $(".pagination").show();
    });

    $('#faqBtn').click(function(){
        $('#writeBtn').hide();
        $('.pagination').hide();
    });

    $('#noticeBtn').click(function(){
        $('#writeBtn').hide();
        $('.pagination').show();
    });
    
    $("#noticeBtn, #qnaBtn").click(function() {
    	var mode = $(this).data("mode");
    	$("#searhKind").val(mode);
    	getList(1, mode);
    });
    
    $("#qnaRegistBtn").click(function() {
    	registQna();
    });
    
    $("#searhKind").val("Q");
	getList(1,"Q");
	
	//시간표 제외영억
	$("#timetable link").remove();
	$("#timetable meta").remove();
	$("#timetable script").remove();
	$("#timetable").css("overflow","auto");
	$("#timetable #accordionSidebar").remove();
	$("#timetable .top").remove();
	$("#timetable #year").parent().remove();
	$("#timetable nav").remove();
	$("#timetable footer").remove();
	$("#timetable .container-fluid").children('br:first').remove();
	
	
    
});

function noticePop(pageNum){
    window.open("/univ/noticeDetail.do?boardId=" + pageNum,"","width=900, height=880");

}

function getList(currentPage, searchKind) {
	
	var params = {
			mode : searchKind ,
			currentPage : currentPage
	}
	
	$.ajax({
		url:"boardList.do",
		type:"post",
		data:JSON.stringify(params),
		contentType:"application/json",
		success:function(data) {
			setPageing(data.pi);
			setList(data.boardList);
		},
		error:function() {
			
		}
	});
}


function setPageing(pageInfo) {
	
	var $pagination = $(".pagination");
	$pagination.empty();
	
	var currentPage = pageInfo.currentPage;
	var startPage = pageInfo.startPage;
	var endPage = pageInfo.endPage;
	var limit = pageInfo.limit;
	var maxPage = pageInfo.maxPage;
	var searchCondition = $("#searhKind").val();
	
		$pagination.append($("<li>").append($("<a>").text("<<")).css("cursor","pointer").click(function(){	
			setList(1,searchCondition);
		}));
	   	   
		if(currentPage <= 1) { 
			$pagination.append($("<li>").append($("<a>").text("<")).attr("disabled",true).css("cursor","pointer"));
		}else{ 
			$pagination.append($("<li>").append($("<a>").text("<")).css("cursor","pointer").click(function(){
				getList(currentPage - 1,searchCondition);
			}));
		 } 
		 for(var p= startPage; p <= endPage; p++){
			if(p == currentPage){
			$pagination.append($("<li>").append($("<a>").text(p)).attr("disabled",true));
		 }else{ 
			$pagination.append($("<li>").append($("<a>").text(p)).css("cursor","pointer").click(function(){
				getList($(this).children().text(),searchCondition);
			}));
		 }
			
		 } 
		 if(currentPage >= maxPage){ 
			 $pagination.append($("<li>").append($("<a>").text(">")).attr("disabled",true).css("cursor","pointer"));					
		 }else {
			 $pagination.append($("<li>").append($("<a>").text(">")).css("cursor","pointer").click(function(){
				 getList(currentPage + 1,searchCondition);
			 }));
		 } 
		 	$pagination.append($("<li>").append($("<a>").text(">>")).css("cursor","pointer").click(function(){
		 		getList(endPage,searchCondition);
	 	}));
		 	
}

function setList(boardList) {
	var mode = $("#searhKind").val();
	
	var $elm;
	switch(mode) {
	case "Q" : $elm = $("#qaa ul"); break;
	case "N" : $elm = $("#notice ul"); break;
	}
	
	
//	<li>
//    <a href="#" onclick="noticePop(${b.boardId});">${ b.bTitle }</a>
//    <span class="date">${ b.bDate }</span>
//	</li>
	$elm.empty();
	
	boardList.forEach(function(item,index){
		var $li = $("<li>");
		var $a = $("<a>").text(item.bTitle).attr("id",item.boardId).on('click',function() {
			noticePop($(this).attr("id"));
		});
		var $span = $("<span>").attr("class","date").text(setDate(item.bDate));
		$li.append($a).append($span);
		
		$elm.append($li);
	})
	
}

function setDate(dateTime) {
	var date = new Date(dateTime);
	
	return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
}

function registQna() {
	var qnaTitle = $("#qnaTitle").val();
	var qnaContent = $("#qnaContent").val();
	
	if(qnaTitle != "" && qnaContent != "") {
	var params = {
			bTitle : qnaTitle ,
			bContents : qnaContent,
			bType : "Q"
	}
	
		$.ajax({
			url:"registQna.do",
			type:"post",
			data:JSON.stringify(params),
			contentType:"application/json",
			success:function(data) {
				$("#qnaTitle").val("");
				$("#qnaContent").val("");
				$("#searhKind").val("Q");
				getList(1,"Q");
			},
			error:function(error) {
				console.log(error);
			}
		});
	} else {
		alert("내용을 입력하세요.");
	}
	
}