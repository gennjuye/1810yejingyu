//define(['config'], function() {
//	require(['jquery', 'details'], function() {
		//创建购物车商品列表

		$(function() {
			$('.cartvip').html(localStorage.getItem('cookiename'));
			$.ajax({
				url: "http://10.31.162.49/taobao/php/post.php",
				dataType: 'json'
			}).done(function(date) {
				$.each(date, function(index, value) {
					if(localStorage.getItem('cookiesid') && localStorage.getItem('cookienum')) {
						var s = localStorage.getItem('cookiesid').split(',');
						var n = localStorage.getItem('cookienum').split(',');
						$('.all').html(s.length);
						$('.empty').hide();
						$.each(s, function(i, val) {
							if(s[i] == value.sid) {
								var li = document.createElement('li');
								var zprice = (value.price*n[i]).toFixed(2);
								li.innerHTML = `
								<div class="box">
									<p><input type="checkbox" /><i></i><span>店铺: <a href="">英兰派旗舰店</a></span><em></em></p>
									<div class="list-in">
										<span><input type="checkbox" class="check"/></span>
										<span class="url-cart"><img src="${value.url}" alt="" sid="${value.sid}"/></span>
										<span>
											<a href="" class="title-cart">${value.titile}</a>
											<br />
											<em><img src="https://assets.alicdn.com/sys/common/icon/trade/xcard.png" alt="" /></em><em><img src="https://img.alicdn.com/tps/i3/T1Vyl6FCBlXXaSQP_X-16-16.png" alt="" /></em><em><img src="https://img.alicdn.com/tps/i4/T1BCidFrNlXXaSQP_X-16-16.png" alt="" /></em>
										</span>
										<span>
											<input type="text" value="颜色分类：宽松白四件064"/>
											<input type="text" value="尺码：XL"/>
										</span>
										<span class="pirce">
											$<i> ${value.price}</i>
										</span>
										<span >
											<input type="text" value="${n[i]}" class="num"/><i class="cart-down">-</i><i class="cart-up">+</i>
										</span>
										<span class="zpirce">
											$ <i>${zprice}</i>
										</span>
										<span >
											<a href="">移入收藏夹</a>
											<br />
											<a href="javascript:;" class="del">删除</a>
											<br />
											<a href="">相似宝贝</a>
										</span>
									</div>
								</div>
							`
								$('.bod-list').append(li);
							}
						})
					} else {
						$('.empty').show();
					}
				})
			});
		})
		//存储localstorage;
		function add(obj,$num){
			var n = localStorage.getItem('cookienum').split(',');
			var s = localStorage.getItem('cookiesid').split(',');
			var imgsid=$(obj).parents('.list-in').find('.url-cart img').attr('sid');
			$.each(s,function(i,value){
				if(s[i]==imgsid){
					n[i]=$num;
					localStorage.setItem('cookienum',n)
				}
			})
		}
		//增加减少商品数量
		;
		(function($) {
			//增加商品数量
			$('.bod-list').on('click', '.cart-up', function() {
				var $num = $(this).parents('span').find('input').val();
				var $price=Number($(this).parents('.list-in').find('.pirce i').html());
				$num++;
				if($num > 99) {
					$num = 99;
				}
				$(this).parents('span').find('input').val($num);
				$(this).parents('.list-in').find('.zpirce i').html(($num*$price).toFixed(2));
				if($(this).parents('.box').find(':checkbox').prop('checked')){
					$('.bod-total-right em').html('￥'+($num*$price).toFixed(2));
					num1();
					//$('.bod-total-right span i').html($(this).parents('span').find('input').val());
				}
				add(this,$num);
				var inputs=$(this).parents('.bod-list').find('.list-in input:checkbox');
				var c = 0;
				$.each(inputs,function(index,value){
					if($(value).prop('checked')){
						$num = $(value).parents('.list-in').find('.num').val();
						$('.bod-total-right em').html('￥'+($num*$price+c).toFixed(2));
					}
				})
				
			})
			//减少商品数量
			$('.bod-list').on('click','.cart-down', function() {
				var $num = $(this).parents('span').find('input').val();
				var $price=Number($(this).parents('.list-in').find('.pirce i').html());
				$num--;
				if($num <= 0) {
					$num = 0;
				}
				$(this).parents('span').find('input').val($num)
				$(this).parents('.list-in').find('.zpirce i').html(($num*$price).toFixed(2));
				if($(this).parents('.box').find(':checkbox').prop('checked')){
					$('.bod-total-right em').html('￥'+($num*$price).toFixed(2));
//					$('.bod-total-right span i').html($(this).parents('span').find('input').val());
					num1();
				}
				add(this,$num);
			})
			//输入改变商品数量
			$('.bod-list').on('input','.num', function() {
				var $num = $(this).val();
				var $price=Number($(this).parents('.list-in').find('.pirce i').html());
				var $reg = /^\d+$/g;
				if($reg.test($num)) {
					if($num < 0) {
						$num = 1;
					} else if($num > 99) {
						$num = 99;
					} 
				} else {
					$num = 1;
				}
				$(this).val($num);
				$(this).parents('.list-in').find('.zpirce i').html(($num*$price).toFixed(2));
				if($(this).parents('.box').find(':checkbox').prop('checked')){
					$('.bod-total-right em').html('￥'+$num*$price.toFixed(2));
					$('.bod-total-right span i').html($(this).parents('span').find('input').val());
				}
				add(this,$num);
			})
		})(jQuery);
		//全-----------------选var price = 0;
		function num1(){
					var price = 0;
					var num = 0;
					var checkbox = $('.check');
					$.each(checkbox,function(index,value){
						if($(value).prop('checked')){
							price+=parseInt($(checkbox[index]).parents('.list-in').find('.zpirce i').html());
							num+=parseInt($(checkbox[index]).parents('.list-in').find('.num').val());
							$('.bod-total-right em').html('￥'+price.toFixed(2));
							$('.bod-total-right span i').html(num);
						}
					})
				}		
		function num(obj){
					if(obj.prop('checked')){
						var a=document.querySelectorAll('.zpirce i');
						var b=$('.num');
						var price=0;
						var num=0;
						$.each(a,function(index,value){
							price+=Number($(a[index]).html());
						})
						$.each(b,function(index,value){
							num+=Number($(b[index]).val());
						})
						$('.bod-total-right em').html('￥'+price);
						$('.bod-total-right span i').html(num);
					}else{
						$('.bod-total-right em').html('￥ 0.00');
						$('.bod-total-right span i').html(0);
					}
				}
		(function(){
			$('.bod-check input').on('change',function(){//全选
				$('#bod:visible').find(':checkbox').prop('checked',$(this).prop('checked'));
				num($(this));
			})
			$('.bod-total-left input').on('change',function(){//全选
				$('#bod:visible').find(':checkbox').prop('checked',$(this).prop('checked'));
				num($(this));
			})
			$('.bod-list').on('change','input[type="checkbox"]',function(){//单选
				var s=localStorage.getItem('cookiesid').split(',').length*2;
				$(this).parents('.box').find(':checkbox').prop('checked',$(this).prop('checked'));
				num1();
				//判断是否全部选中
				var t=$(this).parents('.bod-list:visible').find('input:checked');
				if(t.length==0){
					$('.bod-total-right em').html('￥ 0.00');
					$('.bod-total-right span i').html(0);
				}
				if(s==t.length){
					$('.bod-check a input').prop('checked',true);
					$('.bod-total-left a input').prop('checked',true);
				}else{
					$('.bod-check a input').prop('checked',false);
					$('.bod-total-left a input').prop('checked',false);
				}
			})
		})();
		//点击删除商品
		;(function($){
			$('.bod-list').on('click','.del',function(){
				var n = localStorage.getItem('cookienum').split(',');
				var s = localStorage.getItem('cookiesid').split(',');
				var imgsid=obj.parents('.list-in').find('.url-cart img').attr('sid');
				$.each(s,function(i,value){
					if(s[i]==imgsid){
						s.splice(i,1);
						n.splice(i,1);
						localStorage.setItem('cookienum',n)
						localStorage.setItem('cookiesid',s)
					}
				})
				obj.parents('.box').remove();
			})
		})(jQuery);
//	})
//})
