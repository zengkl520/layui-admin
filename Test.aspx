<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="javascript/layui/css/layui.css" />
    <link rel="stylesheet" href="css/animate/animate.min.css"/>
    <style>
    body{overflow: hidden;}
   #demo {
  -webkit-animation-duration: 1.5s;
  -webkit-animation-delay: 0.3s;
  -webkit-animation-iteration-count: infinite;  
  /*-webkit-animation-iteration-count: 2;*/
   }
    </style>


</head>
<body style="background-color:white;width:100%;"   >
    <form id="form1" runat="server">   

        <div id="div1">
          <p style="position:absolute;top:40%;left:40%;color:orangered;font-size:40px;" id="demo"  >
             Hello Kitty!      
          </p>
        </div>
    
    </form>
    <script src="javascript/jquery.min.js"></script>
    <script src="javascript/layui/layui.js"></script>
    <script>

        $("#demo").addClass("animated rollIn");

     var o = document.getElementById("demo");
      // 动画开始时事件
     o.addEventListener("webkitAnimationStart", function() {
       console.log("动画开始");
     })
     // 动画重复运动时事件
     o.addEventListener("webkitAnimationIteration", function() {
         console.log("动画重复运动");
         if (this.className == "animated rollIn") {
             this.className = "animated flip";
         } else if (this.className == "animated flip") {
             this.className = "animated rollOut";
         }else if (this.className == "animated rollOut") {
             this.className = "animated bounceInRight";
         } else if (this.className == "animated bounceInRight") {
             this.className = "animated tada";
         } else if (this.className == "animated tada") {
             this.className = "animated bounceOutLeft";
         } else if (this.className == "animated bounceOutLeft") {
             this.className = "animated rotateIn";
         } else if (this.className == "animated rotateIn") {
             this.className = "animated swing";
         } else if (this.className == "animated swing") {
             this.className = "animated rotateOut";
         } else if (this.className == "animated rotateOut") {
             this.className = "animated rollIn";
         } 
     })
     // 动画结束时事件
     o.addEventListener("webkitAnimationEnd", function() {
     
       console.log("动画结束");
     })
    </script>
    <script>
        layui.use(['layer','element'], function () {
             var layer = layui.layer;
            var element = layui.element;



            $("p").click(function () {
                top.$('#baidu').click();
            })

            ////由于嵌套iframe层，在前面加上parent在父页面显示 
            //$("p").click(function () {
            //        parent.layer.confirm('您是如何看待前端开发？', {
            //        btn: ['重要', '奇葩'] //按钮
            //    }, function () {
            //        parent.layer.msg('的确很重要！', { icon: 1 });
            //        //改变父页面
            //       // alert(parent.$('.layui-logo').text());
            //       // parent.$('.layui-logo').css('color', 'green');
            //        //改变当前页面的字体颜色
            //        $('#demo').css('color', 'green');
            //            }, function () {
            //       // parent.$('#baidu').click();
            //        parent.layer.msg('也可以这样', {
            //            time: 20000, //20s后自动关闭
            //            btn: ['明白了', '知道了']
                        
            //        });
            //    });
            //});



            //父页面操作，子页面弹出需要index进行关闭(某一个)或者parent.layer.closeAll();
            //$("p").click(function () {
            //    var index = parent.layer.confirm('您是如何看待前端开发？', {
            //        btn: ['重要', '奇葩'] //按钮
            //    }, function () {
            //        parent.layer.close(index); 
            //        layer.msg('的确很重要！', { icon: 1 });
            //        $('#demo').css('color', 'green');
            //    }, function () {
            //        parent.layer.msg('也可以这样', {
            //            time: 20000, //20s后自动关闭
            //            btn: ['明白了', '知道了']
            //        });
            //    });
            //});


        });



    </script>
</body>
</html>
