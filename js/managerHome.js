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
function addRow(newRowName,sectionNum){	
		var $tr = $('<tr></tr>');
		var $td = $('<td></td>').text(sectionNum).appendTo($tr);
		var $tdSection = $('<td></td>').text(newRowName).appendTo($tr);
		
		return $tr;
	}
function modRow(rowId,newRowName){
	var $tbody = $('.SongClatb>tbody');
	var tdNum = $('.SongClatb>tbody').children().children().length;
	for(var i=0;i<tdNum;i++){
		if($('.SongClatb>tbody').children().children()[i].innerText==rowId){
			$('.SongClatb>tbody').children().children()[i+1].innerText=newRowName;
		}
	}
}
function modClaRow(rowId,newRowName){
	var $tbody = $('.SingerClatb>tbody');
	var tdNum = $('.SingerClatb>tbody').children().children().length;
	for(var i=0;i<tdNum;i++){
		if($('.SingerClatb>tbody').children().children()[i].innerText==rowId){
			$('.SingerClatb>tbody').children().children()[i+1].innerText=newRowName;
		}
	}
}
function show(name){
	$('.col-lg-12').hide();
	$('#'+name).show();
}
function showN(name){
	$('#'+name).show();
}
$('.hh').click(function(){
	$('.mybox').css('display','none');
});

