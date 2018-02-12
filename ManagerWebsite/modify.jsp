<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/lib/bootstrap/css/bootstrap.css">
   <link rel="stylesheet" href="../css/modify.css">
</head>
<body>


<form action="modify.do" class="form-horizontal" role="form" method="post" id="chgpsdform">
  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">用户名：</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入你的用户名">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">原始密码：</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" name="password" placeholder="请输入原始密码">
    </div>
  </div>
    <div class="form-group">
    <label for="password" class="col-sm-2 control-label">新密码：</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="newpassword" name="newpassword" placeholder="请输入新密码">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="claBtn" >修改密码</div>
    </div>
  </div>
</form>
</body>
</html>