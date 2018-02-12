<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.bean.Section"%>
<%@page import="com.music.dao.sectionDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/section.css" rel="stylesheet"/>
</head>
<body>
	<%
		  ArrayList<Section> sections = new ArrayList<Section>();
		  sectionDao sectionDao = new sectionDao();
		  sections = sectionDao.getSections();
	 %>
	 <div class="col-lg-6 ui-sortable">
        <div class="box ui-sortable-handle">
            <header>
                <h5>歌曲分类页</h5>
            </header>
           
        </div>
    </div>
	 
	  <div id="stripedTable" class="body collapse in" aria-expanded="true">
	   <a href="javascript:showN('myadsec');" style="float:right;text-decoration:none"><div class="claBtn">添加新分类</div></a> 
	    <a href="javascript:showN('mymosec');" style="float:right;text-decoration:none"><div class="claBtn">修改分类名称</div></a> 
	 <table class="mytd SongClatb table table-striped responsive-table">
	 	<thead>
	 		<tr>
		 		<th>序号</th>
		 		<th>歌曲分类名称</th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		
	 
	  <%
	 		for(Section s : sections){
	 			
	  %><tr>
		  		<td><%=s.getId() %></td>
		  		<td><%=s.getName() %></td>
	 	 </tr>
	  <%
	  }
	   %>
	   		
	   </tbody>
	   </table>
	 
	   </div>
	    
</body>
</html>