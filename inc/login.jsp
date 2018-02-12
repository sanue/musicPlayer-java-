<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<title>登录</title>
</head>
<body>

          <div id="top">登录 <div onclick='btnClose()'><img src='images/close.png' height="30" width="30"></div></div>
         
             <div id="main">
     <div class="tip all">
	     <img src="images/suo.jpg" width="12" height="12" id="img" />
	     <span id="span_tip">公共场所不建议自动登录，以防账号丢失</span>
     </div>
    <form action="#" method="post" class="frm">
    <!-- 用户名 -->
        <label>
        <div class="sp">
	        <img src="images/username.jpg" width="38" height="38" />	    </div><input type="text" placeholder="邮箱/用户名(长度不超过10)" maxlength="10" class="inputt inputt_gray name" id="name" required />
	    </label><br />
     <!-- 密码 -->
        <label>
        <div class="sp">
	        <img src="images/pwd.jpg" width="38" height="38" />        </div><input type="password" placeholder="密码" class="inputt inputt_gray pwd" id="pwd"  />
        </label><br />

         <input type="submit" id="denglu" value="登&nbsp;&nbsp;录">
            </form>
         
    </div>

        <script src='js/jquery.js'></script>
        <script type="text/javascript" src='js/login.js'></script>


</body>
</html>