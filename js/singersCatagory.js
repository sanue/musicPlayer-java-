//为空
function kong() {
		var a = $('<div></div>').attr('id', 'aaa').text('没有找到符合条件的歌手。').appendTo($('#aa'));
}

// 创建歌手地区分类标题
function createSingersRegion(c) {
	var li = $('<li></li>');
	$('<a></a>').attr('href', '#').text(c.name).appendTo(li);
	li.click(function() {
		var text = $(this).children().text();
		var list = JSON.parse(localStorage.singersInfo);
		var currentCategory = null;

		for ( var i = 0; i < list.length; i++) {
			if (text === list[i].name) {
				currentCategory = list[i];
				break;
			}
		}
		// 清除现有的歌曲
			$('#aa').html('');

			// 加载当前分类所包含的歌曲信息
			if (null != currentCategory) {
				// 显示歌曲信息
				// 创建歌曲项
				for ( var i = 0; i < currentCategory.songlist.length; i++) {
					// 添加到容器里
					var song = currentCategory.songlist[i];
					var $songRow = createSingersInfo(song);

					$('#aa').append($songRow);
				}
			}
			kong();
		});
	return li;
}
// 创建歌手单
function createSingersInfo(c) {
	var container = $('<li></li>');
	var singerNames = $('<div></div>').attr('id', 'singerNames').text(c.name).appendTo(container);
	var shape = $('<div></div>').addClass('shape').appendTo(container);
	$('<a></a>').addClass('overlay').addClass('pentagon').attr('href', '#').appendTo(shape);

	var details = $('<div></div>').addClass('details').appendTo(shape);
	$('<span></span>').addClass('heading').text(c.name).appendTo(details);
	$('<hr />').appendTo(details);
	$('<p></p>').text(c.nickname).appendTo(details);
	var Listenbtn = $('<a></a>').attr( {
		'href' : '#',
		'id' : 'Listenbtn'
	}).addClass('button').text('Listen').appendTo(details);
	// 传值

	var bg = $('<div></div>').addClass('bg').appendTo(shape);
	var base = $('<div></div>').addClass('base').appendTo(shape);
	$('<img />').attr( {
		'src' : '../icon/' + c.icon,
		'height' : '200',
		'width' : '200'
	}).appendTo(base);

	return container;
}
/*根据拼音歌分类选择歌手*/
function loadSingersByClaPin(z,c){
	$.get(
	'getSingersByTwo.do',
	{'pin':z,'cla':c},
	function(singers){
		loadSingers(singers);
	},
	'json'
	);
}
/*按拼音选择歌手*/
/*function getSingersByPin(){
	$('.searchSinger>ul>li').click(function() {
		$('#aa').html('');
		var li = $('li');
		zimu = $(this).text();
		pinIsClick = 1;
		if(claIsClick==0){
			$.get(
				'getSingers.do', 
				function(singerInfoList) {
					for ( var i = 0; i < singerInfoList.length; i++) {
						var szm = singerInfoList[i].pinyin.substring(0, 1);
						if (szm == zimu) {
							$.get(
								    'getSingersByPin.do',
								    {"letter":singerInfoList[i].pinyin},
								    function(singers){
								    	loadSingers(singers);
								    	$('#navRolLeft li').click(function(){
								    		var text = $(this).children().text();
								    		//根据拼音歌分类选择歌手
								    		loadSingersByClaPin(zimu,text);
								    	});
								    },
								    'json'
								);
	
						}
				}
				},
				'json'
				);
		}else if(claIsClick==1){
			loadSingersByClaPin(zimu,text);
		}
		
		
		
		
	});
}*/
//按照拼音找歌手
/*function getSingersByPin() {
	 var singerInfoList = JSON.parse(localStorage.singersInfo); 
	$.get('getSingers.do', function(singerInfoList) {

		$('.searchSinger>ul>li').click(function() {
			var li = $('li');
			$('#aa>li').remove();
			var zimu = $(this).text();
			for ( var i = 0; i < singerInfoList.length; i++) {
					var szm = singerInfoList[i].pinyin.substring(0, 1);
					if (szm == zimu) {
						$('#aa').append(createSingersInfo(singerInfoList[i]));

					}
			}
			kong();
		});
	},
	'json'
	);

}*/

/*按分类选择歌手*/
function getSingersByCla(){
	var pinIsClick = 0;
	var claIsClick = 0;
	var zimu;
	//按地区选择歌手
	$('#navRolLeft li').click(function() {
		text = $(this).children().text();
		$('#aa').html('');
		claIsClick = 1;
		/*  'getSingers.do' */
		if(pinIsClick==0){
			//选择这个地区的歌手
			$.get(
			'getClaSingers.do',
			{'ClaName':text},
			function(singers){
				loadSingers(singers);
				/*$('.searchSinger>ul>li').click(function(){
					var zimu = $(this).text();
					//根据拼音歌分类选择歌手
					loadSingersByClaPin(zimu,text);
				});*/
			},
			'json'
			);
		}else if(pinIsClick==1){
			loadSingersByClaPin(zimu,text);
		}
	});
	//按拼音找歌手
	$('.searchSinger>ul>li').click(function() {
		$('#aa').html('');
		var li = $('li');
		zimu = $(this).text();
		pinIsClick = 1;
		if(claIsClick==0){
			$.get(
				'getSingers.do', 
				function(singerInfoList) {
					for ( var i = 0; i < singerInfoList.length; i++) {
						var szm = singerInfoList[i].pinyin.substring(0, 1);
						if (szm == zimu) {
							$.get(
								    'getSingersByPin.do',
								    {"letter":singerInfoList[i].pinyin},
								    function(singers){
								    	loadSingers(singers);
								    	/*$('#navRolLeft li').click(function(){
								    		var text = $(this).children().text();
								    		//根据拼音歌分类选择歌手
								    		loadSingersByClaPin(zimu,text);
								    	});*/
								    },
								    'json'
								);
	
						}
				}
				},
				'json'
				);
		}else if(claIsClick==1){
			loadSingersByClaPin(zimu,text);
		}
		
		
		
		
	});
	
	
}

function loadSingers(singers){
	// 加载当前分类所包含的歌曲信息
	if (null != singers) {
		// 显示歌曲信息
		// 创建歌曲项
		for ( var i = 0; i < singers.length; i++) {
			// 添加到容器里
			var song = singers[i];
			var $songRow = createSingersInfo(song);
			$('#aa').append($songRow);
		}
	}else{
	kong();}
	
}
$(function() {
	//跳转
	$('.details>a').click(function() {
		var singerName = $(this).parent().children().first().text();
		var myurl = 'singerDetails.html' + '?singerName=' + singerName;
		window.location.href = encodeURI(myurl);
	});

	getSingersByCla();
	//getSingersByPin();
		
})
