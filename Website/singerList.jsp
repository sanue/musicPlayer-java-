<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Song"%>
<%@page import="com.music.bean.Section"%>
<%@ page import="com.music.bean.RecordSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>歌手榜单</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/global.css">
	<link rel="stylesheet" type="text/css" href="../css/singerList.css">
	<link rel="stylesheet" type="text/css" href="../css/search-form.css">
</head>
<body>
<%
RecordSet<Song> songs = (RecordSet<Song>)request.getAttribute("songs");
ArrayList<Section> sections = (ArrayList<Section>)request.getAttribute("sections");
int pageIndex = (Integer)(request.getAttribute("Page"));
 %>
	<!-- 头部 -->
	    <div id="dialogContainer">
      <iframe src="login.jsp" frameborder="0"></iframe>
        </div>

    <div id="title">
    	<img src="../images/logo.png" id="logo" height="68" width="620">
    	<div class="dlzc" id="register">
	    	 <%
 		if(request.getSession().getAttribute("memberName")!=null){
 			String memberName = (String)request.getSession().getAttribute("memberName");
 			System.out.print(request.getSession().getAttribute("member"));
 	 %>	
 	 		<div class="userName"><%=memberName %></div>
 			<div class="zhuxiao" onclick="signOut()">注销</div>
 	 <%
			}else{
	 %>
    
        <a href='#' id="login" onclick="btnLogin_onclick();">登录</a>
        <a href='register.html'>注册</a>
      
     <%
     }
      %>
			<!--搜索框-->
			<section class="container" style="z-index:99999">
				<form>
					<div class="search-wrapper">
						<div class="input-holder">
							<input type="text" class="search-input" placeholder="搜索歌曲" />
							<button class="search-icon" onclick="searchToggle(this, event);">
								<span style="font-family:'微软雅黑';font-size:15px;color:gray;">听听歌曲</span></button>
						</div>
						<span class="close" onclick="searchToggle(this, event);"></span>

					</div>
				</form>
			</section>
	    </div>
    </div>
<!-- 标题 -->
	<div class="nav">
		<ul>
			<li><a href="homepage.html">首页</a></li>
			<li><a href="singersCatagory.html">歌手</a></li>
			<li><a href="singerList.html" id="hit">榜单</a></li>
			<li><a href="musicBox.html">音乐盒</a></li>
			<li><a href="client.html">下载客户端</a></li>
		</ul>
	</div>
<!-- 主体内容 -->
	<div class="content" id="content">
	<div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div></a>
	<!-- 竖排导航 -->
       <div id="navRol">
	       <div id="navRolLeft">
	       	 <ul>
	       	 	<!-- 动态添加列表 -->  
	       	 	<%
	       	 		for(Section s: sections){
	       	 	 %>    	 
	       	 	 <li><a href="#"><%=s.getName() %></a></li>
	       	 	 <%
	       	 	 }
	       	 	  %>
	       	 </ul>
	       </div>
	       <div id="tip">
	       	touch<br /><br />
	       	me<br/></br />
	       	<img src='../images/star.png' height="30" width="30" />
	       </div>
       </div>
    
    <div class="paihang">
          <div class="paihangTitle">
    	<img src="../images/gsbd.png" height="45" width="490"/>
    	  </div>
    </div>
    <div id="ti">巅峰榜·热歌</div>
    	  <div class="list clearFloataf">
    	<ul class="dymaUl">
		<%
			for(Song s: songs.getRecordSet()){
		 %>
		 <li class="cata">
			 <div id="songnum">
			 	<div><%=s.getId() %></div>
			 </div>
			 		<div class="name"><%=s.getSingerName() %></div>
			 		<div class="songName"><%=s.getName() %></div>
			 		<div class="musicc"><span></span><span></span><span></span><span></span><span></span><span></span></div>
			 		<div class="operate">收藏并播放<img src="../images/play_03.png" width="20" height="20"></div>
		</li>
		 <%
		 }
		  %>
			</ul>
			</div>
<div class="pages clearFloat">
  	<ul>
  	    <li id="before"><a href="singerList.html?page=<%=1 %>" style="text-decoration:none">&lt;</a></li>
            <%for(int i = 0 ; i < songs.getPageCode() ;i++){%>
            <li><a href="singerList.html?page=<%=i + 1%>" style="text-decoration:none"><%=i + 1%></a></li>
            <%}%>
  		<li id="after"><a href="singerList.html?page=<%=songs.getPageCode() %>" style="text-decoration:none">&gt;</a></li>
  	</ul>
  </div>
</div><!-- content -->

	<div id="footer">
		    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班 汪荷怡所有
		</div>
<script src="../js/jquery.js"></script>
<script src='../js/global.js'></script>
<script src='../js/singerList.js'></script>
	<script src="../js/searchSong.js"></script>
</body>
</html>