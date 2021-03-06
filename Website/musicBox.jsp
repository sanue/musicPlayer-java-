<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Song"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/pignose.parallaxslider.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/musicBox.css">

    <title>我的音乐盒</title>
</head>
<body>
<div id="showMessage">请先登录才可以听你想听的歌~</div>
<script src="../js/jquery.js"></script>
 <%
 		if(request.getSession().getAttribute("memberName")!=null){
 			String myname = (String)request.getSession().getAttribute("memberName");
 %>
 			<script>
 			$(function(){
 				$('.content').fadeOut();
		        $('#myHome').fadeIn();
		        $('#myname').text("<%=myname %>");
 			});
	 			
		       
 			</script>
 <%
 		}else{
 %>
 			<script>
 				
       		 $(function(){
 				 $('.content').fadeIn();
       			 $('#myHome').fadeOut();
       			 $('#showMessage').fadeIn(3000);
 				 $("#showMessage").fadeOut(3000);

 				
 			});
 			
 			</script>
 <%
 		}
  %>
  
  <%
  		ArrayList<Song> songs = (ArrayList<Song>)request.getAttribute("song");
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
    </div>
</div>
<!-- 标题 -->
<div class="nav">
    <ul>
        <li><a href="homepage.html">首页</a></li>
        <li><a href="singersCatagory.html">歌手</a></li>
         <li><a href="singerList.html">榜单</a></li>
       <li><a href="musicBox.html" id="hit">音乐盒</a></li>
        <li><a href="client.html">下载客户端</a></li>
    </ul>
</div>

<!-- 主体内容 -->
<div class="content">
    <div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div>
    </a>
    <div id="contMid">
        <img src="../images/tg.png" height="135" width="980"><br/>

        <div class="button raised clickable contentlogin" id="contentlogin1" onclick="btnLogin_onclick()">
            <input type="checkbox" class="toggle"/>

            <div class="anim"></div>
            <div id="liji">立即登录</div>
        </div>

        <div class="button raised clickable contentlogin" id="contentlogin2">
            <input type="checkbox" class="toggle"/>

            <div class="anim"></div>
            <div id="youke" style="color:white">没有账号？</div>
        </div>

    </div>

</div>

<!-- content -->


<!-- 我的音乐盒主页 -->
<div id="myHome" style="display:none;">
    <!-- 我的音乐盒主页头部 -->
    <div id="Boxtop">
        <div id="toux"><img src="../images/tx.jpg" width="100" height="100"></div>
        <div id="myname">游客</div>
        <div id="topbottom">
            <div id="topBottomFont">
                <div>我喜欢</div>
                <div>我创建的歌单</div>
                <div>粉丝</div>
                <div class="zhuxiao" onclick="signOut()">注销</div>
            </div>
        </div>
    </div>
    <!-- 我的音乐盒主页歌曲 -->
    <div id="BoxContain">
        <div class="BoxContainTitle">
            <div id="titleone">歌曲</div>
            <div id="titletwo">歌单</div>
            <div id="titlethree">专辑</div>
            <div id="titlefour">MV</div>
        </div>
        <!-- 按钮 -->
        <div id="BoxContainbtn">
            <div id="btnn1">
                <img src='../images/play11.png' width="20" height="20"/> 播放全部
            </div>
            <div id="btnn2">
                <img src='../images/zt.png' width="20" height="20"/> 暂停
            </div>
            <div id="addSong">
                <img src='../images/add.png' width="20" height="20"/> 添加本地歌曲
            </div>
            <div id="btnn3">
                <img src='../images/plcz.png' width="20" height="20"/> 上一首
            </div>
            <div id="btnn4">
                <img src='../images/qx.png' width="20" height="20"/> 下一首
            </div>
        </div>
        <!-- mysongs -->
        <div class="mysongs" id="contain">
        <input type="file" id="fileUp" style="display: none" onchange="addFileMessage(this);"/>
        
            <table>
                <thead>
                <tr>
                    <td></td>
                    <td>歌曲</td>
                    <td>歌手</td>
                    <td></td>
                    <td>时长</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
<%
for(Song s:songs){
 %>
 	
				<tr>
					<td></td>
					<td><%=s.getName() %></td>
					<td><%=s.getSingerName() %></td>
				<td>
					<div class="musicc">
						<span></span><span></span><span></span><span></span><span></span><span></span>
					</div>
				</td>
				<td><%=s.getDuration() %></td>
					<td class="del">
					<input type="hidden" id="thisRowRes" value="<%=s.getRes() %>"/>
						<div class="imags" style="display: none;">
						<img src="../images/bofang.png" height="25" width="25" class="playbo">
						<img src="../images/tianjia.png" height="25" width="25" id="addSong">
						<img src="../images/xzz.png" height="25" width="25">
						<img src="../images/zhuanfa.png" height="25" width="25">
						<img src="../images/dele.png" height="25" width="25" class="deleimg">
						</div>
					</td>
				</tr>
<%
}
 %>  
                </tbody>

            </table>
<!-- <audio id='myaudio' controls>
        <source src='audio/匆匆那年-王菲.mp3' type='audio/mpeg'>
        浏览器不支持
</audio> -->


        </div>


    </div>
    <div class="pages clearFloat">
        <ul>
            <li id="before"><</li>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
            <li id="after">></li>
        </ul>
    </div>

</div>
 <iframe id="myplayer" name="myiframe" src="player.html" frameborder="0"></iframe>
<div id="footer" style="height:298px">
    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班
</div>

<script src='../js/box.js'></script>
<script src="../js/global.js" ></script>

</body>
</html>