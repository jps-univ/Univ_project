$(function(){
    $(".nav-tabs li").click(function(){
        $(this).attr("class","active");
        $(this).siblings('li').attr("class","");
    });
});

function noticePop(elm){
    window.open("../views/notice_detail.html","","width=900, height=880");

}


