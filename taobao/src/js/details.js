
define(['config'], function() {
	require(['jquery'],function() {
		//获取数据添加入页面
		(function($) {
			$(function(){
				var $sid = location.search.substring(1).split('=')[1];
				$.ajax({
					url: 'http://10.31.162.49/taobao/php/get.php',
					data: {
						sid: $sid
					},
					dataType: 'json'
				}).done(function(data) {
					$('.img').find('img').attr('src',data.url);
					$('.imgs').find('img').attr('src',data.url);
					$('.title').html(data.titile);
					$('.aprice').html(data.price);
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
			})
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
	})
})