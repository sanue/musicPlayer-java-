<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.bean.User"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 	<!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/lib/bootstrap/css/bootstrap.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="../assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="../assets/lib/metismenu/metisMenu.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="../assets/lib/animate.css/animate.css">

    
    <link rel="stylesheet" href="../assets/css/style-switcher.css">



</head>
<body>
	<% 
			String userName = ""; 
			String nick = ""; 
 			if(request.getSession().getAttribute("User")!=null){ 
 			    User user = new User(); 
				user = (User) request.getSession().getAttribute("User"); 
				nick = user.getNickName(); 
			}else{ 
				response.sendRedirect("manager.jsp"); 
			} 
	 %>
	<div class="mybox" id="myadsec" style="display:none">
		<div id="addSection" class="mo">
			<%@ include file="addSection.jsp" %>
		</div>
	</div>
	<div class="mybox" id="mymosec" style="display:none">
		<div id="modSection" class="mo">
			<%@ include file="modSection.jsp" %>
		</div>
	</div>
	<div class="mybox" id="myadcla" style="display:none">
		<div id="addClassify" class="mo">
			<%@ include file="addclassify.jsp" %>
		</div>
	</div>
	<div class="mybox" id="mymocla" style="display:none">
		<div id="modClassify" class="mo">
			<%@ include file="modClassify.jsp" %>
		</div>
	</div>
	
	
	 <div class="bg-dark dk" id="wrap">
     
                <div id="top">
                    <!-- .navbar -->
                    <nav class="navbar navbar-inverse navbar-static-top">
                        <div class="container-fluid">
                     
                    
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <header class="navbar-header">
                    
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a href="managerHome.html" class="navbar-brand"><img src="../assets/img/logo.png" alt=""></a>
                    
                            </header>
                    
                    
                    
                            <div class="topnav">
                                <div class="btn-group">
                                    <a data-placement="bottom" data-original-title="Fullscreen" data-toggle="tooltip"
                                       class="btn btn-default btn-sm" id="toggleFullScreen">
                                        		全屏
                                    </a>
                                </div>
                                
                                <div class="btn-group">
                                    <div id="signOut" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom"
                                       class="btn btn-metis-1 btn-sm" onclick="signOut()">注销</div>
                                </div>
                                
                    
                            </div>
                    
                    
                    
                    
                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                    
                                <!-- .nav -->
                               <ul class="nav navbar-nav">
                                    <li><a href="javascript:show('modify')" target="_Blank">修改密码</a></li>
                                   
                                    	<li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            	歌曲栏目管理 <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:show('section')">显示现有所有栏目</a></li>
                                            <li><a href="javascript:show('addSection');">添加新栏目</a></li>
                                            <li><a href="javascript:show('modSection')">修改栏目名称</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            	歌手分类管理 <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:show('classify')">显示所有分类列表</a></li>
                                            <li><a href="javascript:show('addClassify')">添加新分类</a></li>
                                            <li><a href="javascript:show('modClassify')">修改分类名称</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            	歌手信息管理 <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="singerInfo.html">显示歌手信息列表</a></li>
                                            <li><a href="javascript:show('addSingerInfo')">添加新歌手信息</a></li>
                                           
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            	歌曲信息管理<b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="songInfo.html">显示歌曲信息列表</a></li>
                                            <li><a href="addSongInfo.jsp">添加新歌曲信息</a></li>
                                            <li><a href="javascript:show('modSongInfo')">修改歌曲信息</a></li>
                                        </ul>
                                    </li>
                                    
                                </ul>
                                <!-- /.nav -->
                            </div>
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                    <!-- /.navbar -->                        <header class="head">
                                <div class="search-bar">
                                    <form class="main-search" action="">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Live Search ...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary btn-sm text-muted" type="button">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                    <!-- /.main-search -->                                </div>
                                <!-- /.search-bar -->
                            <div class="main-bar">
                                <h3>
              <i class="fa fa-home"></i>&nbsp;
            欢迎您！<%=nick %>
          </h3>
                            </div>
                            <!-- /.main-bar -->
                        </header>
                        <!-- /.head -->
                </div>
                <!-- /#top -->
                <div class="btn-group" >
                                    <a data-placement="bottom" data-original-title="Show / Hide Left" data-toggle="tooltip"
                                       class="btn btn-primary btn-sm toggle-left" id="menu-toggle">
                                       	 显示或隐藏菜单栏
                                    </a>
                                    <a data-placement="bottom" data-original-title="Show / Hide Right" data-toggle="tooltip"
                                       class="btn btn-default btn-sm toggle-right">
                                        <span class="glyphicon glyphicon-comment">
                                               	设置后台主题
                                        </span>
                                    </a>
                                </div>
                    <div id="left">
                    
                        <div class="media user-media bg-dark dker">
                            <div class="user-media-toggleHover">
                                <span class="fa fa-user"></span>
                            </div>
                           
                        </div>
                        <!-- #menu -->
                        <ul id="menu" class="bg-blue dker">
                                  <li class="nav-header">Menu</li>
                                
                                  <li>
                                    <a href="javascript:show('homepage')">
                                        <span class="glyphicon glyphicon-heart-empty"></span><span class="link-title">&nbsp;主页</span>
                                    </a>
                                  </li>
                                  <li>
                                    <a href="javascript:show('modify')">
                                       <span class="glyphicon glyphicon-asterisk"></span><span class="link-title">&nbsp;修改密码</span>
                                    </a>
                                  </li>
                                  <li>
                                    <a href="#">
                                     <span class="glyphicon glyphicon-th-list"></span>
                                      <span class="link-title">歌曲栏目管理模块</span>
                                      <span class="fa arrow"></span>
                                    </a>
                                    <ul class="collapse">
                                      <li>
                                        <a href="javascript:show('section');">
                                          &nbsp; 显示现有所有栏目 </a>
                                      </li>
                                      <li>
                                        <a href="javascript:showN('myadsec');">
                                          &nbsp; 添加新栏目 </a>
                                      </li>
                                      <li>
                                        <a href="javascript:showN('mymosec');">
                                         &nbsp; 修改栏目名称 </a>
                                      </li>
                                    </ul>
                                  </li>
                                  <li class="">
                                    <a href="javascript:;">
                                      <span class="glyphicon glyphicon-list"></span>
                                      <span class="link-title">歌手分类管理</span>
                                      <span class="fa arrow"></span>
                                    </a>
                                    <ul class="collapse">
                                      <li>
                                        <a href="javascript:show('classify');">
                                          &nbsp; 显示所有分类列表 </a>
                                      </li>
                                      <li>
                                        <a href="javascript:showN('myadcla');">
                                          &nbsp; 添加新分类 </a>
                                      </li>
                                      <li>
                                        <a href="javascript:showN('mymocla');">
                                          &nbsp; 修改分类名称 </a>
                                      </li>
                                    </ul>
                                  </li>
                                  <li class="">
                                    <a href="javascript:;">
                                     <span class="glyphicon glyphicon-user"></span>
                                      <span class="link-title"> 歌手信息管理模块</span>
                                      <span class="fa arrow"></span>
                                    </a>
                                    <ul class="collapse">
                                      <li>
                                        <a href="singerInfo.html">
                                          &nbsp; 显示歌手信息列表 </a>
                                      </li>
                                      <li>
                                        <a href="addSingerInfo.jsp">
                                         &nbsp; 添加新歌手信息 </a>
                                      </li>
                                      
                                    </ul>
                                  </li>
                                  <li>
                                    <a href="table.html">
                                      <span class="glyphicon glyphicon-headphones"></span>
                                      <span class="link-title">歌曲信息管理模块</span>
                                       <span class="fa arrow"></span>
                                    </a>
                                    <ul class="collapse">
                                      <li>
                                        <a href="songInfo.html">
                                          &nbsp; 显示歌曲信息列表 </a>
                                      </li>
                                      <li>
                                        <a href="addSongInfo.jsp">
                                          &nbsp; 添加新歌曲信息 </a>
                                      </li>
                                      <li>
                                        <a href="modSongInfo.jsp">
                                          &nbsp; 修改歌曲信息 </a>
                                      </li>
                                    </ul>
                                  </li>
                                  
                                  <li>
                                    <a href="file.html">
                                    <span class="glyphicon glyphicon-user"></span>
                                      <span class="link-title">
                            		会员信息统计
                                  </span>
                                  <span class="fa arrow"></span>
                                    </a>
                                    <ul class="collapse">
                                      <li>
                                        <a href="javascript:show('members');">
                                          &nbsp; 显示会员列表</a>
                                      </li>
                                              </ul>
                                  </li>
                                </ul>
                        <!-- /#menu -->
                    </div>
                    <!-- /#left -->
                <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter" style="height:500px;">
                        
