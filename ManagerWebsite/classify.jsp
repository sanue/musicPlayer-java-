<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Classify"%>
<%@page import="com.music.dao.ClassifyDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Classify> classifies = new ArrayList<Classify>();
		ClassifyDao classifyDao = new ClassifyDao();
		
		classifies = classifyDao.getClassifies();
	 %>
	<div class="col-lg-6 ui-sortable">
        <div class="box ui-sortable-handle">
            <header>
                <h5>歌手分类页</h5>
            </header>
           
        </div>
    </div>
	 
	  <div id="stripedTable" class="body collapse in" aria-expanded="true">
	   <a href="javascript:showN('myadcla');" style="float:right;text-decoration:none"><div class="claBtn">添加新分类</div></a> 
	    <a href="javascript:showN('mymocla');" style="float:right;text-decoration:none"><div class="claBtn">修改分类名称</div></a> 
	 <table class="mytb SingerClatb table table-striped responsive-table">
	 	<thead>
	 		<tr>
		 		<th>序号</th>
		 		<th>歌手分类名称</th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		
	 
	  <%
	 		for(Classify c : classifies){
	 			
	  %><tr>
		  		<td><%=c.getId() %></td>
		  		<td><%=c.getName() %></td>
	 	 </tr>
	  <%
	  }
	   %>
	   		
	   </tbody>
	   </table>
	   </div>
	    
</body>
</html>