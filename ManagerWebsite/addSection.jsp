<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.bean.Section"%>
<%@page import="com.music.dao.sectionDao"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.sectionbox {
    width: 220px;
    margin: auto;
}
.page-header{
	margin-top:100px;
}
</style>
</head>
<body>
<div class="page-header title mypage-header">
<h3 style="text-align:center" class="mysection">请输入新添加的歌曲分类：</h3>
<div class="sectionbox">
	<input type="text" id="newSection" name="newSongSection" />
	<div class="btn mybtn" onclick="addNewSongSection()">确定</div>
	<div class="hh btn mybtn">取消</div>
</div>	
</div>


	 <script src="../js/jquery.js"></script>
	 <script>
	 	function addNewSongSection(){
	 		var newSection = $('#newSection').val();
	 		if(newSection==""){
	 			alert("名称不可以为空！");
	 		}else{
		 		$.get(
		 			'addNewSection.do',
		 			{'newSongSection':newSection},
		 			function(val){
		 				if(val!=0){
		 					show('section');
		 					var $tbody = $('.SongClatb>tbody');
		 					var sectionNum = $tbody.children().length+1;
		 					$tbody.append(addRow(newSection,sectionNum));
		 					alert("添加成功！");
		 					
		 				}else{
		 					alert("添加失败！");
		 				}
		 				$('#myadsec').hide();
		 			},
		 			'text'
		 		);
	 		}
	 	}
	 	
	 </script>
	 <script src="../js/managerHome.js"></script>
</body>
</html>