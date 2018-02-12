<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modbox">
	<div class="motitle">修改歌曲分类序号：</div>
	<input type="text" id="sectionId"/>
	<div class="motitle">新名称：</div>
	<input type="text" id="newSectionName" />
	
	<div class="btn mybtn" onclick="modSecName()">确定修改</div>
	<div class="hh btn mybtn">取消</div>
</div>
	<script src="../js/jquery.js"></script>
	<script>
	function modSecName(){
		var sectionId = $('#sectionId').val();
		var newSectionName = $('#newSectionName').val();
		$.get(
			'modSecName.do',
			{'sectionName':newSectionName,'newSectionId':sectionId},
			function(val){
				if(val!=0){
					show('section');
	 				modRow(sectionId,newSectionName);
					alert("修改成功！");
				}else{
					alert("修改失败！");
				}
				$('#mymosec').hide();
			},
			'text'
		)
	}
	</script>
</body>
</html>