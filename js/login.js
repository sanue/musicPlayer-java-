/*用户名和密码*/
$(function () {
	$('#code').click();
    //提交表单
    $('form').bind('submit', function (e) {
    	
        if ($('.name').triggerHandler('blur') | $('.pwd').triggerHandler('blur')) {
        	
        	
        	
        	//  sessionStorage.userName = $('#name').val();
            // btnClose();
            //window.open('musicBox.html');
            //window.parent.close();
            //保存输入的用户名
            // currentUser = $('#name').val();
            //登录时间
            //var time = new Date().toLocaleString();
            //创建Json对象转为字符串
            //var users = [];
            //检查当前是否存在登录日志
            //var loginArray = {userName: currentUser, loginTime: time};
            //users.push(loginArray);
            //localStorage.usersList = JSON.stringify(users);
            return true;
        }
        return false;
    });
    
    
    //建立对话框

    var userName;
    var password;

    $('.jiesuan').bind('click', function () {
        $('.contain').addClass('blockk');
    });
    //focus
    $('.inputt').focus(function () {
        $(this).prev().removeClass('sp').removeClass('sp2').addClass('sp1');
        if ($(this).hasClass('name')) {
            var new_img = $('<img />').attr({'src': '../images/username1.jpg'});
        }
        else {
            var new_img = $('<img />').attr({'src': '../images/pwd1.jpg'});
        }
        $(this).prev().children().replaceWith(new_img);
        //吧文本框边框重新变蓝
        $(this).removeClass('inputt_red').removeClass('inputt_gray').addClass('inputt_blue');

    });
    //blur
    $('.inputt').blur(function () {
//验证是否为空

        if ($(this).val() == "") {
            $(this).prev().removeClass('sp1').removeClass('sp').addClass('sp2');
            //修改图片
            //修改顶部图片
            var new_img_top = $('<img />').attr({
                'src': '../images/warning.jpg',
                'width': '12px',
                'height': '12px',
                'id': 'img'
            });
            $('#img').replaceWith(new_img_top);
            //修改文本框前面的图片
            if ($(this).hasClass('name')) {
                var new_img = $('<img />').attr({'src': '../images/username2.jpg'});
            } else {
                var new_img = $('<img />').attr({'src': '../images/pwd2.jpg'});
            }
            $(this).prev().children().replaceWith(new_img);
            $(this).removeClass('inputt_gray').removeClass('inputt_blue').addClass('inputt_red');
            //修改Class和text
            $('.all').removeClass('tip').addClass('tip_red');
            $('#span_tip').text('请输入账户名和密码');
            return false;
        } else {
            //right时显示的
            $(this).prev().removeClass('sp1').removeClass('sp2').addClass('sp');
            $('#img').replaceWith(new_img_top);
            //修改文本框前面的图片
            if ($(this).hasClass('name')) {
                var new_img = $('<img />').attr({'src': '../images/username.jpg'});
            } else {
                var new_img = $('<img />').attr({'src': '../images/pwd2.jpg'});
            }
            $(this).prev().children().replaceWith(new_img);
            $(this).removeClass('inputt_red').removeClass('inputt_blue').addClass('inputt_gray');
            //right时显示的

        }
        if ($('#pwd').val() == "") {
            //修改顶部图片
            var new_img = $('<img />').attr({'src': '../images/warning.jpg', 'id': 'img'});
            $('#img').replaceWith(new_img);

            $('.all').removeClass('tip').addClass('tip_red');
            $('#span_tip').text('请输入密码');
            return false;
        }
       /* for (var i = 0; i < data.length; i++) {
            if ($('#name').val() == data[i].name && $('#pwd').val() == data[i].password) {
                //删除顶部图片
                $('#img').remove();
                $('.all').removeClass('tip_red').addClass('tip_green');
                //修改文本框前面的图片
                if ($(this).hasClass('name')) {
                    var new_img = $('<img />').attr({'src': '../images/username.jpg'});
                }
                if ($(this).hasClass('pwd')) {
                    var new_img = $('<img />').attr({'src': '../images/pwd.jpg'});
                }
                $(this).prev().children().replaceWith(new_img);
                $('#span_tip').text('输入正确');
                return true;
            }

        }*/

        //验证用户名和密码是否一致
        
        var currentUser = $('#name').val();
    	var password = $('#pwd').val();
    	if(checkCode()==true){
    	$.post(
    	'flogin.do',
    	{'name':currentUser,'password':password},
    	function(result){
    		if(result==1){
    		window.parent.location.href="musicBox.html";
    		return;
    		}else{
    			 var new_img = $('<img />').attr({'src': '../images/warning.jpg', 'id': 'img'});
                 $('#img').replaceWith(new_img);
                 //wrong时显示的
                 $(this).prev().removeClass('sp1').removeClass('sp').addClass('sp2');
                 $('#img').replaceWith(new_img_top);
                 //修改文本框前面的图片
                 if ($(this).hasClass('name')) {
                     var new_img = $('<img />').attr({'src': '../images/username2.jpg'});
                 } else {
                     var new_img = $('<img />').attr({'src': '../images/pwd2.jpg'});
                 }
                 $(this).prev().children().replaceWith(new_img);
                 $(this).removeClass('inputt_gray').removeClass('inputt_blue').addClass('inputt_red');
                 //wrong时显示的

                 $('.all').removeClass('tip').removeClass('tip_green').addClass('tip_red');
                 $('#span_tip').text('用户名和密码不匹配！');
                 return false;
    		}
    	},
    	'text'
    	);
        
    	}

    });


});
function btnClose() {
    var doc = window.parent.document;
    doc.querySelector('#dialogContainer').style.display = 'none';
}
/*验证码*/
var code;
var mycanvas = document.querySelector('#code');
var context = mycanvas.getContext('2d');
function createCode(){
	context.clearRect(0,0,mycanvas.width,mycanvas.height);
	code="";
	context.font = '20px Georgia';
   
	var checkCode = document.getElementById('code');
	//创建一个随机数
	var radom = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
	for(var i=0;i<4;i++){
	   context.beginPath();
	   var index = Math.floor(Math.random()*36);
	   code += radom[index];
	   context.fillText(code,30,30);
	   context.closePath();
		//charAt
	}
}

function checkCode(){
	var inputCode = document.querySelector('#inputCode').value;
	if(inputCode.toLowerCase()!=code.toLowerCase()){
		$('#yzwrong').text("验证码出错");
		return false;
	}else{
	return true;
	}
}
