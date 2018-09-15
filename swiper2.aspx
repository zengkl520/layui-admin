<%@ Page Language="C#" AutoEventWireup="true" CodeFile="swiper2.aspx.cs" Inherits="swiper2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link  rel="stylesheet" href="javascript/swiper/swiper.min.css" />
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
    <style type="text/css">
#swiper-container2 .swiper-slide{
line-height:2 !important;
color:#666 !important;
font-size:14px !important;
background:#eee !important;
}
#swiper-container2 .active-nav{
background:#5FB878 !important;
}</style>
</head>
<body>
    <div class="swiper-container" id="swiper-container2" style="width:480px;">
	<div class="swiper-wrapper">
		<div class="swiper-slide active-nav">
			版块1</div>
		<div class="swiper-slide">
			版块2</div>
		<div class="swiper-slide">
			版块3</div>
		<div class="swiper-slide">
			版块4</div>
		<div class="swiper-slide">
			版块5</div>
		<div class="swiper-slide">
			版块6</div>
		<div class="swiper-slide">
			版块7</div>
		<div class="swiper-slide">
			版块8</div>
	</div>
</div>
<div class="swiper-container" id="swiper-container3" style="width:480px;">
	<div class="swiper-wrapper">
		<div class="swiper-slide blue-slide">
			slider1</div>
		<div class="swiper-slide red-slide">
			slider2</div>
		<div class="swiper-slide orange-slide">
			slider3</div>
		<div class="swiper-slide blue-slide">
			slider4</div>
		<div class="swiper-slide red-slide">
			slider5</div>
		<div class="swiper-slide orange-slide">
			slider6</div>
		<div class="swiper-slide blue-slide">
			slider7</div>
		<div class="swiper-slide red-slide">
			slider8</div>
	</div>
</div>

     <script src="javascript/jquery.min.js"></script>
    <script src="javascript/swiper/swiper.min.js"></script>

    <script> 
      var mySwiper2 = new Swiper('#swiper-container2',{
      watchSlidesProgress : true,
      watchSlidesVisibility : true,
      slidesPerView : 4,
      on:{
          tap: function(){
			mySwiper3.slideTo( mySwiper2.clickedIndex)
		  }
       }
      })
      var mySwiper3 = new Swiper('#swiper-container3',{

      on:{slideChangeTransitionStart: function(){
			updateNavPosition()
		  }
      }

      })

      function updateNavPosition(){
		 $('#swiper-container2 .active-nav').removeClass('active-nav')
		 var activeNav = $('#swiper-container2 .swiper-slide').eq(mySwiper3.activeIndex).addClass('active-nav');

		if (!activeNav.hasClass('swiper-slide-visible')) {
             console.log(1);
        if (activeNav.index()>mySwiper2.activeIndex) {
             console.log(2);
			 var thumbsPerNav = Math.floor(mySwiper2.width/activeNav.width())-1
			 mySwiper2.slideTo(activeNav.index()-thumbsPerNav)
		}
		else {
            console.log(3);
			mySwiper2.slideTo(activeNav.index())
			}	
		}
	}
</script>
</body>
</html>
