function signOut(){
	$.get(
			'signout.do',
			function(){
					alert("注销成功");
					window.location.href="manager.jsp";
			},
			'text'
		);
}
