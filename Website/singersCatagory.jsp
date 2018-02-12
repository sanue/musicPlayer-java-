<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Singer"%>
<%@page import="com.music.bean.Classify"%>
<%@ page import="com.music.bean.RecordSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>歌手分类</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/global.css">
	<link rel="stylesheet" type="text/css" href="../css/singerscatagory.css">
	<link rel="stylesheet" type="text/css" href="../css/search-form.css">
</head>
<body>
<%
ArrayList<Classify> classifies = (ArrayList<Classify>)request.getAttribute("classifies");
RecordSet<Singer> singers = (RecordSet<Singer>)request.getAttribute("singers");
 int pageIndex = (Integer)(request.getAttribute("Page"));

 %>
	<!-- 头部 -->
    <div id="dialogContainer">
        <iframe src="login.jsp" frameborder="0"></iframe>
    </div>
	
    <div id="title">
    	<img src="../images/logo.png" id="logo" height="72" width="620">
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
							<input type="text" class="search-input" placeholder="搜索歌手" />
							<button class="search-icon" onclick="searchToggle(this, event);">
								<span style="font-family:'微软雅黑';font-size:15px;color:gray;">歌手搜索</span></button>
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
			<li><a href="singersCatagory.html" id="hit">歌手</a></li>
			<li><a href="singerList.html">榜单</a></li>
			<li><a href="musicBox.html">音乐盒</a></li>
			<li><a href="client.html">下载客户端</a></li>
			<li></li>
		</ul>
	</div>
<!-- 主体内容 -->
	<div class="content">
	<div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div></a>
	<!-- 竖排导航 -->
       <div id="navRol">
	       <div id="navRolLeft">
	       	 <ul>
	       	 <!-- 标题歌手地区 -->
	       	 <%
	       	 for(Classify c: classifies){
	       	  %>
	       	 <li><a href="#"><%=c.getName() %></a></li>
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
	
	<!-- 歌手信息 -->
	<div id="informationTitle">
	   <span>歌手信息</span>
	</div>
	<div class="singersInformation">
	
  <div id="hot" onclick="window.location.reload();">全部</div>
  <div class="searchSinger">

  	  <ul>
  	  	<li>A</li>
  	  	<li>B</li>
  	  	<li>C</li>
  	  	<li>D</li>
  	  	<li>E</li>
  	  	<li>F</li>
  	  	<li>G</li>
  	  	<li>H</li>
  	  	<li>I</li>
  	  	<li>J</li>
  	  	<li>K</li>
  	  	<li>L</li>
  	  	<li>M</li>
  	  	<li>N</li>
  	  	<li>O</li>
  	  	<li>P</li>
  	  	<li>Q</li>
  	  	<li>R</li>
  	  	<li>S</li>
  	  	<li>T</li>
  	  	<li>U</li>
  	  	<li>V</li>
  	  	<li>W</li>
  	  	<li>X</li>
  	  	<li>Y</li>
  	  	<li>Z</li>
  	  	<li>#</li>
  	  </ul>
  </div>

<!-- 歌手列表 -->

<!-- <li>
<span id="singerNames">汪苏泷</span>
<div class="shape">
	<a href="#" class="overlay round"></a>
	
	<div class="details">
		<span class="heading">汪苏泷</span>
		<hr />
		<p>一笑倾城</p>		
		<a href="singerDetails.html" class="button">Listen</a>
	</div>
	
	<div class="bg"></div>
	
	<div class="base">
		<img src="images/1.jpg" height="200" width="200" />
	</div>
	
</div>	
	
</li>
 -->

<ul class="clearFloataf" id="aa">
<%
for(Singer s :singers.getRecordSet()){
 %>
<li>
	<span id="singerNames"><%=s.getName() %></span>
<div class="shape">
	<a href="#" class="overlay hexagon"></a>
	<div class="details">
		<span class="heading"><%=s.getName() %></span>
		<hr />
		<p><%=s.getNickname() %></p>		
		<a href="#" class="button">Listen</a>		
	</div>
	<div class="bg"></div>	<div class="base">
		<img src='../icon/<%=s.getIcon() %>' height="200" width="200"/>
	</div>
</div>	
	
</li>
<%
}
 %>


	
</ul>



	</div>

  <div class="pages clearFloat">
  	<ul>
  	    <li id="before"><a href="singersCatagory.html?page=<%=1%>" style="text-decoration:none"><</a></li>
  		 <%for(int i = 0 ; i < singers.getPageCode() ;i++){%>
            <li><a href="singersCatagory.html?page=<%=i + 1%>" style="text-decoration:none"><%=i + 1%></a></li>
            <%}%>
  		<li id="after"><a href="singersCatagory.html?page=<%=singers.getPageCode()%>" style="text-decoration:none"">></a></li>
  	</ul>
  </div>
	<!--	<iframe id="myplayer" name="myiframe" src="player.html" frameborder="0"></iframe>-->
</div>

<div id="footer">
    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班
</div>
 <script src="../js/jquery.js"></script>
 <script src="../js/global.js"></script>
 <script src="../js/singersCatagory.js"></script> 
 <script src="../js/search.js"></script>

 </body>
</html>