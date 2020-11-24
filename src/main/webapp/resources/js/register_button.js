//휴학신청
//function button_leave() {
//    
//	if(confirm("휴학신청하시겠습니까?"))
//	{
//		   			//학적 상태
//		var reasonsLeave = $('#select_1').val();	//휴학사유
//		var leavePeriod	 = $('#set').val();					// 휴학기간
//		
//		$.ajax({
//			url:"leaveApply.do",
//			dataType:"json",
//			data:{
//				rasonsLeave : reasonsLeave,
//				leavePeriod : leavePeriod
//		},success:function(result)
//			{
//				alert("휴학이 신청되었습니다.");
//			},
//		error:function()
//		{
//			alert("휴학이 신청되지 않았습니다.");
//		}
//			
//		});
//	
//	} else{
//		alert("취소되었습니다.");
//	}
//}
// function leave(){
//	 console.log("나오냐?");
// }
 
 
// 복학신청

//function button_return() {
//    alert("복학이 정상적으로 신청되었습니다.");
//}
    
// 졸업신청

//function button_graduation() {
//	alert("졸업이 정상적으로 신청되었습니다.");
//}