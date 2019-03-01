//
//define(['config'], function() {
//	require(['jquery'],function() {

		//获取数据添加入页面
		(function($) {
			$(function(){
				$('.detailsvip').html(localStorage.getItem('cookiename'));
				var $sid = location.search.substring(1).split('=')[1];
				$.ajax({
					url: 'http://10.31.162.49/taobao/php/get.php',
					data: {
						sid: $sid
					},
					dataType: 'json'
				}).done(function(data) {
					var arr = (data.urls).split(',');
					$('.img').find('img').attr('src',data.url);
					$.each(arr,function(index,value){
						$($('.imgs img')[index]).attr('src',value)
					})
					$('.title').html(data.titile);
					$('.aprice').html(data.price);
					$('.bgpic img').attr('src',data.url);
					$('title').text(data.titile);
				})
				
			})
		})(jQuery);	
		//点击增加减少商品数量
		
		(function($) {
			$('.down').on('click', function() {
				var $num = $('.numinput').val();
				$num--;
				if($num <= 0) {
					$num = 0;
				}
				$('.numinput').val($num)
			});
			$('.up').on('click', function() {
				var $num = $('.numinput').val();
				$num++;
				if($num > 99) {
					$num = 99;
				}
				$('.numinput').val($num)
			})
			$('.numinput').on('input', function() {
				var $num = $('.numinput').val();
				var $reg = /^\d+$/g;
				if($reg.test($num)) {
					if($num < 0) {
						$num = 0;
					} else if($num > 99) {
						$num = 99;
					} else if($num == '') {
						$num = 0;
					}
				} else {
					$num = 0;
				}
				$('.numinput').val($num);
			})
		})(jQuery);
		//点击加入购物车添加商品
		(function($) {
			var $num=0;
			var $sid = location.search.substring(1).split('=')[1];
			var arrsid = []; //商品的sid
			var arrnum = []; //商品的数量
			function cookietoarray() {
				if(localStorage.getItem('cookiesid')&& localStorage.getItem('cookienum')) { //判断商品是第一次存还是多次存储
					arrsid = localStorage.getItem('cookiesid').split(','); //cookie商品的sid  
					arrnum = localStorage.getItem('cookienum').split(','); //cookie商品的num
				}
			}
			$('.cart').on('click', function() {
				var $num = 0;
				if(window.confirm('加入购物车成功')) {
					$num++;
					$('.numb').html($num);
					$('.img').find('img').attr('sid', $sid);
				};
				cookietoarray(); //获取已经存在的cookie值。
				if($.inArray($sid, arrsid) != -1) { //商品存在，数量叠加 
					//先取出cookie中的对应的数量值+当前添加的数量值，添加到对应的cookie中。
					var num = parseInt(arrnum[$.inArray($sid, arrsid)]) + parseInt($('.numinput').val());
					arrnum[$.inArray($sid, arrsid)] = num;
					localStorage.setItem('cookienum',arrnum.toString())
					//数组存入cookie
				} else { //不存在，第一次添加。将商品的id和数量存入数组，再存入cookie.
					arrsid.push($sid); //将当前的id存入数组
					localStorage.setItem('cookiesid',arrsid.toString())
				//数组存入cookie
					arrnum.push($('.numinput').val());
					localStorage.setItem('cookienum',arrnum.toString()) //数组存入cookie
				}
			})
		})(jQuery);
		
		//---------------------放大镜
		(function($){
			
			
			$(function(){
				//点击切换图片
				$('.imgs ul li img').on('click',function(){
					var src = $(this).attr('src');
					$('.smimg').attr('src',src);
					$('.bgpic img').attr('src',src);
				})
				//设置小放大镜的宽高
				var width =$('.bgpic').width()*$('.img').width()/$('.bgpic img').width();
				var height =$('.bgpic').height()*$('.img').width()/$('.bgpic img').height();
				$('.sf').css({
					"width":width,
					"height":height
				})
				$('.smpic').on('mouseenter',function(){
					$('.bgpic').show();
					$('.sf').css({
						"visibility":"visible"
					})
					//.attr('left',$(''))
					$(document).on('mousemove',function(e){
						var bili = $('.bgpic img').width() / $('.smpic img').width();
						var $left = e.pageX-$('.smpic').offset().left-$('.sf').width()/2;
						var $top = e.pageY-$('.smpic').offset().top-$('.sf').height()/2;
						if($left<0){
						$left=0;
						}else if($left>=$('.smpic').width()-$('.sf').width()){
							$left=$('.smpic').width()-$('.sf').width();
						}
						if($top<0){
							$top=0;
						}else if($top>=$('.smpic').height()-$('.sf').height()){
							$top=$('.smpic').height()-$('.sf').height();
						}
						$('.sf').css({"left": $left+'px','top':$top+'px'});
						$('.bgpic img').css('left',-$left*bili+'px');
						$('.bgpic img').css('top',-$top*bili+'px');
					})
				});
				$('.smpic').on('mouseleave',function(){
					$('.bgpic').hide();
					$('.sf').css({
						"visibility":"hidden"
					});
				});
				
			})
		})(jQuery);
		
		
		
		
		
//	})
//})