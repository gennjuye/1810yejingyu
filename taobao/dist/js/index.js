//  -------------创建商品列表
//define(['config'],function(){
//	require(['jquery'],function(){
	//动态创建商品列表
		(function($){
			$(function(){
				$('.indexvip').html('欢迎　'+ localStorage.getItem('cookiename') +'　登录');
				$.ajax({
					url:'http://10.31.162.49/php/post.php',
					dataType:'json',
				}).done(function(data){
					//console.log(data);
					var $str=''; 
					$(data).each(function(index,value) {
						$str +=`	<li>
								<a href="details.html?sid=${value.sid}" >
								<img data-original="${value.url}" alt="" sid="${value.sid}"/>
								<p>${value.titile}</p>
								<span>￥  ${value.price}</span></a>
						</li>`;
					});
					$('.content4-list').html($str);
					$('.content5-list').html($str);
					//-----------------------------懒加载
					var img = $(".content4,.content5").find('img');
					$.each(img,function(index,value){
						$(value).addClass('lazy');
						$(value).css({"width":"200px","height":"200px"})
					})
					$("img.lazy").lazyload({
						effect: "fadeIn"
					});
					$('.content4-list').find('li').hover(function(){
						$(this).css({'border-color':'#f40'})
					},function(){
						$(this).css({'border-color':'#ddd'})
					});
					var div = document.createElement('div');
					$(div).css({'background':'#f50','width':'228px','height':'80px','position':'absolute','bottom':'0px','left':'0px','display':'none'})
					$('.content5-list').find('li').append(div);
					$('.content5-list').find('li').hover(function(){
						$(this).find('div').css({'display':'block'});
						$(this).css({'border-color':'#f40'})
					},function(){
						$(this).css({'border-color':'#ddd'});
						$(this).find('div').css({'display':'none'});
					});
				})
			});
			
		})(jQuery);
		
		//---------------顶部悬浮---------------楼梯效果
		(function($){
			
			$(function(){
				$('.navbot a').hover(function(){
					$(this).find('span').show();
				},function(){
					$(this).find('span').hide();
				})
				$('#side a').on('click',function(){
					if($(this).index()==1){
						$(window).scrollTop(0);
					}else if($(this).index()==2){
						$(window).scrollTop(770);
					}else if($(this).index()==3){
						$(window).scrollTop(1400);
					}else if($(this).index()==4){
						$(window).scrollTop(1840);
					}
				})
				$(window).scroll(function(){
					//console.log($(window).scrollTop());
					if($(window).scrollTop()>=125){
						$('#search').stop().animate({
							top:0
						},100)
					}else{
						$('#search').stop().animate({
							top:-66,
						},100)
					};
					if($(window).scrollTop()<770){
						$('#side a:nth-of-type(1)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
						var A = $('#side').find('a');
						$.each(A,function(index,value){
							$(A[1]).css({'background':'#fff','color':'#f05'});
							$(A[2]).css({'background':'#fff','color':'#8d7afb'});
							$(A[3]).css({'background':'#fff','color':'#A8C001'});
							$(A[4]).css({'background':'#fff','color':'#F40'});
						})
					}
					 if($(window).scrollTop()>=770){
						$('#side a:nth-of-type(1)').css({'background':'#fff','color':'#f40'});
						$('#side a:nth-of-type(2)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
						var A = $('#side').find('a');
						$.each(A,function(index,value){
							$(A[0]).css({'background':'#fff','color':'#f40'});
							$(A[2]).css({'background':'#fff','color':'#8d7afb'});
							$(A[3]).css({'background':'#fff','color':'#A8C001'});
							$(A[4]).css({'background':'#fff','color':'#F40'});
						})
						
					 }
					 if($(window).scrollTop()>=1400){
					 	$('#side a:nth-of-type(2)').css({'background':'#fff','color':'#f40'});
						$('#side a:nth-of-type(3)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
					 	var A = $('#side').find('a');
						$.each(A,function(index,value){
							$(A[0]).css({'background':'#fff','color':'#f40'});
							$(A[1]).css({'background':'#fff','color':'#f05'});
							$(A[3]).css({'background':'#fff','color':'#A8C001'});
							$(A[4]).css({'background':'#fff','color':'#F40'});
						})
						
					 }
					 if($(window).scrollTop()>=1840){
					 	$('#side a:nth-of-type(3)').css({'background':'#fff','color':'#f40'});
						$('#side a:nth-of-type(4)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
					 	var A = $('#side').find('a');
						$.each(A,function(index,value){
							$(A[0]).css({'background':'#fff','color':'#f40'});
							$(A[1]).css({'background':'#fff','color':'#f05'});
							$(A[2]).css({'background':'#fff','color':'#8d7afb'});
							$(A[4]).css({'background':'#fff','color':'#F40'});
						})
					 }
					 if($(window).scrollTop()>=2840){
					 	$('#side a:nth-of-type(4)').css({'background':'#fff','color':'#f40'});
						$('#side a:nth-of-type(5)').css({'background-image':'linear-gradient(135deg,#ff971b,#ff5000)','color':'#fff'});
					 	var A = $('#side').find('a');
						$.each(A,function(index,value){
							$(A[0]).css({'background':'#fff','color':'#f40'});
							$(A[1]).css({'background':'#fff','color':'#f05'});
							$(A[2]).css({'background':'#fff','color':'#8d7afb'});
							$(A[3]).css({'background':'#fff','color':'#A8C001'});
						})
					 }
				});
				
			});
			
		})(jQuery);
	//-------------------轮播图
	(function($){
		$(function(){
			var $aLi=$('.lubo-top ol li');
			var $img = $('.lubo-img img');
			var firstimg = $($img[0]).clone(true);
			var lastimg = $($img[($img.length-1)]).clone(true);
			var $num=0;
			var $bstop=true;
			var liwidth=$($img[0]).outerWidth();
			$('.lubo-img').append(firstimg);
			$('.lubo-img').prepend(lastimg);
			$img = $('.lubo-img img');
			var width = liwidth*$img.length;
			var timer = null;
			$('.lubo-img').css({"width": width});
			$('.lubo-img').css({"left":"-520px"});
			$($aLi[0]).css({"background":"#f40"});
			timer = setInterval(function(){
				$('.lubo-right').click();
			},3000)
			$('.lubo-top').hover(function(){
				$('.lubo-left,.lubo-right').show();
				clearInterval(timer);
			},function(){
				timer = setInterval(function(){
					$('.lubo-right').click();
				},3000)
				$('.lubo-left,.lubo-right').hide();
			})
			$aLi.on('click',function(){
				$num=$(this).index();
				$(this).css({"background":"#f40"}).siblings('li').css({"background":"#fff"});
				tabswitch();
			})
			$('.lubo-right').on('click',function(){
				if($bstop){
					$bstop=false;
					$num++;
					if($num>$aLi.size()-1){
						$aLi.eq(0).css({"background":"#f40"}).siblings('li').css({"background":"#fff"});
					}
					tabswitch();
				}
			});
			$('.lubo-left').on('click',function(){
				$num--;
				tabswitch();
			});
			function tabswitch(){
				$aLi.eq($num).css({"background":"#f40"}).siblings('li').css({"background":"#fff"});
				$('.lubo-img').animate({
					left:-liwidth*($num+1)
				},100,function(){
					if(parseInt($('.lubo-img').css('left'))==-liwidth*($aLi.size()+1)){
						$('.lubo-img').css('left',-liwidth+'px');
						$num=0;
					}
					if(parseInt($('.lubo-img').css('left'))==0){
						$('.lubo-img').css('left',-liwidth*$aLi.size()+'px');
						$num=$aLi.size()-1;
					}
					$bstop=true;
				});
			}
		});
	})(jQuery);
	(function($){
		$(function(){
			var li=$('.lubo-in-img ul').find('li');
			var liwidth=$(li[0]).outerWidth();
			var $num=0;
			var $bstop=true;
			var firstdiv=$(li[0]).clone(true);
			var lastdiv=$(li[(li.length-1)]).clone(true);
			var timer = null;
			$('#ul').css('left','-520px')
			$('.lubo-in-img ul').append(firstdiv);
			$('.lubo-in-img ul').prepend(lastdiv);
			li=$('.lubo-in-img').find('li');
			//console.log(liwidth);
			$('.lubo-in-img ul').css({"width":li.length*liwidth +'px'})
			timer=setInterval(function(){
				$('.lubo-in-right').click();
			},3000)
			$('.lubo-in-img').hover(function(){
				$('.lubo-in-left,.lubo-in-right').show();
				clearInterval(timer);
			},function(){
				$('.lubo-in-left,.lubo-in-right').hide();
				timer=setInterval(function(){
					$('.lubo-in-right').click();
				},3000)
			})
			$('.lubo-in-right').on('click',function(){
				if($bstop){
					$bstop=false;
					$num++;
					$('#ul').animate({left:-liwidth*($num+1)},100,function(){
						if(parseInt($('#ul').css('left'))==-liwidth*(li.length-1)){
							$('#ul').css('left',-liwidth+'px');
							$num=0;
						}
						if(parseInt($('#ul').css('left'))==0){
							$('#ul').css('left',-liwidth*li.size()+'px');
							$num=li.size()-1;
						}
						$bstop=true;
					})
				}
			})
			$('.lubo-in-left').on('click',function(){
					$num--;
					$('#ul').animate({left:-liwidth*($num+1)},100,function(){
						if(parseInt($('#ul').css('left'))==0){
							$('#ul').css('left',-liwidth*(li.length-2)+'px');
							$num=li.length-3;
						}
					})
			})
		})
	})(jQuery);
	(function($){
		$(function(){
			var ul=$('.cbot-right ul');
			var timer = null;
			var li = $('.cbot-right ul li');
			var liheight=$(li[0]).outerHeight();
			var num = 0;
			timer=setInterval(function(){
				num++
				if(num==3){
					num=0;
				}
				ul.animate({'top':-num*liheight +'px'})
			},5000)
		})
	})(jQuery);
	
	
	
	
	
//-----------------------tab 切换
(function($){
	$(function(){
		var aLi=$('.cr-3 ul li a');
		var tab=$('.tab1');
		$(aLi[0]).css({"border-color":"#f40"});
		
			aLi.hover(function(){
					$(this).parents('ul').find('a').css({"border-color":"#fff"});
					$(this).css({
						'color':'#f40',
						'border-color':'#f40'
					})
					tab.eq($(this).index('.cr-3 ul li a')).show().siblings('div').hide();
			},function(){
				$(this).css({
					'color':'#3c3c3c',
					'border-color':'#f40'
				})
			})
	})
})(jQuery);
(function($){
	$(function(){
		var aLi=$('.li');
		var div=$('.ul div').not('.chongzhi');
		aLi.on('mouseover',function(){
			$(this).css({
				'border':'1px solid #f40',
				'border-bottom':'2px solid #fff',
				'z-index':'2'
			}).siblings('li').css({
				'border':'1px solid #ccc',
				'z-index':'0'
			});
			div.eq($(this).index('.li')).css({
				'border-color':'#f40'
			}).show().siblings('div').css({
				'border-color':'#fff'
			}).hide();
		})
		$('.conve-bd-box-close').on('click',function(){
			$(this).parents('.ph').css({
				'display':'none'
			})
			$.each(aLi,function(index,value){
				$(value).css({
					'border-color':'#ccc'
				})
			})
		})
	})
})(jQuery);
(function($){
	$(function(){
		$('.phone a').on('mouseover',function(){
			$(this).css({
				"color":"#f40"
			}).siblings('.phone a').css({"color":"#3c3c3c"})
			$('.chongzhi').eq($(this).index()).show().siblings('div').hide();
		})
	})
})(jQuery);
//-----------------------------------导航
(function($){
	$(function(){
		
		$('.content2').find('img').hover(function(){
			$(this).parents('li').find('h4').css({'color':'#f40'});
			$(this).css({'opacity':'0.5'})
		},function(){
			$(this).parents('li').find('h4').css({'color':'#3c3c3c'});
			$(this).css({'opacity':'1'})
		});
		$('.cleft').find('a').hover(function(){
			$(this).css({"text-decoration":"underline"})
		},function(){
			$(this).css({"text-decoration":"none"})
		});
		$('.cleft p').on('mouseover',function(){
			$(this).css({
				"background":"#ffe4dc",
				"color":"#f40"
			}).siblings('p').css({
				"background":"#fff",
				"color":"#3c3c3c"
			})
			$(this).find('a').css({
				"color":"#f40"
			});
			$('.indexnav').show()
		});
		$('.cleft p').on('mouseout',function(){
			$(this).css({
				"background":"#fff",
				"color":"#3c3c3c"
			})
			$(this).find('a').css({
				"color":"#3c3c3c"
			})
			$('.indexnav').hide()
		});
	})
})(jQuery)
