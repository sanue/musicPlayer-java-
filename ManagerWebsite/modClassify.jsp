<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modclabox">
	<div class="changetitle">修改歌手分类序号：</div>
	<input type="text" id="classifyId"/>
	<div class="changetitle">新名称：</div>
	<input type="text" id="newClassifyName" />
	<div class="btn mybtn" onclick="modClaName()">确定</div>
	<div class="hh btn mybtn">取消</div>
</div>
	
	<script src="../js/jquery.js"></script>
	<script>
	function modClaName(){
		var classifyId = $('#classifyId').val();
		var newClassifyName = $('#newClassifyName').val();
		$.get(
			'modClaName.do',
			{'newClassifyName':newClassifyName,'classifyId':classifyId},
			function(val){
				if(val!=0){
					show('classify');
	 				modClaRow(classifyId,newClassifyName);
					alert("修改成功！");
				}else{
					alert("修改失败！");
				}
				$('#mymocla').hide();
			},
			'text'
		)
	}
	</script>
</body>
</html>