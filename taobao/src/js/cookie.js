function addcookie(key,value,day){
	var date=new Date();
	date.setDate(date.getDate()+day);
	document.cookie=key+'='+encodeURIComponent(value)+';expires='+date;
}
function getcookie(key){
	var arr=decodeURIComponent(document.cookie).split('; ');
	for(var i=0;i<arr.length;i++){
		var newarr=arr[i].split('=');
		if(key==newarr[0]){
			return newarr[1];
		}
	}
}
function delcookie(key){
	addcookie(key,'',-1);
}