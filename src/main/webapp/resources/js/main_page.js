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
});

function noticePop(elm){
    window.open("/univ/noticeDetail.do","","width=900, height=880");

}


