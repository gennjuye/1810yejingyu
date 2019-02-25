//  -------------创建商品列表
//define(['config'],function(){
//	require(['jquery'],function(){
	//动态创建商品列表
		(function($){
			$(function(){
				$.ajax({
					url:'http://10.31.162.49/php/post.php',
					dataType:'json',
				}).done(function(data){
					//console.log(data);
					var $str=''; 
					$(data).each(function(index,value) {
						$str +=`	<li>
								<a href="details.html?sid=${value.sid}" >
								<img src="${value.url}" alt="" sid="${value.sid}"/>
								<p>${value.titile}</p>
								<span> $ ${value.price}</span></a>
						</li>`;
					});
					$('.content4-list').html($str);
				})
			});
			
		})(jQuery);
		
		//---------------顶部悬浮
		(function($){
			$(function(){
				$(window).scroll(function(){
					console.log($(window).scrollTop());
					if($(window).scrollTop()>=125){
						$('#search').stop().animate({
							top:0
						},100)
					}else{
						$('#search').stop().animate({
							top:-66,
						},100)
					};
					 if($(window).scrollTop()>=770){
						$('#side a:nth-of-type(1)').css({'background':'#fff','color':'#f40'});
						$('#side a:nth-of-type(2)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
					}
					
				});
				
			});
			
		})(jQuery);
		//---------------楼梯效果
//		(function($){
//			$(function(){
//				
//			})
//		})(jQuery);