<div class="col-lg-12" id="homepage">
	<%@ include file="homepage.jsp" %>
</div>
<div class="col-lg-12" id="modify" style="display:none">
	<%@ include file="modify.jsp" %>
</div>
<div class="col-lg-12" id="section" style="display:none">
	<%@ include file="section.jsp" %>
</div>


<div class="col-lg-12" id="classify" style="display:none">
	<%@ include file="classify.jsp" %>
</div>


<div class="col-lg-12" id="modSingerInfo" style="display:none">
	<%@ include file="modSingerInfo.jsp" %>
</div>

<div class="col-lg-12" id="advertisement" style="display:none">
	<%@ include file="advertisement.jsp"%>
</div>
<div class="col-lg-12" id="addAdvertisement" style="display:none">
	<%@ include file="addAdvertisement.jsp" %>
</div>
<div class="col-lg-12" id="delAdvertisement" style="display:none">
	<%@ include file="delAdvertisement.jsp" %>
</div>
<div class="col-lg-12" id="members" style="display:none">
	<%@ include file="members.jsp"%>
</div>






                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.outer -->
                </div>
                <!-- /#content -->
              
                    <!-- /#right -->
            </div>
            <!-- /#wrap -->
            <footer class="Footer bg-dark dker">
                <p>2016 &copy; 苏州NIIT 汪荷怡 </p>
            </footer>
            
            <!--jQuery -->
            <script src="../assets/lib/jquery/jquery.js"></script>

            <!--Bootstrap -->
            <script src="../assets/lib/bootstrap/js/bootstrap.js"></script>
            <!-- MetisMenu -->
            <script src="../assets/lib/metismenu/metisMenu.js"></script>
            <!-- Screenfull -->
            <script src="../assets/lib/screenfull/screenfull.js"></script>


            <!-- Metis core scripts -->
            <script src="../assets/js/core.js"></script>
            <!-- Metis demo scripts -->
            <script src="../assets/js/app.js"></script>
            <script src="../assets/js/style-switcher.js"></script>
            <script src="../js/managerHome.js"></script>
</body>
</html>