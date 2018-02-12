<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.singerDao"%>
<%@page import="com.music.bean.Singer"%>
<%@page import="com.music.bean.RecordSet"%>
<%@page import="java.util.ArrayList"%><!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SingerTable</title>

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
   

  </head>

        <body class="  ">
          <% 
 			if(request.getSession().getAttribute("User")==null){ 
				response.sendRedirect("manager.jsp"); 
			} 
		 %>
        <%  
       		String url="";

        RecordSet<Singer> recordSet = (RecordSet<Singer>)request.getAttribute("singers");
        int pageIndex = (Integer)(request.getAttribute("Page"));
        
         	if(request.getAttribute("file1")!=null){
         	  url = (String) request.getAttribute("file1");
         	}
         %><!--
         <img alt="go" src="../icon/<%=url %> " />
         
            --><div class="bg-dark dk" id="wrap">
                <div id="top">
                    <!-- .navbar -->
                    <nav class="navbar navbar-inverse navbar-static-top">
                        <div class="container-fluid">
                    
                    
                            <!-- Brand and toggle get grouped for better mobile display -->
                           
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
            歌手管理列表： &nbsp;&nbsp;&nbsp;&nbsp;
            
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
                <div class="icons"></div>
                <h5>歌手列表</h5>
          
            </header>
            <div id="collapse4" class="body">
                <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
                    <tr>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>出生日期</th>
                        <th>昵称</th>
                      	<th>个人简介</th>
                        <th>地区</th>
                        <th>图片</th>
                        <th style="text-align:center">修改歌手</th>
                    </tr>
                    </thead>
                    <tbody id="myTb">
                           <%
                          
                             for(Singer s : recordSet.getRecordSet()){
                                
                            %> 
                             <tr>
                                <td><%=s.getName() %></td>
                                <td><%=s.getSex() %></td>
                                <td><%=s.getBirth() %></td>
                                <td><%=s.getNickname() %></td>
                                <td><%=s.getIntroduce() %></td>
                                <td><%=s.getClassifyName() %></td>
                                <td><img src="../icon/<%=s.getIcon() %>" width="90" height="90" /></td>
                                <td id="modNewSinger" onclick="modSinger(<%=s.getId() %>,'<%=s.getName() %>','<%=s.getSex() %>','<%=s.getBirth() %>','<%=s.getNickname() %>','<%=s.getIntroduce() %>','<%=s.getClassifyName() %>','<%=s.getIcon() %>')"><span class="glyphicon glyphicon-pencil"></span>
                                
                                </td>
                             </tr>
                            <%
 							
                            }
                             %>
                           
                    </tbody>                
                </table>
                 <ul class="pagination">
            <%for(int i = 0 ; i < recordSet.getPageCode() ;i++){%>
            <li><a href="singerInfo.html?page=<%=i + 1%>"><%=i + 1%></a></li>
            <%}%>
        		</ul>
            </div>
        </div>
    </div>
        <div>
         <button style="width:50%;height:50px;margin:20px;float:right" type="button" class="btn btn-primary" onclick="window.open('addSingerInfo.jsp')">添加歌手</button>
        </div> 					
</div>
<!-- /.row -->





                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.outer -->
                </div>
                <!-- /#content -->
               
            </div>
            <!-- /#wrap -->
            <footer class="Footer bg-dark dker">
                <p>2016 &copy; Metis Bootstrap Admin Template</p>
            </footer>
            <!-- /#footer -->
            
            
            <!--jQuery -->
            <script src="../assets/lib/jquery/jquery.js"></script>

                  
            <!--Bootstrap -->
            <script src="../assets/lib/bootstrap/js/bootstrap.js"></script><!--
             MetisMenu 
            <script src="../assets/lib/metismenu/metisMenu.js"></script>
            --><!-- Screenfull -->
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
            <script src="../js/singerInfo.js"></script>
        </body>

</html>
