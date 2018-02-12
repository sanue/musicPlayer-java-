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
function modSinger(id,name,sex,birth,nickname,introduce,classifyName,img){
	var c = {'id':id,'name':name,'sex':sex,'birth':birth,'nickname':nickname,'introduce':introduce,'classifyName':classifyName,'img':img};
	var currentRow;
	var i;
	for(i=0;i<$('tbody').children().length;i++){
		if($('tbody>tr:eq('+i+')>td:eq(0)')[0].innerText==name){
			currentRow = $('tbody').children()[i];
			break;
		}
	}
	$tabody = $('tbody')[0];
	$tabody.replaceChild(changeToEdit(c,i)[0],currentRow);
	//将之前的性别显示选中
	var checkSex =  $('.sex');
	for(var i=0;i<checkSex.length;i++){
		if(c.sex==checkSex[i].value){
			$(checkSex[i]).attr('checked','checked');
		}
	}

}
function SingerRow(c){
	var $tr = $('<tr></tr>');
	
	var $tdName =  $('<td></td>').text(c.name).appendTo($tr);
	
	var $tdSex =  $('<td></td>').text(c.sex).appendTo($tr);
	
	var $tdbirth =  $('<td></td>').text(c.birth).appendTo($tr);
	
	var $tdnick =  $('<td></td>').text(c.nickname).appendTo($tr);

	var $tdintro =  $('<td></td>').text(c.introduce).appendTo($tr);

	var $tdcla =  $('<td></td>').text(c.classifyName).appendTo($tr);
	
	
	var picVal = $('<img />').attr({'src':'../icon/'+c.img,'width':'90','height':'90'});
	var $tdpic =  $('<td></td>').append(picVal).appendTo($tr);
	
	var editVal = $('<span></span>').addClass('glyphicon glyphicon-pencil');
	/*var img = $($('tbody>tr>td>img')[i]).attr('src').split('/')[2];*/
	var $tdedit =  $('<td></td>').attr({'id':'modNewSinger','onclick':'modSinger('+c.id+',"'+c.name+'","'+c.sex+'","'+c.birth+'","'+c.nickname+'","'+c.introduce+'","'+c.classifyName+'","'+c.img+'")'}).append(editVal).appendTo($tr);
	
	
	
	return $tr;
}
function changeToEdit(c,i){
	var icon = "";
	var $tr = $('<tr></tr>');

	
	var nameVal = $('<input />').val(c.name);
	var $tdName =  $('<td></td>').append(nameVal).appendTo($tr);
	
	var sexMan = $('<input />').attr({'type':'radio','name':'sex','class':'sex','value':'男'});
	var manText = $('<div></div>').attr({'style':'text-align:center'}).text("男");
	var sexWoman = $('<input />').attr({'type':'radio','name':'sex','class':'sex','value':'女'});
	var womanText = $('<div></div>').attr('style','text-align:center').text("女");
	
	var $tdSex =  $('<td></td>').append(sexMan).append(manText).append(sexWoman).append(womanText).appendTo($tr);
	
	var birthVal = $('<input />').attr('type','date').val(c.birth);
	var $tdbirth =  $('<td></td>').append(birthVal).appendTo($tr);
	
	var nickVal = $('<input />').val(c.nickname);
	var $tdnick =  $('<td></td>').append(nickVal).appendTo($tr);
	
	var introVal = $('<input />').val(c.introduce);
	var $tdintro =  $('<td></td>').append(introVal).appendTo($tr);
	
	var claVal = $('<input />').val(c.classifyName);
	var $tdcla =  $('<td></td>').append(claVal).appendTo($tr);
	
/*	var $form = $('<form></form>').attr({'action':'FileUpload.do','enctype':'multipart/form-data','method':'post'});
	var picVal = $('<input />').attr({'type':'file','value':'选择图片','name':'file1'});
	var $tdpic =  $('<td></td>').append(picVal).appendTo($form);
	var submit = $('<input />').attr({'type':'submit','value':'提交'}).appendTo($form);
	$form.appendTo($tr);*/

	var picVal = $('<input />').attr({'type':'file','value':'选择图片','name':'file1'});
	var $tdpic =  $('<td></td>').append(picVal).appendTo($tr);

	
	
	var quedingVal = $('<button></button>').text("确定");
	quedingVal.bind('click',function(){
		//var newC = {'id':idVal.val(),'name':nameVal.val(),'sex':sexVal.val(),'birth':birthVal.val(),'nickname':nickVal.val(),'introduce':introVal.val(),'classifyName':claVal.val(),'img':picVal.val()};
		//var currentRow = $tr[0];
		//var tabody = $('tbody')[0];
		//tabody.replaceChild(SingerRow(newC)[0],currentRow);
		//console.dir(picVal);
		//console.dir(picVal[0]);
		//
		/*$.post(
		'FileLoad.do',
		{'file1':picVal[0].files[0]},
		function(result){
			alert(result);
		},
		'text'
		);*/
		var url = 'FileLoad.do';
		var file = picVal[0].files[0];
		
		var form = new FormData();
		form.append('id', 'frm');
		form.append('file', file);
		

		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', url, true);
//		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xhr.addEventListener('readystatechange', function(event) {
			var response = event.target;
			if (4 === response.readyState && 200 === response.status) {
				var responset = this.responseText;
			    //alert(responset);
				icon = responset;
				//数据库
				$.post(
				 'modSinger.do',
				 {'id':c.id,'name':nameVal.val(),'sex':$('.sex:checked').val(),'birth':birthVal.val(),'nickname':nickVal.val(),'introduce':introVal.val(),'classifyName':claVal.val(),'img':icon},
				 function(result){
					 if(result>0){
						 alert("修改成功！");
					 }else{
						alert("修改失败！"); 
					 }
				 },
				 'text'
				);
				
				newCC = {'id':c.id,'name':nameVal.val(),'sex':$('.sex:checked').val(),'birth':birthVal.val(),'nickname':nickVal.val(),'introduce':introVal.val(),'classifyName':claVal.val(),'img':icon};
				var currentRow = $tr[0];
				var tabody = $('tbody')[0];
				tabody.replaceChild(SingerRow(newCC)[0],currentRow);
				
				

			}
		});
		xhr.send(form);
		
/*		//数据库
		$.post(
		 'modSinger.do',
		 {'id':idVal.val(),'name':nameVal.val(),'sex':sexVal.val(),'birth':birthVal.val(),'nickname':nickVal.val(),'introduce':introVal.val(),'classifyName':claVal.val(),'img':icon},
		 function(result){
			alert(icon);
			 if(result>0){
				 alert("修改成功！");
			 }else{
				alert("修改失败！"); 
			 }
		 },
		 'text'
		);*/
	});
	var queding = $('<button></button>').text("取消");
	queding.bind('click',function(){
		var currentRow = $tr[0];
		var tabody = $('tbody')[0];
		tabody.replaceChild(SingerRow(c)[0],currentRow);
	});
	var $tdedit =  $('<td></td>').attr({'id':'modNewSinger','onclick':'modSinger('+c.id+','+c.name+','+c.sex+','+c.birth+','+c.nickname+','+c.introduce+','+c.classifyName+','+c.img+')'}).append(quedingVal).append(queding).appendTo($tr);

	
	
	return $tr;
}

function fileUpload() {
	var url = 'FileLoad.do';
	var file = document.querySelector('xxx').files[0];
	
	var form = new FormData();
	form.append('id', 'xxx');
	form.append('file', file);
	
	var xhr = new XMLHttpRequest();
	xhr.open('POST', url, true);
	xhr.addEventListener('readystatechange', function(event) {
		var response = event.target;
		if (4 === response.readyState && 200 === response.status) {
			//update
		}
	});
	xhr.send(form);
}