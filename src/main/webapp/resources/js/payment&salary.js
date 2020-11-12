

// 한줄 선택시 색변화
$(function(){
    $('.line').hover(function(){
        // mouseenter
        $(this).addClass('reverse');
    },function(){
        // mouseleave
        $(this).removeClass('reverse');

    });
});



// 등록금 라디오버튼 선택시 페이지 넘기기
function printp() {
	
	var paymentNo = $(".checkRadio:checked").val();
	if(paymentNo == null || paymentNo == 0) {
		alert("버튼을 선택하세요.");
		return false;
	}
	
	location.href = "paymentdetail.do?paymentNo="+paymentNo;
}


// 월급 라디오버튼 선택시 페이지 넘기기
function prints() {
	
	var salaryNo = $(".checkRadio:checked").val();
	if(salaryNo == null || salaryNo == 0) {
		alert("버튼을 선택하세요.");
		return false;
	}
	
	location.href = "salarydetail.do?salaryNo="+salaryNo;
}


// 월급 년도 셀렉트박스
$(document).ready(function(){            
    var now = new Date();
    var nyear = now.getFullYear();
    
    //년도 selectbox만들기               
    for(var sy = 2019 ; sy <= nyear ; sy++) {
        $('.select').append('<option value="' + sy + '">' + sy + '년</option>');    
    }
        
    jQuery(".select > option[value="+nyear+"]").attr("selected", "true");                   
})



	
	
	
	
	
	