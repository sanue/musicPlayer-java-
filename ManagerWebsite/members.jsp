<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.music.dao.MemberDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.music.bean.Member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDao memberDao = new MemberDao();
		ArrayList<Member> members = memberDao.getAllMembers();
	 %>
	 
	 <table>
	 	 <thead>
		 	<tr>
		 		<th>姓名</th>
		 		<th>性别</th>
		 		<th>密码</th>
		 	</tr>
	 	</thead>
	 	<tbody>
	 		<%
	 			for(Member m : members){
	 			
	 		 %>
	 		 	<tr>
	 		 		<td><%=m.getMemberName() %></td>
	 		 		<td><%=m.getSex() %></td>
	 		 		<td><%=m.getPassword() %></td>
	 		 	</tr>
	 		 <%
	 		 }
	 		  %>
	 	</tbody>
	 </table>
</body>
</html>