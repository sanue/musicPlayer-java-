<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.NewSong"%>
<%@page import="com.music.bean.Member"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/pignose.parallaxslider.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/homepage.css">
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <!--<link rel="stylesheet" type="text/css" href="css/search-form.css">-->
    <title>我的音乐盒首页</title>
</head>
<body>
	<!-- 头部 -->
<div id="dialogContainer">
    <iframe src="login.jsp" frameborder="0" name="loginIframe"></iframe>
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
       </div>
</div>
<!-- 标题 -->
<div class="nav">
    <ul>
        <li><a href="homepage.html" id="hit">首页</a></li>
        <li><a href="singersCatagory.html">歌手</a></li>
        <li><a href="singerList.html">榜单</a></li>
        <li><a href="musicBox.html">音乐盒</a></li>
        <li><a href="client.html">下载客户端</a></li>
    </ul>
</div>
<!-- 主体内容 -->
<div class="content">
    <div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div>
    </a>
    <!--图片轮播 -->
    <div id="picChange">
        <div id="wrapper">
            <div id="visual">
                <div class="slide-visual">
                    <!-- Slide Image Area (1000 x 424) -->
                    <ul class="slide-group">

                        <li><img src="../images/ad01.jpg" height="424" width="1000" alt="slide image"/></li>
                        <li><img src="../images/ad02.jpg" height="424" width="1000" alt="slide image"/></li>
                        <li><img src="../images/ad03.jpg" height="424" width="1000" alt="slide image"/></li>
                        <li><img src="../images/ad04.jpg" height="424" width="1000" alt="slide image"/></li>
                        <li><img src="../images/ad05.jpg" height="424" width="1000" alt="slide image"/></li>
                        <li><img src="../images/ad01.jpg" height="424" width="1000" alt="slide image"/></li>
                    </ul>

                    <!-- Slide Description Image Area (316 x 328) -->
                    <div class="script-wrap">

                        <ul class="script-group">
                            <li>
                                <div class="inner-script"><img src="../images/new_04.jpg" width="276" height="288"
                                                               alt="thumbnail slider image"/></div>
                            </li>
                            <li>
                                <div class="inner-script"><img src="../images/new_01.jpg" width="276" height="288"
                                                               alt="thumbnail slider image"/></div>
                            </li>
                            <li>
                                <div class="inner-script"><img src="../images/new_02.jpg" width="276" height="288"
                                                               alt="thumbnail slider image"/></div>
                            </li>
                            <li>
                                <div class="inner-script"><img src="../images/new_03.jpg" width="276" height="288"
                                                               alt="thumbnail slider image"/></div>
                            </li>
                            <li>
                                <div class="inner-script"><img src="../images/new_05.jpg" width="276" height="288"
                                                               alt="thumbnail slider image"/></div>
                            </li>
                            <li>
                                <div class="inner-script"><img src="../images/new_01.jpg" width="276" height="288"
                                                               alt="thumbnail slidimageser image"/></div>
                            </li>
                        </ul>
                        <div class="slide-controller">
                            <a href="#" class="btn-prev"><img src="../images/btn_prev.png" alt="prev slide"/></a>
                            <a href="#" class="btn-play"></a>
                            <a href="#" class="btn-pause"></a>
                            <a href="#" class="btn-next"><img src="../images/btn_next.png" alt="next slide"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <!-- 新歌速递歌手推荐 -->
    <div id="middle">
      
        <!-- 新歌速递  歌手推荐 -->
        <div class="middleTitle">
        	<div id="titleLeft">新歌速递</div>
        	<div id="more">更多</div>
        </div>
        <%
		    ArrayList<NewSong> newsongs = (ArrayList<NewSong>)request.getAttribute("newsongs");
         %>
         <%   for(NewSong ns : newsongs) {%>
        <a href="#">
	        <div class="pics">
	        	<div class="zhe"></div>
	        	<div class="play">
	        		<img src="../images/play12.png" height="40" width="40">
	        	<div class="nameTip"><%=ns.getName() %></div>
	        	</div>
	        	<img src="../icon/<%=ns.getPicsrc() %>" height="250" width="250">
	        </div>
        </a>
        <%
        }
         %>
         
         
    </div>


</div>
<!-- content -->

<div id="footer">
    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班
</div>
<!--  -->

<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/jquery.easing.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/pignose.parallaxslider.min.js"></script>
<script src="../js/global.js"></script>
<script src="../js/login.js"></script>
<script src="../js/homepage.js"></script>


</body>
</html>