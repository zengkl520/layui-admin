<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>Layui</title>
  <link rel="stylesheet" href="javascript/layui/css/layui.css" />
  <style>
    ul.layui-tab-title li:nth-child(1) i:nth-child(2) {display: none;}
    .layui-tab-title{background-color:#F1F1F1;border-bottom:1px solid #1AA094;} 
    body{background-color:#F3F3F3;}
    .layui-tab-card>.layui-tab-title .layui-this{background-color:#009688; color:#FFF;}
    .layui-tab-content{ padding:0px; }
    .layui-colorpicker {border: none;width:50px;color:white;}
    .layui-nav-item > a:link,.daohang a:link,.daohang2 a:link{ color:white;}
    .layui-nav-child dd:hover{ background-color:#5FB878!important; }
    .layui-nav-child dd a:hover{background-color:#5FB878!important;}
  </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin ">
  <div class="layui-header header-demo" >
    <div class="layui-logo" style="color:white"><i class="layui-icon">&#xe609;</i> layui 后台模板</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left ">
        <li class="layui-nav-item" id="animation-left-nav" style="cursor:pointer;width:60px;text-align:center;" >
           <i class="layui-icon">&#xe668;</i>
        </li>
        <li class="layui-nav-item" id="refresh3" style="cursor:pointer;width:60px;text-align:center;" >
           <i class="layui-icon">&#xe9aa;</i>
        </li>
    </ul>

    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
         <input type="hidden" name="color" value="" id="test-all-input" />
         <div id="test-all"></div>
      </li>
      <li class="layui-nav-item">
        <a href="javascript:;" ><i class="layui-icon">&#xe643;</i>&nbsp;页面操作</a>
        <dl class="layui-nav-child">
          <dd id="delete640"> <a href="javascript:;"><i class="layui-icon">&#xe640;</i>&nbsp;关闭其它页面</a></dd>
          <dd id="delete650"> <a href="javascript:;"><i class="layui-icon">&#xe640;</i>&nbsp;关闭所有页面</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item">
        <a href="javascript:;" >
          <i class="layui-icon">&#xe66f;</i>  F1234961
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:;"><i class="layui-icon">&#xe716;</i> 基本资料</a></dd>
          <dd><a href="javascript:;"><i class="layui-icon">&#xe716;</i> 安全设置</a></dd>
          <hr>
          <dd class="tuichu"><a href="javascript:;"><i class="layui-icon">&#x1007;</i> 退出</a></dd>
        </dl>
      </li>
    </ul>
  </div>
  
  <div class="layui-side" style="background-color:#393D49;">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test" >
        <li class="layui-nav-item layui-nav-itemed "  >
          <a class="daohang2" data-title="<i class='layui-icon'>&#xe679;</i>&nbsp;所有商品" data-id="0" href="javascript:;"><i class="layui-icon">&#xe679;</i>&nbsp;&nbsp;&nbsp;&nbsp;  所有商品</a>
          <dl class="layui-nav-child">
            <dd class="daohang" data-title="<i class='layui-icon' >&#xe677;</i>&nbsp;Swiper" data-id="6" data-url="swiper.aspx"><a href="javascript:;" ><i class="layui-icon" >&#xe677;</i>&nbsp;&nbsp;&nbsp;&nbsp;  Swiper</a></dd>
            <dd class="daohang" id="baidu" data-title="<i class='layui-icon' >&#xe677;</i>&nbsp;百度官网" data-id="7" data-url="http://www.baidu.com/"><a href="javascript:;" ><i class="layui-icon">&#xe677;</i>&nbsp;&nbsp;&nbsp;&nbsp;  百度官网</a></dd>
            <dd class="daohang" data-title="<i class='layui-icon' >&#xe677;</i>&nbsp;码云" data-id="8" data-url="https://gitee.com/"><a href="javascript:;"><i class="layui-icon">&#xe677;</i>&nbsp;&nbsp;&nbsp;&nbsp;  码云</a></dd>
            <dd class="daohang" data-title="<i class='layui-icon' >&#xe677;</i>&nbsp;runoob" data-id="9" data-url="http://www.runoob.com/"><a href="javascript:;"><i class="layui-icon">&#xe677;</i>&nbsp;&nbsp;&nbsp;&nbsp;  runoob</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item  layui-nav-itemed">
          <a href="javascript:;" class="daohang2" data-title="<i class='layui-icon'>&#xe679;</i>&nbsp;解决方案" data-id="0"><i class="layui-icon">&#xe679;</i>&nbsp;&nbsp;&nbsp;&nbsp;  解决方案</a>
          <dl class="layui-nav-child">
            <dd class="daohang" data-title="<i class='layui-icon'>&#xe676;</i>&nbsp;搜狗搜索" data-id="10" data-url="https://www.sogou.com/"><a href="javascript:;"><i class="layui-icon">&#xe676;</i>&nbsp;&nbsp;&nbsp;&nbsp;  搜狗搜索</a></dd>
            <dd class="daohang" data-title="<i class='layui-icon'>&#xe676;</i>&nbsp;360搜索" data-id="11" data-url="https://www.so.com/"><a href="javascript:;"><i class="layui-icon">&#xe676;</i>&nbsp;&nbsp;&nbsp;&nbsp;  360搜索</a></dd>
            <dd class="daohang" data-title="<i class='layui-icon'>&#xe676;</i>&nbsp;雅虎搜索" data-id="12" data-url="https://www.yahoo.com/"><a href="javascript:;"><i class="layui-icon">&#xe676;</i>&nbsp;&nbsp;&nbsp;&nbsp;  雅虎搜索</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item daohang" data-title="<i class='layui-icon'>&#xe679;</i>&nbsp;w3school" data-id="13" data-url="http://www.w3school.com.cn/"><a href="javascript:;"><i class="layui-icon">&#xe679;</i>&nbsp;&nbsp;&nbsp;&nbsp;  w3school</a></li>
        <li class="layui-nav-item daohang" data-title="<i class='layui-icon'>&#xe679;</i>&nbsp;w3cschool" data-id="14" data-url="https://www.w3cschool.cn/"><a href="javascript:;"><i class="layui-icon">&#xe679;</i>&nbsp;&nbsp;&nbsp;&nbsp;  w3cschool</a></li>
      </ul>
    </div>
  </div>
  
 
    <!-- 内容主体区域 -->
     <div class="layui-body" style="margin: 0px 0px;">

  <div class="layui-tab layui-tab-card cardnav" lay-allowClose="true" style="margin: 0px 0px;width:100%;" lay-filter="demo">
  <ul class="layui-tab-title">
   
  </ul>     
  <div class="layui-tab-content" >

  </div>
</div>
      
  
  </div>
       
  <div class="layui-footer" >
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域        
  </div>
        <!-- 模板结束div --> 
</div>

<script src="javascript/jquery.min.js"></script>
<script src="javascript/layui/layui.js"></script>
<script>

//JavaScript代码区域
    layui.use(['element', 'layer', 'colorpicker'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var colorpicker = layui.colorpicker;



        //初始化tab选项卡高度
        $('.cardnav').height($(window).height() - $('.layui-header').height() - $('.layui-footer').height() - 15);
        minheight22 = $('.cardnav').height() - $('.layui-tab-title').height();


        //监听浏览器窗口变化
        $(window).resize(function () {
            $('.cardnav').height($(window).height() - $('.layui-header').height() - $('.layui-footer').height() - 15);
            minheight22 = $('.cardnav').height() - $('.layui-tab-title').height();
            $('.theifrmaes').height(minheight22);
        });

        //加载本地主题颜色
        var storage = window.localStorage;
        var themecolor = storage.thecolor;
        if (themecolor == '' || themecolor == undefined) { themecolor = ''; }
        else { $('.header-demo,.layui-side .layui-nav,.layui-side').css('background-color', themecolor); }
        //开启全功能
        colorpicker.render({
            elem: '#test-all'
          , color: themecolor||'#393D49'
          , format: 'rgb'
          , predefine: true
          , alpha: true
          , done: function (color) {
              $('#test-all-input').val(color); //向隐藏域赋值
              themecolor = color;
              color || this.change(color); //清空时执行 change
              storage.setItem("thecolor", themecolor);
          }
           , change: function (color) {
               //给当前页面头部和左侧设置主题色
               $('.header-demo,.layui-side .layui-nav,.layui-side').css('background-color', color);
               if (color == '') { $('.layui-side').css('background-color', '#393D49'); themecolor = '#393D49'; }
               
           }
        });


        //给上方三个按钮添加tips标签
        $('#animation-left-nav').mouseenter(function () {
             layer.tips('折叠左侧导航栏',this, { tips: [3, themecolor], time: 0 });
        }).mouseleave(function () {
             layer.closeAll('tips');
        });
        
        $('#refresh3').mouseenter(function () {
             layer.tips('刷新',this, { tips: [3, themecolor], time: 0 });
        }).mouseleave(function () {
             layer.closeAll('tips');
        });

        $('#test-all').mouseenter(function () {
             layer.tips('更换主题',this, { tips: [3, themecolor], time: 0 });
        }).mouseleave(function () {
             layer.closeAll('tips');
         });
        

        //监听导航栏点击
        $(".daohang").click(function () {
            var update = false;
            var id22 = $(this).attr("data-id");
            $('.layui-tab-title li').each(function () {
                if (id22 == $(this).attr('lay-id')) { update = true }
            })
            if (!update) {
                element.tabAdd('demo', {
                    title: $(this).attr("data-title")
                    , content: '<iframe class="theifrmaes"  scrolling="auto" frameborder="0" src="' + $(this).attr("data-url") + '" style="width:100%;height:' + minheight22 + 'px" ></iframe>' //支持传入html
                    , id: $(this).attr("data-id")
                });
            }
            element.tabChange('demo', $(this).attr("data-id"));
        });

        //添加首页
        element.tabAdd('demo', {
            title: '<i class="layui-icon">&#xe68e;</i>  欢迎页'
              , content: '<iframe class="theifrmaes"  scrolling="auto" frameborder="0" src="Test.aspx" style="width:100%;height:' + minheight22 + 'px" ></iframe>' //支持传入html
              , id: '1'
        });
        element.tabChange('demo', '1');

        //刷新当前内容页
        $('#refresh3').click(function () {
            var src = $(".layui-tab-item.layui-show").find("iframe").attr("src");
            $(".layui-tab-item.layui-show").find("iframe").attr("src", src);

        })

        //关闭其他页面
        $('#delete640').click(function () {
            for (z = 2; z < 20; z++) {
                if (z != $('.layui-tab-title .layui-this').attr('lay-id')) {
                    element.tabDelete('demo', z);
                }
            }
            $(this).removeClass('layui-this');
        })

        //关闭全部页面
        $('#delete650').click(function () {
            for (z = 2; z < 20; z++) {
                element.tabDelete('demo', z);
            }
            $(this).removeClass('layui-this');
        })

        //监听Tab选项卡点击
        element.on('tab(demo)', function (data) {
            //按需求对tab选项卡进行重载
            // element.render('tab');

            var layid2 = $(this).attr('lay-id');
            $('.daohang').each(function () {
                if (layid2 == $(this).attr('data-id')) {
                    $('.daohang').removeClass('layui-this');
                    $(this).addClass('layui-this');
                }
            })
        });

        //监听隐藏侧边栏点击
        var i = 0;
        $('#animation-left-nav').click(function () {
            if (i == 0) {
                $(".layui-side").animate({ width: '53px' });
                $(".layui-body").animate({ left: '53px' });
                $(".layui-footer").animate({ left: '53px' });
                i++;
                //给每个导航元素的图标添加tips信息
                $('.daohang').each(function () {
                    $(this).children().mouseenter(function () {
                        layer.tips($(this).parent().data('title'), $(this).find(".layui-icon"), { tips: [2, themecolor], time: 0 });
                    }).mouseleave(function () {
                        layer.closeAll('tips');
                    });
                    
                })
                //导航标题栏添加tips信息
                $('.daohang2').each(function () {
                    $(this).mouseenter(function () {
                        layer.tips($(this).data('title'), $(this).find(".layui-icon"), { tips: [2, themecolor], time: 0 });
                    }).mouseleave(function () {
                        layer.closeAll('tips');
                    });
                     
                })
            } else {
                $(".layui-side").animate({ width: '200px' });
                $(".layui-body").animate({ left: '200px' });
                $(".layui-footer").animate({ left: '200px' });
                i--;
                //去除mouseover属性
                $('.daohang').each(function () {
                    $(this).children().unbind("mouseenter").unbind("mouseleave");
                })
                $('.daohang2').each(function () {
                    $(this).unbind("mouseenter").unbind("mouseleave");
                })
            }
        });

    });

        //监听退出按钮点击
        $(".tuichu").click(function () {
            layer.confirm('您确定要退出吗？', {
              btn: ['确定','取消'] //按钮
              }, function(){
              layer.msg('退出成功！', {icon: 1});
              }, function(){
              layer.msg('取消退出');
              });
        })
 


</script>
</body>
</html>
