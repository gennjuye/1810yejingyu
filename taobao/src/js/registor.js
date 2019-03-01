;(function($){
	$(function(){
		var phone = /^1[34578]\d{9}$/;
		var reg = /^[\w_-]{6,16}$/;
		var reg1 = /^[\u4e00-\u9fa5]{4,10}$/;
		$('.formtop').find('input').on('blur',function(){
			$.ajax({
				type:"post",
				data:{
					sid:$(this).val()
				},
				url:"http://10.31.162.49/taobao/php/registor.php",
				dataType: 'json'
			}).done(function(data){
						if($('.formtop').find('input').val()==''){
							$('.formtop').find('input').siblings('em').html("请输入手机号码");
							$('.formtop').find('input').siblings('em').css({"color":"red"});
						}else{
							if(data.title==$('.formtop').find('input').val()){
								$('.formtop').find('input').siblings('em').html("此号码以注册");
								$('.formtop').find('input').siblings('em').css({"color":"red"});
							}	
							else if(phone.test($('.formtop').find('input').val())){
								$('.formtop').find('input').siblings('em').html("✔️");
							}else{
								$('.formtop').find('input').siblings('em').html("手机号码有误");
								$('.formtop').find('input').siblings('em').css({"color":"red"});
							}
						}
				})
		})
		$('.pass').on('input',function(){
			if(reg.test($(this).val())){
				if($(this).val().length<8){
					$(this).parents('p').find('em').html('密码强度弱');
					$(this).parents('p').find('em').css({"color":"red"});
				}else if($(this).val().length>10&&$(this).val().length<=14){
					$(this).parents('p').find('em').html('密码强度中')
					$(this).parents('p').find('em').css({"color":"#d9d919"});
				}else if($(this).val().length>14){
					$(this).parents('p').find('em').html('密码强度强');
					$(this).parents('p').find('em').css({"color":"#238E23"});
				}
			}
		});
		$('.pass').on('blur',function(){
			if($(this).val()==''){
				$(this).parents('p').find('em').html('密码不能为空');
				$(this).parents('p').find('em').css({"color":"red"});
			}
		});
		$('.word').on('blur',function(){
			if($(this).val()==''){
				$(this).parents('p').find('em').html('请确认密码');
				$(this).parents('p').find('em').css({"color":"red"});
			}
			if($(this).val()==$('.pass').val()&&$(this).val()!=''){
				$(this).parents('p').find('em').html('✔️');
			}
		});
		
		$('.formbot input[type="text"]').on('input',function(){
			if(reg1.test($(this).val())){
				$(this).parents('p').find('em').html("✔️");
				
			}else if($(this).val()==''){
					$(this).parents('p').find('em').html('会员名不能为空');
					$(this).parents('p').find('em').css({"color":"red"});
				}
			else{
				$(this).parents('p').find('em').html('您的输入有误');
				$(this).parents('p').find('em').css({"color":"red"});
			}
			});
		$('input[type="button"]').on('click',function(){
			if($('.formbot em').html()=="✔️"&&$('.formtop em').html()=="✔️"&&$('.em').html()=="✔️"){
				
				$.ajax({
					type:"post",
					url:"http://10.31.162.49/taobao/php/registorpost.php",
					data:{
						title : $('.formtop').find('input').val(),
						description: $('.formbot input[type="text"]').val(),
						resolve: $('.pass').val()
					}
				})
				alert("注册成功,请登录");
				window.location.href="login.html";
			}else{
				alert('请核对您填写的信息')
			}
			
		})
	})
})(jQuery);
