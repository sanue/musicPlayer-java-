<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/global.css">
	<link rel="stylesheet" type="text/css" href="../css/register.css">
	<title>注册</title>
</head>
<body>
	<!-- 头部 -->
    <div id="title">
    	<img src="../images/logo.png" id="logo" height="68" width="620">
    	<div class="dlzc" id="register">
	    	<a href='#' id="login" onClick="btnLogin_onclick()">登录</a>
	    	<a href='register.html'>注册</a>
	    </div>
    </div>
<!-- 标题 -->
	<div class="nav">
		<ul>
			<li><a href="homepage.html">首页</a></li>
			<li><a href="singersCatagory.html">歌手</a></li>
			<li><a href="singerList.html">榜单</a></li>
			<li><a href="musicBox.html">音乐盒</a></li>
			<li><a href="client.html">下载客户端</a></li>
		</ul>
	</div>
<!-- 主体内容 -->
	<div class="content">
    <div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div></a>

   <!-- 注册 -->
<div class="registerBox">
	<!-- 注册一 -->
	<div class="button raised clickable" id="contentlogin1">
        <input type="checkbox" class="toggle"/>
        <div class="anim"></div>
        <img src='../images/yx.png' height="30" width="30"/><div class="t1 white">邮箱注册</div>
    </div>
	<!-- 注册二 -->
	<div class="button raised clickable" id="contentlogin2">
        <input type="checkbox" class="toggle"/>
        <div class="anim"></div>
        <img src='../images/shouji.png' height="30" width="30"/><div class="t2 gray">手机注册</div>
    </div>

	<!-- 注册三 -->
	<div class="button raised clickable" id="contentlogin3">
        <input type="checkbox" class="toggle"/>
        <div class="anim"></div>
        <img src='../images/user.png' height="30" width="30"/><div class="t3 gray">用户名注册</div>
    </div>

<!-- 注册Box1 -->
 <div class="registerContent" id="registerContent1">
 		<div class="container">
		<div id="user-base" class="user-container">
			<h2 class="sub-title">用户名注册</h2>
			<form action="" method="post" name="frm">
				<div class="form-item">
					<label class="item-title" for="userName">用户名<span>*</span></label>
					<input type="text" name="userName" id="userName" class="item-textbox" required placeholder="请输入4-20位字母数字组合的用户名" pattern="^\w{4,20}$" oninvalid="checkName(this)" oninput="checkName(this)" onblur="checkHas()" />
				</div>
				<div class="form-item">
					<label class="item-title" for="password">密码<span>*</span></label>
					<input type="text" name="password" id="password" class="item-textbox" required placeholder="请输入6-12位的非空白字符为密码" onvalid="checkPassword(this)" pattern="^\S{6,12}$"  />
				</div>
				<div class="form-item">
					<label class="item-title" class="item-title" for="confirmPassword">确认密码<span>*</span></label>
					<input type="text" name="confirmPassword" id="confirmPassword" class="item-textbox"  required onvalid="checkPassword(this)" oninput="checkPassword(this)"/>
				</div>
				<div class="form-item">
					<label class="item-title" for="email">性别<span>*</span></label>
					<input type="radio" name="sex" class="sex" id="man" />男
					<input type="radio" name="sex" class="sex" id="woman" />女
				</div>
				<div class="form-item">
					<label class="item-title" for="email">手机号码<span>*</span></label>
					<input type="text" name="phone" id="phone" class="item-textbox" required placeholder="请输入手机号" pattern="^1[3|5|7|8]\d{9}$" oninput="checkTel(this)" oninvalid="checkTel(this)" />
				</div>
				<div class="center-align">
					<button class="btn-submit" type="submit">注册</button>
				</div>
			</form>
		</div>
	</div>
 </div>
 <!-- 注册Box2 -->
 <div class="registerContent disapp" id="registerContent2">
 		<div class="container">
		<div id="user-base" class="user-container">
			<h2 class="sub-title">用户名注册</h2>
			<form action="musicBox.html" method="post" name="frm">
				<div class="form-item">
					<label class="item-title" for="userName">手机<span>*</span></label>
					<input type="text" name="userName" id="userName" class="item-textbox" required placeholder="请输入4-20位字母数字组合的用户名" pattern="^\w{4,20}$" oninvalid="checkName(this)" oninput="checkName(this)" onblur="checkHas()"  />
				</div>
				<div class="form-item">
					<label class="item-title" for="password">密码<span>*</span></label>
					<input type="text" name="password" id="password" class="item-textbox" required placeholder="请输入6-12位的非空白字符为密码" onvalid="checkPassword(this)" pattern="^\S{6,12}$"  />
				</div>
				<div class="form-item">
					<label class="item-title" class="item-title" for="confirmPassword">确认密码<span>*</span></label>
					<input type="text" name="confirmPassword" id="confirmPassword" class="item-textbox"  required onvalid="checkPassword(this)" oninput="checkPassword(this)"/>
				</div>
				<div class="form-item">
					<label class="item-title">性别<span>*</span></label>
					<input type="radio" name="sex" class="sex" />男
					<input type="radio" name="sex" class="sex" />女
				</div>
				<div class="form-item">
					<label class="item-title" >手机号码<span>*</span></label>
					<input type="text" name="phone" id="phone" class="item-textbox" required placeholder="请输入手机号" pattern="^1[3|5|7|8]\d{9}$" oninput="checkTel(this)" oninvalid="checkTel(this)" />
				</div>
				<div class="center-align">
					<button class="btn-submit" type="submit">注册</button>
				</div>
			</form>
		</div>
	</div>
 </div>
