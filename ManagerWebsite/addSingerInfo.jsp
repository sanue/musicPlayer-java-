<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.ClassifyDao"%>
<%@page import="com.music.bean.Classify"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/lib/bootstrap/css/bootstrap.css">
</head>
<body>
<%  
	ClassifyDao classifyDao = new ClassifyDao();  
	ArrayList<Classify> classifies = classifyDao.getClassifies();  
 %>

<form action="FileUpload.do" method="post" enctype="multipart/form-data">
  <div class="col-lg-12">
        <div class="box">
            <header>
                <div class="icons"><i class="fa fa-table"></i></div>
                <h1 style="text-align:center">添加歌手</h1>
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
				<td>请输入歌手姓名：</td>
				<td><input type="text" id="singerName" name="singerName" onblur="getPin()"/></td>
			</tr>
			<tr>
				<td>拼音码：</td>
				<td><input type="text" id="pinyin" name="pinyin"/></td>
			</tr>
			<tr>
				<td>请输入歌手性别：</td>
				<td>
					<select name="sex" id="sex">
						<option>男</option>
						<option>女</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="date" id="birth" name="birth"/></td>
			</tr>
			<tr>
				<td>昵称：</td>
				<td><input type="text" id="nickName" name="nickName"/></td>
			</tr>
			<tr>
				<td>个人简介：</td>
				<td>
					<textarea cols="20" rows="4" name="introduce" id="introduce"></textarea>
				</td>
			</tr>
			<tr>
				<td>地区编号：</td>
				<td>
					<select id="classify" name="classifyId">
						<%
						 int i=0;
						 for(Classify c : classifies){
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
				<input type="button" value="浏览" onclick="btn_onclick()"/>
				<input name="file1" id="file" type="file" size="20" style="display:none" onchange="" ></td>
			</tr>  
                    </tbody>                
                </table>
            </div>
        </div>
    </div>

<!--<input type="button" value="确定提交" onclick="addNewSinger()"/>
--><input type="submit" id="submit"  value="确定提交"/>
</form>

<!--<form action="addsingerInfo.do" method="post">
	请输入歌手ID：<input type="text" id="id" name="id"/><br/>
	请输入歌手姓名：<input type="text" id="singerName" name="singerName"/><br/>
	请输入拼音码：<input type="text" id="pinyin" name="pinyin"/><br/>
	请输入歌手性别：<input type="text" id="sex" name="sex"/><br/>
	出生日期：<input type="text" id="birth" name="birth"/><br/>
	昵称：<input type="text" id="nickName" name="nickName"/><br/>
	个人简介：<input type="text" id="introduce" name="introduce"/><br/>
	地区编号：<input type="text" id="classify" name="classifyId"/><br/>
	图片：<input type="text" id="singerpic" name="singerpic"/><br/>
	<input name="file1" id="pic" type="file" size="20" >
	<input type="submit" value="确定提交" />
	</form>

	
	
-->
<script type="text/javascript" src="../js/jquery.js"></script>
<script>
function btn_onclick(){
$('#file')[0].click();
}
function getPin(){
    var singerName = $('#singerName').val();
	$.get(
	'getPin.do',
	{'singerName':singerName},
	function(result){
		$('#pinyin').val(result);
	},
	'text'
	);
}
function addNewSinger(){


	var singerName = $('#singerName').val();
	var pinyin = $('#pinyin').val();
	var sex = $('#sex').val();
	var birth = $('#birth').val();
	var nickName = $('#nickName').val();
	var introduce = $('#introduce').val();
	var classifyId = $('select')[1].value;
	
	$.post(
	'addsingerInfo.do',
	//name, pinyin, sex, birth, nickname, classifyId, introduce
	{'singerName':singerName,'pinyin':pinyin,'sex':sex,'birth':birth,'nickName':nickName,'introduce':introduce,'classifyId':classifyId}
	);
}
</script>
</body>
</html>