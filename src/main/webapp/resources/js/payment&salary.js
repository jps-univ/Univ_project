

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

// 인쇄하기 클릭


//$('.line').on('click', function(){
//	
//});