<!-- 注册Box3 -->
 <div class="registerContent disapp" id="registerContent3">
 		<div class="container">
		<div id="user-base" class="user-container">
			<h2 class="sub-title">用户名注册</h2>
			<form action="musicBox.html" method="post" name="frm">
				<div class="form-item">
					<label class="item-title" for="userName">用户名<span>*</span></label>
					<input type="text" name="userName" id="userName" class="item-textbox" required placeholder="请输入4-20位字母数字组合的用户名" pattern="^\w{4,20}$" oninvalid="checkName(this)" oninput="checkName(this)"  onblur="checkHas()" />
				</div>
				<div class="form-item">
					<label class="item-title" for="password">密码<span>*</span></label>
					<input type="text" name="password" id="password" class="item-textbox" required placeholder="请输入6-12位的非空白字符为密码" onvalid="checkPassword(this)" pattern="^\S{6,12}$"  />
				</div>
				<div class="form-item">
					<label class="item-title" class="item-title" for="confirmPassword">确认密码<span>*</span></label>
					<input type="text" name="confirmPassword" id="confirmPassword" class="item-textbox"  required onvalid="checkPassword(this)" oninput="checkPassword(this)"/>
				</div>
				<div class="form-item">
					<label class="item-title" for="email">性别<span>*</span></label>
					<input type="radio" name="sex" class="sex" />男
					<input type="radio" name="sex" class="sex" />女
				</div>
				<div class="form-item">
					<label class="item-title" for="email">手机号码<span>*</span></label>
					<input type="text" name="phone" id="phone" class="item-textbox" required placeholder="请输入手机号" pattern="^1[3|5|7|8]\d{9}$" oninput="checkTel(this)" oninvalid="checkTel(this)" />
				</div>
				<div class="center-align">
					<button class="btn-submit" type="submit">注册</button>
				</div>
			</form>
		</div>
	</div>
 </div>
</div>
    </div><!-- content -->
		<div id="footer">
		    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班
		</div>
<script src="../js/jquery.js"></script>
<script>
var users;
$(function(){
	$('form').bind('submit' , function(e){ 
	   //本地存储
	   	var userName = $('#userName').val();
		var password = $('#password').val();
		if($('#woman').get(0).checked){
			sex = '女';
		}else if($('#man').get(0).checked){
            sex = '男';
		}		
		//将用户插入数据库
		$.post(
		'pushMember.do',
		{'name':userName,'password':password,'sex':sex},
		function(result){
			alert("为0表示插入失败"+result);
		},
		'text'
		);
		//if(null  != localStorage.users){
		//	 users = JSON.parse(localStorage.users);
		// }
		
		//users.push(thisUser);
		//localStorage.users = JSON.stringify(users);

});


    
//三种注册标题点击事件
	$('#contentlogin1').click(function(){
		$('.white').removeClass('white').addClass('gray');
		$('.t1').removeClass('gray').addClass('white');
		$('#registerContent1').show();
		$('#registerContent2').hide();
		$('#registerContent3').hide();
	});
	$('#contentlogin2').click(function(){
		$('.white').removeClass('white').addClass('gray');
		$('.t2').removeClass('gray').addClass('white');
		$('#registerContent2').show();
		$('#registerContent1').hide();
		$('#registerContent3').hide();
	});
	$('#contentlogin3').click(function(){
		$('.white').removeClass('white').addClass('gray');
		$('.t3').removeClass('gray').addClass('white');
		$('#registerContent3').show();
		$('#registerContent2').hide();
		$('#registerContent1').hide();
	});
});

		   function checkName(i){
		     var v = i.validity;
			 if(v.valueMissing){
				 i.setCustomValidity('用户名不能为空！');
				 return false;
			 }
			 if(v.patternMismatch){
				 i.setCustomValidity('真实姓名为4-20位的非空字符！');
				 return false;
			 }
			 
			i.setCustomValidity("");
			return true;

		   }
		   //检验两次密码是否一致
       function checkPassword(i){
		   var v = i.validity;
		   var p1 = document.getElementById('password');
		   var p2 = document.getElementById('confirmPassword');
		   if(v.valueMissing){
			 i.setCustomValidity('密码不能为空！');
				return false;
		   }
		   if(p1.value != p2.value){
			p2.setCustomValidity('两次输入密码不一致！');
			return false;
			}
	       p2.setCustomValidity('');
			return true;
				 }
			
			//检查手机号是否为空！
	 function checkTel(i){
		 var v = i.validity;
		 if(v.valueMissing){
			i.setCustomValidity('手机号码不能为空！');
			return false; 
		 }
		 if(v.patternMismatch){
			 i.setCustomValidity('手机号码长度为11位的数字，必须以18、13、15、17开头');
			 return false;

		 } 
         i.setCustomValidity("");
			return true;
	 }
	
	function getUsers(){
		var userName = $('#userName').val();
		var password = $('#password').val();
        var telephone = $('#phone').val();
		var thisUser = {name:userName,password:password,sex:'男',telephone:telephone};
		if($('#woman').get(0).checked){
			thisUser.sex = '女';
		}else if($('#man').get(0).checked){
            thisUser.sex = '男';
		}		
		return thisUser;

	}
	
	function checkHas(){
	$.get(
       "getMember.do",
       function(members){
       		var thisUser = getUsers();
       		for(var i=0;i<members.length;i++){
	       		if(thisUser.name==members[i].memberName){
	       			alert("用户已经存在了~重新输入吧");
	       			return false;
	       			}
       		}
       },
       'json'
       );
}
	function submit(){
		/*本地存储*/
	   var thisUser = getUsers();
		//将用户插入数据库
		$.post(
		thisUser,
		'registerM.do',
		function(result){
			alert("为0表示插入失败"+result);
		},
		'text'
		);
	}
--></script>
</body>
</html>