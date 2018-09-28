function phoneValidate(input) {
	var reg = new RegExp("^[1]{1}[3,4,5,8]{1}[0-9]{9}$"); // 判断字符串是否为手机号 
	if(!reg.test(input.value)){
		alert('手机号不正确');
		input.value = '';
		return false;
	}
	return true;
}

function emailValidate(input) {
	var reg = new RegExp("\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}"); // 判断字符串是否Email 
	if(!reg.test(input.value)){
		alert('不是Email');
		input.value = '';
	}
}

function integerValidate(input) {
	var reg = new RegExp(/^\+?[1-9][0-9]*$/); // 判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/
	if(!reg.test(input.value)){
		alert('不是正整数');
		input.value = '';
	}
}

function selectValidate(selectName,value) {
	var select = document.getElementById(selectName);
	if(select.selectedIndex == 0 ){
		alert(value+'不能为空，请选择！')
		return false;
	}
	return true;
}

function radioValidate(radioName,value) {
	var flag = false;
	var radios = document.getElementsByName(radioName);
	for (var i = 0; i < radios.length && !flag; i++) {
		if (radios[i].checked) {
			flag = true;
		}
	}
	if (!flag) {
		alert(value+'不能为空，请选择！')
		return flag;
	}
	return flag;
}

function textValidate(input,value,length) {
	var text = input.value;
	if(text == ''){
		alert(value+'不能为空');
		return false;
	}
	if(text.length > length){
		alert(value+'的长度不能超过'+length+'位');
		input.value = '';
		return false;
	}
	return true;
}

function YYYYMMDDValidate(input) {
	var reg = new RegExp(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/); // 判断是否为YYYY-MM-DD
	if(!reg.test(input.value)){
		alert('不为YYYY-MM-DD日期格式');
		input.value = '';
	}
}

function promptValidate(prompt,value,length,isNum) {
	if (prompt==null || prompt==""){
			alert(value+'，输入值不能为空。')
			return false;
	}
	if(isNum){
		var reg = new RegExp(/^\+?[1-9][0-9]*$/); // 判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/
		if(!reg.test(prompt)){
			alert(value+'，输入值不是正整数。');
			return false;
		}
	}
	if(prompt.length > length){
		alert(value+'，输入值长度不能超过'+length+'位');
		return false;
	}
	return true;
}