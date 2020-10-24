// 인쇄하기
function open_page(url) {
    newPage=window.open(url);
}


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



// $(function(){
//     $('.line').bind('click',function(){
//         $(this).unbind('mouseenter').unbind('mouseleave')
//         .css({
//             'background' : '#E4E4E4'
//         });
//     });
// });
