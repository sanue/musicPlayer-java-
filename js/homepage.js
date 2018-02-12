/*********************创建和加载新歌速递歌手推荐***************************/

	//创建歌手推荐
     	function createNewSinger(c){
     		var pics = $('<div></div>').attr('class','pics');
     		var zhe = $('<div></div>').attr('class','zhe').appendTo(pics);
     		var play = $('<div></div>').attr('class','play').appendTo(pics);
     		var imgPlay = $('<img />').attr({'src':'../images/play12.png','height':'40','width':'40'}).appendTo(play);

     		var songPic = '../icon/'+ c[0].icon;
     		var imgsinger = $('<img />').attr({'src':songPic,'height':'250','width':'250'}).appendTo(pics);
             var thisName = $('<div></div>').addClass('nameTip').text(c[0].name).appendTo(play);
                     pics.click(function(){
                         var songName = $($(this).children()[1]).children()[1].innerText;
                          var myurl = 'singerDetails.html'+'?singerName='+ songName;
                                    window.close();
                                    window.open(encodeURI(myurl));
                     })

     		return pics;

     	}
    
  	//加载歌手推荐
  	 function loadSingerData(){
     
var nextpage = $('<div></div>').attr('class','nexttipp').appendTo($('#middle'));
            var data = [];
            $.post(
            'getAllSingers.do',
            function(lists){
            	 var i = 6;
                while(data.length<i){
                    var temp = Math.random()*lists.length;
                    data.push(lists.splice(temp,1));
                }
                var singerList = data;
                //  加载并显示
                for(var i = 0 ; i < singerList.length ;i++){
                   var thisLink = $('<a></a>').attr({'class':'newone'}).append(createNewSinger(singerList[i]));
                   $('#middle').append(thisLink);
                }
                $('<div></div>').attr('id','mylovesinger').text('换我喜欢').appendTo(nextpage);
               
                nextpage.click(function(){
                   for(var i = 0 ; i < singerList.length ;i++){
                      $('.newone').remove();
                      $('.nexttipp').remove();
                     
                    }
                    loadSingerData();
                   
                })
                
            },
            'json'
            );   
            
          
               
               


            

     }

/**********************图片轮播*****遮罩******************************/
function autoChange(){
    $('#visual').pignoseParallaxSlider({
   			play    : '.btn-play',
   			pause   : '.btn-pause',
   			next    : '.btn-next',
   			prev    : '.btn-prev'
   		});
}


	$(window).load(function() {
//歌手信息加载
		   loadSingerData();
		
//动态创建新歌速递
   //loadSongData();

//图片轮播
	autoChange();

//遮罩
		$('#navRol').hover(function(){
			$('#navRol').animate({left:'0px'},1000);
		},
	    function(){
			$('#navRol').animate({left:'-160px'},1000);
		}
		);
		
		$('.pics').click(function(){
            var songName = $($(this).children()[1]).children()[1].innerText;
             var myurl = 'musicBox.html'+'?songName='+ songName;
                       window.close();
                       window.open(encodeURI(myurl));
        })



	});

