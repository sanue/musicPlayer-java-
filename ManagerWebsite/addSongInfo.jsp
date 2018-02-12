<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.sectionDao"%>
<%@page import="com.music.bean.Section"%>
<%@page import="com.music.bean.Singer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.dao.singerDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/lib/bootstrap/css/bootstrap.css">
</head>
<body>
<% 
	sectionDao sectionDao = new sectionDao(); 
	ArrayList<Section> sections = sectionDao.getSections(); 
	
	singerDao singerDao = new singerDao();
	Singer singer = new Singer();
	ArrayList<Singer> singers = singerDao.getAllSingers();
 %>
<form action="addSongInfo.do" method="post" enctype="multipart/form-data">
  <div class="col-lg-12">
        <div class="box">
            <header>
                <div class="icons"><i class="fa fa-table"></i></div>
                <h1 style="text-align:center">添加歌曲</h1>
            </header>
            <div id="collapse4" class="body">
                <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
                    <tr>
                        <th colspan="2"><br></th>
                    </tr>
                    </thead>
                    <tbody>
			<tr>
				<td>请输入歌曲名称：</td>
				<td><input type="text" id="songName" name="songName" onblur="getPin()"/></td>
			</tr>
			<tr>
				<td>请输入时长：</td>
				<td><input type="text" id="duration" name="duration"/></td>
			</tr>
			<tr>
				<td>请输入歌手名：</td>
				<td>
					
					<select id="singerId" name="singerId">
					<%
					 int j = 0;
					 for(Singer s : singers){
					 j++;
					 %>
						<option value="<%=j %>"><%=s.getName() %></option>
					<%
					}
					 %>
					</select>
				</td>
			</tr>
			<tr>
				<td>个人简介：</td>
				<td>
					<textarea cols="20" rows="4" name="introduce" id="introduce"></textarea>
				</td>
			</tr>
			<tr>
				<td>分类：</td>
				<td>
					<select id="section" name="sectionId">
						<%
						 int i=0;
						 for(Section c : sections){
						 i++;
						 %>
							<option value="<%=i %>"><%=c.getName() %></option>
						<%
						
						} %>
					</select>
				</td>
			</tr>
			<tr>
				<td>图片：</td>
				<td>
				<input type="button" value="浏览图片" onclick="btn_pic()"/>
				<input name="file1" id="file" type="file" size="20" style="display:none" onchange="" ></td>
			</tr>  
			<tr>
				<td>文件：</td>
				<td>
				<input type="button" value="浏览文件" onclick="btn_file()"/>
				<input type="file" id="file2" name="file2" style="display:none"/></td>
			</tr>
                    </tbody>                
                </table>
            </div>
        </div>
    </div>
   
<!--<input type="button" value="确定提交" onclick="addNewSinger()"/>
--><input type="submit" id="submit"  value="确定提交"/>
</form>
<script src="../js/jquery.js"></script>
<script>
function btn_pic(){
	$('#file').click();
}
function btn_file(){
	$('#file2').click();
}
</script>
<!--<form action="addSongInfo.do" method="post">
	请输入歌曲ID：<input type="text" id="id" name="id"/><br/>
	请输入歌曲名称：<input type="text" id="songName" name="songName"/><br/>
	请输入时长：<input type="text" id="duration" name="duration"/><br/>
	请输入歌手名：<input type="text" id="singerName" name="singerName"/><br/>
	请输入分类名：<input type="text" id="section" name="sectionName"/><br/>
	个人简介：<input type="text" id="introduce" name="introduce"/><br/>
	图片：<input type="text" id="songpic" name="songpic"/><br/>
	<input name="file" id="pic" type="file" size="20" >
	文件：<input type="file" /> 
	<input type="submit" value="确定提交" />
</form>
--></body>
</html>