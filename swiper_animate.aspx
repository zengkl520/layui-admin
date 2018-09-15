<%@ Page Language="C#" AutoEventWireup="true" CodeFile="swiper_animate.aspx.cs" Inherits="swiper_animate" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link  rel="stylesheet" href="javascript/swiper/swiper.min.css" />
    <link rel="stylesheet" href="css/animate/animate.min.css" />
    <style>
* {
	margin: 0;
	padding: 0;
}
.blue-slide {
	background: #4390EE;
}
.red-slide {
	background: #CA4040;
}
.orange-slide {
	background: #FF8604;
}
.swiper-slide {
	line-height: 300px;
	color: #fff;
	font-size: 36px;
	text-align: center;
}        </style>
</head>
<body>
<div class="swiper-container" id="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide blue-slide"><p class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">内容</p></div>
    <div class="swiper-slide red-slide"><p class="ani" swiper-animate-effect="bounceInLeft" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">内容</p></div>
    <div class="swiper-slide orange-slide"><p class="ani" swiper-animate-effect="shake" swiper-animate-duration="1.5s" swiper-animate-delay="0s">内容</p></div>
  </div>
</div>    <div class="swiper-pagination2" id="first">&nbsp;</div>
     <script src="javascript/jquery.min.js"></script>
    <script src="javascript/swiper/swiper.min.js"></script>
    <script src="javascript/swiper/swiper.animate.min.js"></script>
    <script type="text/javascript">
       var mySwiper = new Swiper('.swiper-container', {
       uniqueNavElements: false,
       pagination: {
             el: '.swiper-pagination2',
             clickable: true,
       },
    on:{
      init: function(){
        swiperAnimateCache(this); //隐藏动画元素 
        swiperAnimate(this); //初始化完成开始动画
      }, 
      slideChangeTransitionEnd: function(){ 
        swiperAnimate(this); //每个slide切换结束时也运行当前slide动画
      } 
    }
        });

        //此方法为模拟的，hover到分页器的小圆点后自动触发其本身的click事件
        $("#first .swiper-pagination-bullet").hover(function () {
            $(this).click(); 
        }, function () {
            mySwiper.autoplay.start(); 
            });
</script>
</body>
</html>
