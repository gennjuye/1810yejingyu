;(function($){
	$(function(){
		$('#form a').on('click',function(e){
			if($('.vip').val()==''&&$('.password').val()==''){
				 e.preventDefault();
				alert('请输入账号或密码')
			}
			$.ajax({
				type:"post",
				url:"http://10.31.162.49/taobao/php/login.php",
				data:{
					"sid":$('.vip').val(),
				},
				dataType:'json'
			}).done(function(data){
				console.log(data.title)
				if(data.title==$('.vip').val()&&data.resolve==$('.password').val()){
					localStorage.setItem('cookiename',data.description);
					window.location.href="index.html";
				}else{
					alert('登录失败');
				}
			})
		});
	})
})(jQuery);
