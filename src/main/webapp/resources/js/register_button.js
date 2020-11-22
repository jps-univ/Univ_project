// 휴학신청
/*function button_leave() {
    
	if(confirm("휴학신청하시겠습니까?"))
	{
		var stdStatus = 
		var reasonsLeave = $('#select_1').val();
		var leavePeriod
		
		$.ajax({
			url:"leaveApply.do",
			data:
			success:function(result)
			{
				alert("휴학이 신청되었습니다.");
			},
		error:function()
		{
			alert("휴학이 신청되지 않았습니다.");
		}
			
		});
	
	} else{
		alert("취소되었습니다.");
	}*/
    
// 복학신청

function button_return() {
    alert("복학이 정상적으로 신청되었습니다.");
}
    
// 졸업신청

function button_graduation() {
	alert("졸업이 정상적으로 신청되었습니다.");
}