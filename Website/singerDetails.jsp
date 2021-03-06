<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Song"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我选择的歌星</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/global.css">
	<link rel="stylesheet" type="text/css" href="../css/singerDetails.css">
</head>
<body>
 <%
		ArrayList<Song> songs = (ArrayList<Song>)request.getAttribute("songs");
 %>

    <div id="title"><!-- 头部 -->
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
		</ul>
	</div>
	<!-- 主体内容 -->
	<div class="content" id="content2">
	<div class="returnTop"><a href='#title'><img src="../images/fd1.png" height="80" width="80"></div></a>
	     <!-- 歌手标题 -->
	     <div class="myImg">
	        <img src="../images/wf.jpg" height="180" width="180" >
            <div class="singerName">王菲</div>
	            <div class="messages">
		            <img src="../images/star.png" height="30" width="30"><a href="#">基本信息</a>
		         </div>
		        <div class="songs">
		             <img src="../images/mus.png" height="30" width="30"><a href="#">所有歌曲</a>
		        </div>
		        <div class="zhuanj">
		             <img src="../images/zj.png" height="30" width="30"><a href="">专辑</a>
		        </div>
		        <div class="mv">
		             <img src="../images/mv.png" height="30" width="30"><a href="">MV</a>
		        </div>
		        <div class="singerPic">
		             <img src="../images/singerPic.png" height="30" width="30"><a href="">图片</a>
		        </div>
	     </div>
	     <div class="lovesingers blur"></div> 
		<!-- 基本信息 -->
<div class="singerDetails">
	<div class="detailsTitle" id="detailsTitle"><img src="../images/favorite.png" height="30" width="30"> 基本信息</div>
	<table id="detailM">
		<tr id="one">
			<td>姓名：</td>
			<td>性别：</td>
		</tr>
		<tr id="two">
			<td>别名：</td>
			<td>生日：</td>
		</tr>
		<tr id="three">
			<td>地区：</td>
			<td>个人简介：</td>
		</tr>
	</table> 

	<div class="detailsTitle"><img src="../images/favorite.png" height="30" width="30"> 个人简介</div>
	<div id="singerIntroduce">
<pre>
王菲，英文名Faye Wong，曾用艺名王靖雯（Shirley Wong），1969年8月8日出生于北京，华语著名女歌手、演员。王菲1987年随父亲举家移居香港，经朋友介绍拜戴思聪为师学习唱歌，随后在1989年出道。1991年初惜别歌坛，远赴美国修读音乐。1992年王菲重返乐坛，英文名由Shirley改作Faye再度出发。 
 
王菲在两岸三地拥有极高知名度，是自1990年代初期至今华语乐坛最出色的女歌手之一，被誉为大中华地区的乐坛天后，亦为吉尼斯世界纪录官方认证的最高销量港粤女歌手。除了华人圈，王菲亦是首位登上美国《时代》杂志封面、接受CNN专访以及首位在日本武道馆举办个人演唱会的华人歌手，被《时代》杂志誉为“流行乐坛女王”，其活跃时期更曾被媒体誉为“王菲时代”。 
 
2005年与李亚鹏结婚后，王菲曾一度引退隐居北京，但于2010年后开始重返舞台，在其个人演唱会及少数公益、慈善、佛教盛会等重要场合公开露面。2013年9月13日，王菲通过微博对外宣布与李亚鹏离婚。 
 
中文名：王菲(十五岁前随母亲姓) 
英文名：Faye Wong (Shirley已弃用) 
艺名：王靖雯(已弃用) 
出生地点：北京 
出生日期：1969年8月8日 
生肖：鸡 
职业：歌手 
喜爱的季节：秋季  
喜爱的运动：排球 游泳  
喜欢的人物：家人  
喜爱娱乐：和朋友在一起打麻将  
喜欢的衣服：舒适、简单  
时常出没的地方：家 
最怕的事：与陌生人沟通 
星座：狮子座 
喜爱食物：零食  
身高：172cm 
喜爱饮品：水  
近视：400 度左右 
喜欢季节：秋天  
家庭状况：父亲王佑林、母亲夏桂影(去世) 、哥哥王弋、女儿童童(窦婧童),李嫣 、丈夫李亚鹏 
喜爱歌手：邓丽君,Cranberries,Cocteau Twins, Air,Sinead O'Connor. 
教育程度：中学毕业 
喜爱颜色：所有颜色  
就读小学：北京地坛小学  
喜爱运动：游水和所有球类运动  
就读中学：北京市东直门中学  
喜欢演员：周润发  
嗜好：听音乐  
喜爱节日：农历新年  
宗教信仰：佛教(密宗)  
最满意的专辑：《浮躁》  
性格： 喜欢事情简单明确，不喜欢复杂  
喜爱歌曲：Kisses In The Wind，冷战  
初恋年龄：17岁 
喜爱动物：狗  
讨厌的地方：肮脏的地方 
喜爱地方：北京，巴黎，埃及  
失望的事情：好多  
个人愿望：永远都开心  
圈中好友：那英 刘嘉玲 林青霞 张信哲 陶晶莹 林夕 景岗
</pre>
	</div>
        </div> 
        
<!-- 所有歌曲 -->
	<div class="allsongs disappear" id="allsongs" >
	<div class="detailsTitle"><img src="../images/favorite.png" height="30" width="30"> 所有歌曲</div>
		<div class="btns">
			<div id="play"><img src='../images/play_02.png' width="20" height="20" />     播放</div>
			<div id="add"><img src='../images/add.png' width="20" height="20" />     添加</div>
		</div>

		<ul class="dymaUl">
			
			<%
				for(Song s:songs){
			 %>
			 <li>
				<div class="name"><%=s.getName() %></div>
				<div class="songName"><%=s.getSingerName() %></div>
				<div class="musicc">
				  <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span></div>
			      <div class="operate">
	<img src="../images/play_03.png" width="20" height="20" />
	<img src="../images/zt.png" width="20" height="20" />
	<img src="../images/add.png" width="20" height="20" />
	<img src="../images/shouc.png" width="20" height="20" />
			                </div>
			</li>
			 <%
			 }
			  %>
			<!-- <li>
				<div class="name">王菲</div>
				<div class="songName">红豆</div>
				<div class="musicc">
				  <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span></div>
			      <div class="operate">
	<img src="images/play_03.png" width="20" height="20" />
	<img src="images/zt.png" width="20" height="20" />
	<img src="images/add.png" width="20" height="20" />
	<img src="images/shouc.png" width="20" height="20" />
			                </div>
			</li>
			<li>
				<div class="name">王菲</div><div class="songName">红豆</div><div class="musicc">
				  <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span>
			      <span></span></div><div class="operate">
			                	<img src="images/play_03.png" width="20" height="20" />
			                	<img src="images/zt.png" width="20" height="20" />
			                	<img src="images/add.png" width="20" height="20" />
			                	<img src="images/shouc.png" width="20" height="20" />
			                </div>
			</li> -->
		</ul>


<!-- 分页 -->
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



 

</div>	
<!-- footer -->
		<div id="footer">
		    CopyRight 苏州安艾艾迪职业培训中心 2016H50711 班 汪荷怡所有
		</div>
<script src="../js/jquery.js"></script>
<script src="../js/singerDetails.js"></script>
</body>
</html>