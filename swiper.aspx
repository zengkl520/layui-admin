<%@ Page Language="C#" AutoEventWireup="true" CodeFile="swiper.aspx.cs" Inherits="swiper" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link  rel="stylesheet" href="javascript/swiper/swiper.min.css" />
<style>
    html, body {
      position: relative;
      height: 100%;
    }
    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
    .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
    .swiper-wrapper{
    transition-delay:.3s;
    }
	.swiper-slide p{
		transform:translateX(-200px);
		opacity:0;
		transition:all .4s;}
	.ani-slide p{
		transform:translateX(0);
		opacity:1;
		}
    .swiper-pagination-bullet{width:18px;height:18px;color:white;}
  </style>

</head>
<body>
 <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-color:palegreen;"><p>Slide 1</p></div>
            <div class="swiper-slide"><p>Slide 2</p></div>
            <div class="swiper-slide" style="background-color:blueviolet;"><p>Slide 3</p></div>
            <div class="swiper-slide"><p>Slide 4</p></div>
            <div class="swiper-slide" style="background-color:chocolate;"><p>Slide 5</p></div>
            <div class="swiper-slide"><p>Slide 6</p></div>
            <div class="swiper-slide" style="background-color:deeppink;"><p>Slide 7</p></div>
            <div class="swiper-slide"><p>Slide 8</p></div>
            <div class="swiper-slide" style="background-color:orangered;"><p>Slide 9</p></div>
            <div class="swiper-slide"><p>Slide 10</p></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>

    </div>
        
    <script src="javascript/jquery.min.js"></script>
    <script src="javascript/swiper/swiper.min.js"></script>
 <script>
    var swiper = new Swiper('.swiper-container', {
        direction: 'vertical',
        speed: 800,
        //grabCursor : true,
        loop: true,
        mousewheel: true,
        autoplay: {
        delay: 1500,
        stopOnLastSlide: false,
        disableOnInteraction: false,
        },
        pagination: {
          el: '.swiper-pagination',
          //type : 'progressbar',
          clickable: true,
          // dynamicBullets: true,
        //renderBullet: function (index, className) {
        //  return '<span class="' + className + '">' + (index + 1) + '</span>';
        //},
         renderBullet: function (index, className) {
          switch(index){
            case 0:text='壹';break;
            case 1:text='贰';break;
            case 2:text='叁';break;
            case 3:text='肆';break;
            case 4:text = '伍'; break;
            case 5:text = '陆'; break;
            case 6:text = '柒'; break;
            case 7:text='捌';break;
            case 8:text='玖';break;
            case 9:text ='拾'; break;
          }
          return '<span class="' + className + '" >' + text + '</span>';
          },
        },
        on:{
			init:function(swiper){
		        slide=this.slides.eq(0);
			    slide.addClass('ani-slide');
		    },
			transitionStart: function(){
			    for(i=0;i<this.slides.length;i++){
			    	slide=this.slides.eq(i);
			        slide.removeClass('ani-slide');
				}
		    },
			transitionEnd: function(){
				slide=this.slides.eq(this.activeIndex);
			    slide.addClass('ani-slide');
				
		    },
		}

    });
    </script>
</body>
</html>
