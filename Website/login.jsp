<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/reset.css" />
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<title>登录</title>
	<style type="text/css">
input{
	border:1px solid #CCC;
	height:40px;

}
button{
	width:100px;
	vertical-align:top;
	height:40px;
	line-height:40px;
	background-color:#F3F3F3;
	border:1px solid #C2C2C2;
}
canvas{
	vertical-align:top;
	background-color:#F3F3F3;
	border:1px solid #C2C2C2;
	cursor:pointer;
}
</style>
</head>
<body>

       <div id="top">登录 <div onclick='btnClose()'><img src='../images/close.png' height="30" width="30"></div></div>
             <div id="main">
     			 <div class="tip all">
	     		 <img src="../images/suo.jpg" width="12" height="12" id="img" />
	    		 <span id="span_tip">公共场所不建议自动登录，以防账号丢失</span>
    	</div>
    		<form action="" method="post" class="frm">
   			 <!-- 用户名 -->
       			 <label>
       			 <div class="sp">
	       			 <img src="../images/username.jpg" width="38" height="38" />	    </div><input type="text" placeholder="邮箱/用户名(长度不超过10)" maxlength="10" class="inputt inputt_gray name" id="name" name="name" required />
	   			 </label><br />
   			  <!-- 密码 -->
       			 <label>
        		 <div class="sp">
	       			 <img src="../images/pwd.jpg" width="38" height="38" />        </div><input type="password" placeholder="密码" class="inputt inputt_gray pwd" id="pwd" name="password"  />
        		</label><br />
        	<!-- 验证码 -->
        	<label for="yz">验证码</label>
				<input id="inputCode" type="text" width="300" height="40" />
				<canvas id="code" width="100" height="40" onClick="createCode()" ></canvas>
				<span id="yzwrong"></span>
 				<input type="submit" id="denglu"  class="btn btn-primary" value="登&nbsp;&nbsp;录">
            </form> 
    </div>

        <script src='../js/jquery.js'></script>
        <script type="text/javascript" src='../js/login.js'></script>


</body>
</html>