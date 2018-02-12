<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/bootstrap.min.css" rel="stylesheet"/>
<link href="../css/manager.css" rel="stylesheet"/>
<link href="../css/managerMain.css" rel="stylesheet"/>
</head>
<body>
	<%
 			if(request.getSession().getAttribute("User")!=null){
 				response.sendRedirect("managerHome.html");
			}
	 %>
	<div class="page-header title">
		<h1>后台管理员登录</h1>
	</div>

 

<div class="mainLogin">


<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="userName" class="col-sm-3 control-label">管理员名：</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="userName" placeholder="请输入用户名">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-3 control-label">密码：</label>
    <div class="col-sm-6">
      <input type="password" class="form-control" id="password" placeholder="请输入密码">
    </div>
  </div>
    <div class="form-group">
    <label for="yz" class="col-sm-3 control-label">验证码</label>
    <div class="col-sm-6">
      <canvas id="code" width="100" height="40" onClick="createCode()" ></canvas>
      <input id="inputCode" class="form-control" type="text" placeholder="请输入验证码" />
    </div>
  </div>
 <div class="form-group mydlbtn">
    <div class="col-sm-offset-5">
      <input type="button" class="btn btn-default col-sm-5" id="ddd" onclick="UserLogin()" value="登录" />
    </div>
  </div>
</form>


</div>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
	/*登录*/
	function UserLogin() {
		var chk = checkCode();
		var name = $('#userName').val();
		var psd = $('#password').val();
		var user = null;
		if(chk==true){
		$.get(
			'login.do',
			{'name':name,'psd':psd},
			function(result){
				if (result != 'null') {
					ManagerHomeIn(user);
				} else {
					alert('用户信息不正确.');
				}
			},
			'text'
		);
}
	}
	
	function ManagerHomeIn(user){
		$.get(
			'managerHome.html',
			{'userName':user},
			function(){
				window.location.href = "managerHome.html";
			},
			'text'
		);
	}
	   var code;
		var mycanvas = document.querySelector('#code');
		var context = mycanvas.getContext('2d');
		
	window.onload = function(){
		createCode();
	}
	function createCode(){
		context.clearRect(0,0,mycanvas.width,mycanvas.height);
		code="";
		context.font = '20px Georgia';
	   
		var checkCode = document.getElementById('code');
		//创建一个随机数
		var radom = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
		for(var i=0;i<4;i++){
		   context.beginPath();
		   var index = Math.floor(Math.random()*36);
		   code += radom[index];
		   context.fillText(code,30,30);
		   context.closePath();
			//charAt
		}
	}
	
	function checkCode(){
		var inputCode = document.querySelector('#inputCode').value;
		if(inputCode.toLowerCase()!=code.toLowerCase()){
		   	alert('验证码输入不正确！');
			return false;
		}else{
			return true;
		}
	}
</script>
</body>
</html>