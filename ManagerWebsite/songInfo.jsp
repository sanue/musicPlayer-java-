<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.singerDao"%>
<%@page import="com.music.bean.Singer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.dao.SongDao"%>
<%@page import="com.music.bean.Song"%>
<%@page import="com.music.dao.sectionDao"%>
<%@page import="com.music.bean.RecordSet"%>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Table</title>
    

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



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="../assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="../assets/less/theme.less">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
	
  </head>

        <body class="  ">
        <% 
 			if(request.getSession().getAttribute("User")==null){ 
				response.sendRedirect("manager.jsp"); 
			} 
	 %>
        
        <%  
       	  RecordSet<Song> recordSet = (RecordSet<Song>)request.getAttribute("songs");
          int pageIndex = (Integer)(request.getAttribute("Page"));
         %>
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
                               
                            </header>
                    
                    
                    
                            <div class="topnav">
                            <button type="button" class="btn btn-info" onclick="window.location.href='managerHome.html'">回到主页</button>
   
                              
                                <div class="btn-group">
                                     <div id="signOut" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom"
                                       class="btn btn-metis-1 btn-sm" onclick="signOut()">注销</div>
                                </div>
                                
                    
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
                                                  
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                    <!-- /.main-search -->                                </div>
                                <!-- /.search-bar -->
                            <div class="main-bar">
                                <h3>
             &nbsp;
            Table &nbsp;&nbsp;&nbsp;&nbsp;
            
          </h3>
                            </div>
                            <!-- /.main-bar -->
                        </header>
                        <!-- /.head -->
                </div>
                <!-- /#top -->
                    
                    <!-- /#left -->
                <div id="content">
                    <div class="outer">
                        <div class="inner bg-light lter">
                            <!--Begin Datatables-->
<div class="row">
  <div class="col-lg-12">
        <div class="box">
            <header>
                <div class="icons">
                <h5>歌曲列表</h5>
               
            </header>
            <div id="collapse4" class="body">
          
                <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
                    <tr>
 
                        <th>歌曲名</th>
                        <th>时长</th>
                        <th>歌手名</th>
                        <th>歌曲分类</th>
                      	<th>介绍</th>
                        <th>文件</th>
                        <th>图片</th>
                        <th style="text-align:center">修改歌曲信息</th>
                    </tr>
                    </thead>
                    <tbody>
                           <%
                          		sectionDao sectionDao = new sectionDao();
                          	   
                             for(Song s : recordSet.getRecordSet()){
                                int id = s.getSectionid();
                                String sectionName = sectionDao.getSectionById(id); 
                            %> 
                             <tr>
                                <td><%=s.getName() %></td>
                                <td><%=s.getDuration()%></td>
                                <td><%=s.getSingerName()%></td>
                                <td><%=sectionName%></td>
                                <td><%=s.getIntroduce() %></td>
                                <td><%=s.getRes() %></td>
                                <!--getSongInfo.do -->
                                <td><img src="../icon/<%=s.getIcon() %>" width="90" height="90" style="cursor:pointer" /></td>
                                <td id="modNewSong" onclick="window.open('getSongInfo.do?thisId=<%=s.getId()%>')"><span class="glyphicon glyphicon-pencil"></span>
                                </td>
                             </tr>
                            <%
 							
                            }
                             %>
                           
                    </tbody>                
                </table>
                <ul class="pagination">
		            <%for(int i = 0 ; i < recordSet.getPageCode() ;i++){%>
		            <li><a href="songInfo.html?page=<%=i + 1%>"><%=i + 1%></a></li>
		            <%}%>
        		</ul>
            
            </div>
        </div>
    </div>
    
        <div>
         <button style="width:50%;height:50px;margin:20px;float:right" type="button" class="btn btn-primary" onclick="window.open('addSongInfo.jsp')">添加歌曲</button>
        </div> 
</div>
<!-- /.row -->





                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.outer -->
                </div>
                
            </div>
            <!-- /#wrap -->
            <footer class="Footer bg-dark dker">
                <p>2016 &copy; Metis Bootstrap Admin Template</p>
            </footer>
            <!-- /#footer -->
            <!-- #helpModal -->
            <div id="helpModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- /#helpModal -->
            <!--jQuery -->
            <script src="../assets/lib/jquery/jquery.js"></script><!--

                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.26.6/js/jquery.tablesorter.min.js"></script>
                    --><script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

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

                <script>
                    $(function() {
                      Metis.MetisTable();
                      Metis.metisSortable();
                    });
                </script>

            <script src="../assets/js/style-switcher.js"></script>
            <script src="../js/songInfo.js"></script>
        </body>

</html>
