<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.singerDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Singer"%>
<%@page import="com.music.dao.SongDao"%>
<%@page import="com.music.bean.Song"%>
<%@page import="com.music.dao.sectionDao"%>
<%@page import="com.music.bean.Section"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/lib/bootstrap/css/bootstrap.css">
    <style type="text/css"><!--
    
   #singerName{
    height: 34px;
  
    border-radius: 2%;
	}
	#sectionName{
	height: 34px;

    border-radius: 2%;
	}
    </style>
</head>
<body style="background: url(../../../../images/bggg.jpg);">&nbsp; 
  <% 
 			if(request.getSession().getAttribute("User")==null){ 
				response.sendRedirect("manager.jsp"); 
			} 
	 %>
<%
	singerDao singerDao = new singerDao();
	ArrayList<Singer> singers = singerDao.getAllSingers();
	
	sectionDao sectionDao = new sectionDao();
	ArrayList<Section> sections = sectionDao.getSections();
	
	Song song = (Song)request.getAttribute("song");
 %>
<div style="margin:100px;">
<form class="form-horizontal" role="form" action="modSong.do" method="post"  enctype="multipart/form-data">
<input type="hidden" name="changeId" value="<%=request.getParameter("thisId") %>"/>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">歌曲名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="songName" name="songName" placeholder="请填写歌曲名" value="<%=song.getName() %>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">时长</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="duration" placeholder="请填写时长" value="<%=song.getDuration() %>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label" value="<%=song.getSingerName() %>">歌手名</label>
    <div class="col-sm-10">
      <select name="singerName" id="singerName">
      <%
      int i=0;
      for(Singer s :singers){
      i++;
       %>
      	<option value="<%=i %>"><%=s.getName() %></option>
      	<%
      	}
      	
      	 %>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">歌曲分类</label>
    <div class="col-sm-10">
      <select name="sectionName" id="sectionName">
      	<%
      int j=0;
      for(Section  e: sections){
      j++;
       %>
      	<option value="<%=j %>"><%=e.getName() %></option>
      	<%
      	}
      	 %>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">介绍</label>
    <div class="col-sm-10">
      <textarea name="introduce"><%=song.getIntroduce() %></textarea>
    </div>
  </div>
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">文件</label>
    <div class="col-sm-10">
      <input type="file" class="form-control" id="songfile" style="display:none" name="songfile">
      <input type="button" class="btn btn-info" onclick="clickSongFile()" value="浏览文件"/>
    </div>
  </div>
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">图片</label>
    <div class="col-sm-10">
      <input type="file" class="form-control" id="picfile" style="display:none" name="picfile">
      <input type="button" class="btn btn-info" onclick="clickPicFile()" value="浏览图片"/>
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改</button>
    </div>
  </div>
</form>
</div>
<input type="hidden" id="singerId" value="<%=song.getSingerid() %>" />
<input type="hidden" id="songId" value="<%=song.getSectionid() %>"/>
<script src="../js/jquery.js"></script>
<script>
$(function(){
var singerId=$('#singerId').val();
var songId = $('#songId').val();
$('#singerName').val(singerId);
$('#sectionName').val(songId);

clickSongFile();
clickPicFile()
});
function clickSongFile(){
$('#songfile').click();
}
function clickPicFile(){
$('#picfile').click();
}

</script>
</body>
</html>