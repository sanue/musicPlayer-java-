<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="addclabox">
<div class="page-header title">
<div class="adclatitle">请输入新添加的歌手分类：</div>
</div>
	<input type="text" id="newClassify" name="newSingerClassify" />
	<div class="ttt">
	<div class="btn mybtn" onclick="addNewSingerClassify()">确定</div>
	<div class="hh btn mybtn">取消</div>
	</div>
</div>
	 <script src="../js/jquery.js"></script>
	 <script>
	 function addNewSingerClassify(){
	 		var newClassify = $('#newClassify').val();
	 		if(newClassify==""){
	 			alert("名称不可以为空！");
	 		}else{
		 		$.get(
		 			'addNewClassify.do',
		 			{'newSingerClassify':newClassify},
		 			function(val){
		 				if(val!=0){
		 					show('classify');
		 					var $tbody = $('.SingerClatb>tbody');
		 					var claNum = $tbody.children().length+1;
		 					$tbody.append(addRow(newClassify,claNum));
		 					alert("添加成功！");
		 					
		 				}else{
		 					alert("添加失败！");
		 				}
		 				$('#myadcla').hide();
		 			},
		 			'text'
		 		);
	 		}
	 	}
	 	
	 </script>
	 <script src="../js/managerHome.js"></script>
	 
	 
</body>
</html>